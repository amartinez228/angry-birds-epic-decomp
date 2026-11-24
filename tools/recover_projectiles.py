"""Bind provider projectile IDs through the original ResourceManager pointers.

Uses the native-selected provider, serialized EditorAssetInfo paths, resource
container references and actual transform descendants. Names alone never select
a motion component. Unimplemented rendering/callback behavior is kept explicit.
"""
import hashlib
import json
import struct

from extract_unity import Reader, objects
from recover_art import Extractor, ROOT, png
from recover_characters import Scene, count, external_names


def provider(data):
    reader = Reader(data, 28)
    name = reader.string()
    addition = reader.string()  # BaseType is System.Type, not serialized.
    cached_root = reader.unpack('<iq')
    bundle_url = reader.string()
    self_init, mode, copies, version, max_cached, unload_time = reader.unpack('<5if')
    if self_init not in (0, 1) or copies not in (0, 1):
        raise ValueError('Invalid provider flags')
    entries = []
    for _ in range(count(reader, 10000)):
        identifier = reader.string()
        kind = reader.integer()
        path = reader.string()
        link = reader.unpack('<iq')
        delete = reader.integer()
        extension = reader.string()
        if kind not in (0, 1, 2) or delete not in (0, 1):
            raise ValueError('Invalid EditorAssetInfo flags')
        entries.append(dict(id=identifier, loading_type=kind, path=path,
                            asset_link=link, delete_on_build=bool(delete), extension=extension))
    if len({item['id'] for item in entries}) != len(entries):
        raise ValueError('Duplicate provider asset ID')
    # Remaining ReportError/progress fields are retained as opaque evidence.
    suffix = data[reader.pos:]
    if len(suffix) != 8:
        raise ValueError('Unsupported provider suffix')
    return dict(name=name, path_addition=addition, cached_root=cached_root,
                bundle_url=bundle_url, self_initializing=bool(self_init),
                mode=mode, instantiate_copies=bool(copies), editor_version=version,
                max_cached=max_cached, unload_time=unload_time,
                entries=entries, suffix_hex=suffix.hex())


def game_object(scene, source, pointer):
    target, pid, data = scene.resolve(source, pointer, 1)
    reader = Reader(data)
    components = [reader.unpack('<iq') for _ in range(count(reader))]
    reader.read(4)
    return target, pid, reader.string(), components


def descendants(scene, source, pointer, visited=None):
    visited = set() if visited is None else visited
    target, pid, name, components = game_object(scene, source, pointer)
    if (target, pid) in visited:
        raise ValueError('Cyclic/repeated prefab object')
    visited.add((target, pid))
    result = [dict(source=target, path_id=pid, name=name)]
    for component in components:
        resolved = scene.resolve(target, component)
        kind = scene.file(resolved[0])[0][resolved[1]][0]
        if kind != 4:
            continue
        reader = Reader(resolved[2], 52)
        for _ in range(count(reader)):
            child = scene.resolve(resolved[0], reader.unpack('<iq'), 4)
            child_object = struct.unpack_from('<iq', child[2])
            result.extend(descendants(scene, child[0], child_object, visited))
    return result


def sprite(scene, extractor, source, path_id, asset_id, index):
    data = scene.file(source)[0][path_id][1]
    reader = Reader(data, 28)
    reader.string()
    smooth, ngui = reader.unpack('<iq'), reader.unpack('<iq')
    atlas_type = reader.integer()
    name = reader.string()
    width, height = reader.unpack('<2i')
    color = reader.unpack('<4f')
    alignment = reader.unpack('<2i')
    if reader.pos != len(data):
        raise ValueError('Unconsumed CHMeshSprite component bytes')
    result = dict(source=source, path_id=path_id, component_sha256=hashlib.sha256(data).hexdigest(),
                  atlas_type=atlas_type, sprite_name=name, size=[width, height], color=color,
                  alignment=alignment, smooth_atlas=smooth, ngui_atlas=ngui)
    if atlas_type != 2 or not smooth[1]:
        result['status'] = 'unsupported_atlas_type'
        return result
    target, atlas_id, atlas_data = scene.resolve(source, smooth, 114)
    atlas = Reader(atlas_data, 28)
    atlas_name = atlas.string()
    material = atlas.unpack('<iq')
    rects = [atlas.unpack('<4f') for _ in range(count(atlas))]
    guids = [atlas.string() for _ in range(count(atlas))]
    sizes = [atlas.unpack('<2f') for _ in range(count(atlas))]
    pivots = [atlas.unpack('<2f') for _ in range(count(atlas))]
    names = [atlas.string() for _ in range(count(atlas))]
    if not len(rects) == len(guids) == len(sizes) == len(pivots) == len(names):
        raise ValueError('Projectile atlas array lengths differ')
    indices = [i for i, value in enumerate(names) if value == name]
    if len(indices) != 1:
        raise ValueError('Projectile sprite name absent or ambiguous in referenced atlas')
    image, _ = scene.texture(target, material)
    image_width, image_height, rgba = extractor.texture(image)
    u, v, du, dv = rects[indices[0]]
    x, y, w, h = round(u*image_width), round((1-v-dv)*image_height), round(du*image_width), round(dv*image_height)
    if not 0 <= x < x+w <= image_width or not 0 <= y < y+h <= image_height:
        raise ValueError('Projectile crop outside atlas')
    crop = b''.join(rgba[(row*image_width+x)*4:(row*image_width+x+w)*4] for row in range(y, y+h))
    image_path = f'assets/projectiles/{asset_id}-{index}.png'
    png(ROOT / image_path, w, h, crop)
    result.update(status='extracted', atlas_source=target, atlas_path_id=atlas_id,
                  atlas_name=atlas_name, texture=image, rect=[x, y, w, h], image=image_path)
    return result


