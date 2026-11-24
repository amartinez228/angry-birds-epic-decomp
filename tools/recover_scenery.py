"""Recover campaign background scene links and static mesh/material evidence.

BuildSettings scene indices bind IDs to level files. Dynamic/skinned sprites,
scripts, shader behavior and camera resolution adjustments remain explicit.
"""
import hashlib
import json
import struct

from extract_unity import Reader, objects
from recover_art import Extractor, ROOT, png
from recover_characters import Scene, count, pose_matrix
from recover_projectiles import game_object
from unity_mesh import mesh


def scene_paths(data):
    reader = Reader(data)
    paths = [reader.string() for _ in range(count(reader, 10000))]
    return paths, reader.pos


def renderer(data):
    reader = Reader(data)
    owner = reader.unpack('<iq')
    flags = reader.unpack('<6B')
    reader.align()
    lightmaps = reader.unpack('<2H')
    tiling = reader.unpack('<8f')
    materials = [reader.unpack('<iq') for _ in range(count(reader, 1024))]
    batch = reader.unpack('<2H')
    root, anchor, proxy = [reader.unpack('<iq') for _ in range(3)]
    layer, order = reader.unpack('<Ih')
    reader.align()
    suffix = reader.read(12)
    if reader.pos != len(data) or flags[0] not in (0, 1):
        raise ValueError('Unsupported MeshRenderer layout')
    return dict(owner=owner, enabled=bool(flags[0]), flags=flags, materials=materials,
                static_batch=batch, static_root=root, sorting_layer=layer, sorting_order=order,
                lightmaps=lightmaps, lightmap_tiling=tiling, probe_anchor=anchor, probe_proxy=proxy,
                suffix_hex=suffix.hex())


def material(scene, source, pointer):
    target, pid, data = scene.resolve(source, pointer, 21)
    reader = Reader(data)
    name = reader.string()
    shader = reader.unpack('<iq')
    keywords = reader.string()
    reader.read(8)
    queue = reader.integer()
    tags = [(reader.string(), reader.string()) for _ in range(count(reader))]
    passes = [reader.string() for _ in range(count(reader))]
    textures = {}
    for _ in range(count(reader)):
        key = reader.string()
        textures[key] = dict(pointer=reader.unpack('<iq'), scale=reader.unpack('<2f'), offset=reader.unpack('<2f'))
    floats = {}
    for _ in range(count(reader)):
        key = reader.string()
        floats[key] = reader.unpack('<f')[0]
    colors = {}
    for _ in range(count(reader)):
        key = reader.string()
        colors[key] = reader.unpack('<4f')
    if reader.pos != len(data):
        raise ValueError('Unconsumed material bytes')
    return dict(source=target, path_id=pid, sha256=hashlib.sha256(data).hexdigest(), name=name,
                shader=shader, keywords=keywords, render_queue=queue, tags=tags, disabled_passes=passes,
                textures=textures, floats=floats, colors=colors)


def object_info(scene, source, pointer):
    target, pid, name, components = game_object(scene, source, pointer)
    raw = scene.file(target)[0][pid][1]
    reader = Reader(raw)
    reader.read(count(reader)*12)
    layer = reader.integer()
    reader.string()
    tag, active = reader.unpack('<HB')
    if reader.pos != len(raw) or active not in (0, 1):
        raise ValueError('Unsupported GameObject layout')
    transforms = [scene.resolve(target, ptr, 4) for ptr in components
                  if scene.file(scene.resolve(target, ptr)[0])[0][ptr[1]][0] == 4]
    if len(transforms) != 1:
        raise ValueError('Object lacks unique Transform')
    transform = transforms[0]
    return dict(source=target, path_id=pid, name=name, active=bool(active), layer=layer,
                transform_id=transform[1], components=components, tag=tag)


def active_in_hierarchy(scene, source, transform, seen=()):
    target, pid, data = scene.resolve(source, (0, transform), 4)
    if (target, pid) in seen:
        raise ValueError('Cyclic visibility hierarchy')
    obj = object_info(scene, target, struct.unpack_from('<iq', data))
    reader = Reader(data, 52)
    reader.read(count(reader)*12)
    parent = scene.resolve(target, reader.unpack('<iq'), 4)
    return obj['active'] and (parent is None or active_in_hierarchy(scene, parent[0], parent[1], (*seen, (target, pid))))