def recover():
    extractor = Extractor()
    scene = Scene(extractor)
    manager_path = 'assets/bin/Data/globalgamemanagers'
    managers = extractor.archives['com.rovio.gold.apk'].read(manager_path)
    references = external_names(managers)
    resources = {}
    containers = [(pid, managers[start:start + size]) for pid, kind, start, size in objects(managers) if kind == 147]
    if len(containers) != 1:
        raise ValueError('Expected one original ResourceManager')
    _, container = containers[0]
    reader = Reader(container)
    for _ in range(count(reader, 100000)):
        path, ptr = reader.string(), reader.unpack('<iq')
        resources.setdefault(path, []).append(ptr)
    resource_end = reader.pos
    script = next(item for item in extractor.inventory
                  if item['class_id'] == 115 and item.get('name') == 'GenericAssetProvider')
    matches = []
    for entry in extractor.inventory:
        if entry['class_id'] != 114 or entry['size'] < 32:
            continue
        data = extractor.data(entry)
        script_pointer = struct.unpack_from('<iq', data, 16)
        if script_pointer[1] != script['path_id']:
            continue
        source = entry['source'].split('/')[-1]
        resolved = scene.resolve(source, script_pointer, 115)
        if resolved[0] != script['source'].split('/')[-1]:
            continue
        _, _, name, _ = game_object(scene, source, struct.unpack_from('<iq', data))
        if name == 'CharacterHighResAndEquipmentAssetProvider':
            matches.append((entry, data, provider(data)))
    if len(matches) != 1:
        raise ValueError('Expected one native-selected projectile provider')
    entry, data, decoded = matches[0]
    if decoded['path_addition']:
        raise ValueError('Unsupported nonempty projectile provider path addition')
    motion = json.loads((ROOT / 'content/motion.json').read_text(encoding='utf-8'))['components']
    motion_by_object = {}
    for item in motion:
        component = item['source']
        raw = extractor.data(component)
        obj_source, obj_pid, _, _ = game_object(scene, component['source'].split('/')[-1], struct.unpack_from('<iq', raw))
        motion_by_object.setdefault((obj_source, obj_pid), []).append(item)
    projectiles = []
    for asset in decoded['entries']:
        if not asset['id'].startswith('Projectile_'):
            continue
        if asset['loading_type'] != 0 or asset['asset_link'][1] != 0:
            raise ValueError('Unsupported projectile loading route')
        pointers = resources.get(asset['path'].lower(), [])
        if len(pointers) != 1:
            raise ValueError(f'Ambiguous or absent projectile resource: {asset["id"]}')
        file_id, path_id = pointers[0]
        if not 1 <= file_id <= len(references):
            raise ValueError('Invalid external resource file ID')
        target = references[file_id - 1]
        hierarchy = descendants(scene, target, (0, path_id))
        tweens = [item for obj in hierarchy for item in motion_by_object.get((obj['source'], obj['path_id']), [])]
        sprites = []
        for obj in hierarchy:
            _, _, _, components = game_object(scene, obj['source'], (0, obj['path_id']))
            for ptr in components:
                component = scene.resolve(obj['source'], ptr)
                if scene.file(component[0])[0][component[1]][0] != 114:
                    continue
                component_script = scene.resolve(component[0], struct.unpack_from('<iq', component[2], 16), 115)
                if Reader(component_script[2]).string() == 'CHMeshSprite':
                    sprites.append(sprite(scene, extractor, component[0], component[1], asset['id'], len(sprites)))
        projectiles.append(dict(**asset, resource_pointer=pointers[0], source=target,
                                root_path_id=path_id, hierarchy=hierarchy,
                                sprites=sprites,
                                motion_components=[dict(source=item['source'], duration=item['duration'],
                                                        timing=item['timing'], speed=item['speed'],
                                                        sha256=item['sha256']) for item in tweens]))
    result = dict(provider_source=entry, provider_sha256=hashlib.sha256(data).hexdigest(),
                  provider=decoded, resource_manager_source=manager_path,
                  resource_manager_sha256=hashlib.sha256(container).hexdigest(),
                  resource_container_bytes=resource_end,
                  resource_manager_unparsed_suffix_bytes=len(container)-resource_end,
                  projectiles=projectiles,
                  limitations=['ResourceManager dependency suffix retained by hash, not interpreted.',
                               'Three CHMeshSprites use an unsupported atlas type; four projectiles have other visual component types. These are retained without substitute images.',
                               'Original asset bindings, extracted static sprites and motion configuration only; weapon level variants, skill projectile selection, rendering and damage callbacks remain unfinished.'])
    (ROOT / 'content/projectiles.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
    print(f'Bound {len(projectiles)} original projectile IDs; {sum(bool(item["motion_components"]) for item in projectiles)} with recovered motion components; {sum(sprite["status"] == "extracted" for item in projectiles for sprite in item["sprites"])} extracted sprites')


if __name__ == '__main__':
    recover()