def recover():
    extractor = Extractor()
    scene = Scene(extractor)
    managers = extractor.archives['com.rovio.gold.apk'].read('assets/bin/Data/globalgamemanagers')
    settings = [(pid, managers[at:at+size]) for pid, kind, at, size in objects(managers) if kind == 141]
    if len(settings) != 1:
        raise ValueError('Expected one BuildSettings')
    settings_id, settings_data = settings[0]
    paths, prefix_end = scene_paths(settings_data)
    wanted = {item['background_asset_id'] for item in json.loads((ROOT/'content/campaign.json').read_text())['encounters']}
    scenes, meshes, materials, textures = [], {}, {}, {}
    for identifier in sorted(wanted):
        matches = [(i, path) for i, path in enumerate(paths) if path.rsplit('/', 1)[-1] == identifier+'.unity']
        if len(matches) != 1:
            raise ValueError(f'Ambiguous or absent scene ID: {identifier}')
        index, path = matches[0]
        source = f'level{index}'
        records, _, source_hash = scene.file(source)
        layers, cameras = [], []
        for pid, (kind, data) in records.items():
            if kind == 20:
                obj = object_info(scene, source, struct.unpack_from('<iq', data))
                # Fixed Unity 5.6 camera prefix. Preserve suffix for later recovery.
                if len(data) != 117:
                    raise ValueError('Unexpected camera object size')
                cameras.append(dict(path_id=pid, sha256=hashlib.sha256(data).hexdigest(), object=obj,
                    world_matrix=pose_matrix(scene, source, (0, obj['transform_id'])),
                    enabled=bool(data[12]), clear_flags=struct.unpack_from('<I', data, 16)[0],
                    background=struct.unpack_from('<4f', data, 20), viewport=struct.unpack_from('<4f', data, 36),
                    near=struct.unpack_from('<f', data, 52)[0], far=struct.unpack_from('<f', data, 56)[0],
                    field_of_view=struct.unpack_from('<f', data, 60)[0], orthographic=bool(data[64]),
                    orthographic_size=struct.unpack_from('<f', data, 68)[0], suffix_hex=data[72:].hex()))
            if kind != 23:
                continue
            decoded = renderer(data)
            obj = object_info(scene, source, decoded['owner'])
            filters = [scene.resolve(source, ptr, 33) for ptr in obj['components']
                       if scene.file(scene.resolve(source, ptr)[0])[0][ptr[1]][0] == 33]
            if len(filters) != 1:
                raise ValueError('MeshRenderer lacks unique MeshFilter')
            mesh_ref = scene.resolve(filters[0][0], struct.unpack_from('<iq', filters[0][2], 12), 43)
            if mesh_ref is None:
                layers.append(dict(path_id=pid, object=obj, status='no_serialized_mesh', **decoded))
                continue
            mesh_source, mesh_id, raw = mesh_ref
            key = f'{mesh_source}:{mesh_id}'
            if key not in meshes:
                meshes[key] = dict(source=mesh_source, path_id=mesh_id, **mesh(raw))
            refs = []
            for ptr in decoded['materials']:
                if not ptr[1]:
                    refs.append(None)
                    continue
                mat = material(scene, source, ptr)
                mat_key = f'{mat["source"]}:{mat["path_id"]}'
                if mat_key not in materials:
                    main = mat['textures'].get('_MainTex')
                    if main and main['pointer'][1]:
                        tex = scene.resolve(mat['source'], main['pointer'], 28)
                        entry = next(item for item in extractor.inventory if item['class_id'] == 28
                                     and item['source'].split('/')[-1] == tex[0] and item['path_id'] == tex[1])
                        texture_key = f'{tex[0]}:{tex[1]}'
                        if texture_key not in textures:
                            width, height, rgba = extractor.texture(entry)
                            image = f'assets/scenery/{hashlib.sha256(tex[2]).hexdigest()[:24]}.png'
                            png(ROOT/image, width, height, rgba)
                            textures[texture_key] = dict(source=tex[0], path_id=tex[1], name=entry['name'],
                                sha256=hashlib.sha256(tex[2]).hexdigest(), width=width, height=height, image=image)
                            extractor.texture_cache.clear()
                        mat['texture_key'] = texture_key
                    materials[mat_key] = mat
                refs.append(mat_key)
            layers.append(dict(path_id=pid, sha256=hashlib.sha256(data).hexdigest(), object=obj, status='decoded',
                world_matrix=pose_matrix(scene, source, (0, obj['transform_id'])), mesh_key=key,
                material_keys=refs, active_in_hierarchy=active_in_hierarchy(scene, source, obj['transform_id']), **decoded))
        scenes.append(dict(id=identifier, build_index=index, path=path, source=source, sha256=source_hash,
                           layers=layers, cameras=cameras,
                           skinned_renderer_count=sum(kind == 137 for kind, _ in records.values()),
                           particle_count=sum(kind == 198 for kind, _ in records.values()),
                           animation_count=sum(kind == 111 for kind, _ in records.values())))
        print(identifier, len(layers), 'mesh renderers', flush=True)
    result = dict(build_settings=dict(path_id=settings_id, sha256=hashlib.sha256(settings_data).hexdigest(),
                  scene_count=len(paths), parsed_bytes=prefix_end, suffix_sha256=hashlib.sha256(settings_data[prefix_end:]).hexdigest()),
                  scenes=scenes, meshes=meshes, materials=materials, textures=textures,
                  limitations=['Static mesh rest poses only; animations, skinned renderers, particles and CHMeshSprites not rendered',
                               'Camera prefix recovered; runtime resolution/camera scripts and shader behavior pending'])
    (ROOT/'content/scenery.json').write_text(json.dumps(result, separators=(',', ':'))+'\n', encoding='utf-8')
    print('Recovered', len(scenes), 'scenes,', len(meshes), 'meshes,', len(textures), 'textures')


if __name__ == '__main__':
    recover()
