"""Recover rigid SmoothMoves sprite quads and authored prefab transforms.

Reads the supplied stripped Unity 5.6 files without executing target code.
Unity object/reference layouts checked against Perfare/AssetStudio classes.
SmoothMoves fields are recovered from this build's IL2CPP declarations and
validated against array lengths, pointer kinds, triangle ranges and flags.
This exports prefab poses, not a claim of recovered animation playback.
"""
import hashlib
import json
import math
from pathlib import Path
import struct
from extract_unity import Reader, objects
from recover_art import Extractor, png, ROOT


def count(reader, maximum=100000):
    value = reader.integer()
    if not 0 <= value <= maximum:
        raise ValueError('Invalid array count')
    return value


def cstring(reader):
    end = reader.data.index(b'\0', reader.pos)
    value = reader.read(end - reader.pos).decode('utf-8')
    reader.read(1)
    return value


def external_names(data):
    objects(data)  # Validate header, types and object ranges first.
    reader = Reader(data, 20)
    cstring(reader)
    reader.read(5)
    for _ in range(count(reader, 10000)):
        kind = reader.integer()
        reader.read(3 + (16 if kind == 114 else 0) + 16)
    for _ in range(count(reader, 1000000)):
        reader.align()
        reader.read(20)
    for _ in range(count(reader)):
        reader.read(4)
        reader.align()
        reader.read(8)
    names = []
    for _ in range(count(reader)):
        cstring(reader)
        reader.read(20)
        names.append(cstring(reader).replace('\\', '/').split('/')[-1])
    if reader.pos > struct.unpack_from('>I', data, 12)[0]:
        raise ValueError('External references overlap payload')
    return names


class Scene:
    def __init__(self, extractor):
        self.ex = extractor
        self.sources = {}
        for entry in extractor.inventory:
            key = entry['source'].split('/')[-1]
            self.sources.setdefault(key, entry)
        self.files = {}

    def file(self, name):
        if name not in self.files:
            entry = self.sources[name]
            self.ex.data(entry)
            data = self.ex.source_cache[(entry['archive'], entry['source'])]
            records = {pid: (kind, data[start:start+size])
                       for pid, kind, start, size in objects(data)}
            self.files[name] = (records, external_names(data), hashlib.sha256(data).hexdigest())
        return self.files[name]

    def resolve(self, source, pointer, expected=None):
        file_id, path_id = pointer
        if path_id == 0:
            return None
        if file_id < 0:
            raise ValueError('Negative file reference')
        target = source if file_id == 0 else self.file(source)[1][file_id - 1]
        kind, data = self.file(target)[0][path_id]
        if expected is not None and kind != expected:
            raise ValueError(f'Expected object kind {expected}, found {kind}')
        return target, path_id, data

    def texture(self, source, pointer):
        source, pid, data = self.resolve(source, pointer, 21)
        reader = Reader(data)
        material = reader.string()
        reader.read(12)
        reader.string()
        reader.read(8)  # lightmap flags, instancing flag/alignment
        reader.read(4)  # render queue
        for _ in range(count(reader)):
            reader.string()
            reader.string()
        for _ in range(count(reader)):
            reader.string()
        textures = {}
        for _ in range(count(reader)):
            key = reader.string()
            textures[key] = reader.unpack('<iq')
            reader.read(16)
        target, pid, _ = self.resolve(source, textures['_MainTex'], 28)
        entry = next(entry for entry in self.ex.inventory
                     if entry['source'].split('/')[-1] == target and entry['path_id'] == pid)
        # Preserve the material link. Atlas UVs also address the identically
        # arranged HR version when the material initially references LR.
        preferred = entry['name'].replace('_LR', '_HR')
        entry = next((item for item in self.ex.inventory
                      if item['class_id'] == 28 and item.get('name') == preferred), entry)
        return entry, material


def compose(a, b):
    return tuple(sum(a[row*4+k]*b[k*4+column] for k in range(4))
                 for row in range(4) for column in range(4))


def transform_point(matrix, point):
    point = (*point[:3], 1.)
    return [sum(matrix[row*4+k]*point[k] for k in range(4)) for row in range(2)]


def pose_matrix(scene, source, pointer, seen=()):
    target, pid, data = scene.resolve(source, pointer, 4)
    key = target, pid
    if key in seen:
        raise ValueError('Cyclic transform hierarchy')
    reader = Reader(data, 12)
    qx, qy, qz, qw = reader.unpack('<4f')
    x, y, z = reader.unpack('<3f')
    sx, sy, sz = reader.unpack('<3f')
    if abs(qx*qx+qy*qy+qz*qz+qw*qw-1) > .001:
        raise ValueError('Invalid quaternion')
    for _ in range(count(reader)):
        reader.read(12)
    parent = reader.unpack('<iq')
    local = ((1-2*(qy*qy+qz*qz))*sx, 2*(qx*qy-qz*qw)*sy, 2*(qx*qz+qy*qw)*sz, x,
             2*(qx*qy+qz*qw)*sx, (1-2*(qx*qx+qz*qz))*sy, 2*(qy*qz-qx*qw)*sz, y,
             2*(qx*qz-qy*qw)*sx, 2*(qy*qz+qx*qw)*sy, (1-2*(qx*qx+qy*qy))*sz, z,
             0., 0., 0., 1.)
    if not all(math.isfinite(value) for value in local):
        raise ValueError('Non-finite transform')
    return compose(pose_matrix(scene, target, parent, (*seen, key)), local) if parent[1] else local


def transform_path(scene, source, pointer, root_object, seen=()):
    target, pid, data = scene.resolve(source, pointer, 4)
    if (target, pid) in seen:
        raise ValueError('Cyclic transform path')
    reader = Reader(data)
    obj = scene.resolve(target, reader.unpack('<iq'), 1)
    if (obj[0], obj[1]) == (source, root_object):
        return ''
    name_reader = Reader(obj[2])
    name_reader.read(count(name_reader)*12+4)
    name = name_reader.string()
    reader.read(40)
    reader.read(count(reader)*12)
    parent = reader.unpack('<iq')
    if not parent[1]:
        raise ValueError('Sprite outside actor hierarchy')
    prefix = transform_path(scene, target, parent, root_object, (*seen, (target, pid)))
    return (prefix+'/' if prefix else '') + name


def bone_animation(data):
    reader = Reader(data, 28)
    reader.string()
    reader.read(36)  # renderer, legacy Animation and generated Mesh pointers
    vertices = [reader.unpack('<3f') for _ in range(count(reader))]
    uvs = [reader.unpack('<2f') for _ in range(count(reader))]
    colors = [reader.unpack('<4f') for _ in range(count(reader))]
    if not len(vertices) == len(uvs) == len(colors):
        raise ValueError('SmoothMoves vertex arrays disagree')
    reader.read(12)  # optional editor animationData pointer
    guid = reader.string()
    materials = [reader.unpack('<iq') for _ in range(count(reader))]
    bones = []
    for _ in range(count(reader, 4096)):
        node, bone = reader.unpack('<ii')
        name = reader.string()
        quad_node = reader.integer()
        indices = [reader.integer() for _ in range(count(reader))]
        game_object, transform, sprite, animation, collider = [reader.unpack('<iq') for _ in range(5)]
        color = reader.unpack('<5f')
        active, visible, material, depth = reader.unpack('<4i')
        if active not in (0, 1) or visible not in (0, 1):
            raise ValueError('Invalid serialized bool/alignment')
        if node != quad_node or any(index < 0 or index >= len(vertices) for index in indices):
            raise ValueError('Bone quad reference outside vertex array')
        if visible and not -1 <= material < len(materials):
            raise ValueError(f'Visible bone material missing: {name} {material}')
        bones.append(dict(name=name, node=node, bone=bone, indices=indices,
                          transform=transform, sprite=sprite, material=material,
                          active=bool(active), visible=bool(visible), depth=depth))
    return dict(vertices=vertices, uvs=uvs, colors=colors, guid=guid,
                materials=materials, bones=bones, next_offset=reader.pos)


def hat_placements(extractor):
    sprites = {}
    for entry in extractor.inventory:
        name = entry.get('name', '')
        if entry['class_id'] != 114 or not any(name.startswith(bird + '_Atlas_') for bird in
                ('RedBird', 'YellowBird', 'WhiteBird', 'BlackBird', 'BlueBirds')) or name.endswith('_low'):
            continue
        reader = Reader(extractor.data(entry), 28)
        if reader.string() != name:
            raise ValueError('Atlas name mismatch')
        reader.read(12)
        rects = [reader.unpack('<4f') for _ in range(count(reader))]
        guids = [reader.string() for _ in range(count(reader))]
        sizes = [reader.unpack('<2f') for _ in range(count(reader))]
        pivots = [reader.unpack('<2f') for _ in range(count(reader))]
        names = [reader.string() for _ in range(count(reader))]
        if not len(rects) == len(guids) == len(sizes) == len(pivots) == len(names):
            raise ValueError('Atlas arrays disagree')
        texture = next(item for item in extractor.inventory if item['class_id'] == 28 and item.get('name') == name + '_HR')
        for sprite, size, pivot, rect in zip(names, sizes, pivots, rects):
            # SmoothMoves stores a pivot offset from the sprite center.
            # Quad lower-left is -size * (offset + 0.5), as independently
            # checked against the prefab's original mVertices arrays.
            sprites[name.split('_Atlas_')[0], sprite] = dict(size=list(size), pivot=[p+.5 for p in pivot],
                                                           texture=texture, rect=rect)
    result = []
    catalog = json.loads((ROOT / 'content/catalog.json').read_text(encoding='utf-8'))
    for hat in catalog['hats']:
        family = ('RedBird', 'YellowBird', 'WhiteBird', 'BlackBird', 'BlueBirds')[hat['bird']]
        front = sprites[family, hat['asset_id']]
        back = sprites.get((family, hat['asset_id'] + '_Back'))
        if back:
            width, height, rgba = extractor.texture(back['texture'])
            u, v, uw, vh = back['rect']
            x, y, w, h = round(u*width), round((1-v-vh)*height), round(uw*width), round(vh*height)
            if not 0 <= x < x+w <= width or not 0 <= y < y+h <= height:
                raise ValueError('Hat back rectangle outside texture')
            crop = b''.join(rgba[(row*width+x)*4:(row*width+x+w)*4] for row in range(y, y+h))
            png(ROOT / 'assets/characters' / (hat['id'] + '_back.png'), w, h, crop)
        result.append(dict(id=hat['id'], size=front['size'], pivot=front['pivot'],
                           back=dict(size=back['size'], pivot=back['pivot']) if back else None))
    return result


def export_rust(models, textures, hats):
    quote = lambda value: json.dumps(value, ensure_ascii=False)
    number = lambda value: f"f32::from_bits(0x{struct.unpack('<I', struct.pack('<f', value))[0]:08x})"
    vector = lambda values: '[' + ','.join(number(value) for value in values) + ']'
    lines = ['// Generated by tools/recover_characters.py from supplied game assets.',
             f'static CHARACTER_TEXTURES: [&[u8]; {len(textures)}] = [']
    lines += [f'include_bytes!("../../../assets/characters/{name}.png"),' for name in textures]
    lines += ['];', f'static CHARACTER_MODELS: [Model; {len(models)}] = [']
    for model in models:
        bindings = ','.join('Some('+str(textures.index(name))+')' if name else 'None' for name in model['materials'])
        lines.append(f'Model {{ asset_id: {quote(model["asset_id"])}, materials: &[{bindings}], quads: &[')
        for quad in model['quads']:
            material = 'Some('+str(quad['material'])+')' if quad['material'] >= 0 else 'None'
            lines.append('Quad { ' + f'name: {quote(quad["name"])}, material: {material}, '
                         + f'depth: {quad["depth"]}, active: {str(quad["active"]).lower()}, visible: {str(quad["visible"]).lower()}, '
                         + f'node_path: {quote(quad["node_path"])}, local_vertices: &['
                         + ','.join(vector(vertex) for vertex in quad['local_vertices']) + '], '
                         + 'vertices: &['
                         + ','.join(vector(vertex) for vertex in quad['vertices']) + '] },')
        lines.append('] },')
    lines += ['];', f'static HEADGEAR_PLACEMENTS: [Headgear; {len(hats)}] = [']
    for hat in hats:
        sprite = lambda value: 'SpritePlacement { size: ' + vector(value['size']) + ', pivot: ' + vector(value['pivot']) + ' }'
        back = ('Some((' + sprite(hat['back']) + ', include_bytes!("../../../assets/characters/'
                + hat['id'] + '_back.png")))') if hat['back'] else 'None'
        lines.append('Headgear { front: ' + sprite(hat) + ', back: ' + back + ' },')
    lines.append('];')
    (ROOT / 'crates/epic-client/src/characters_generated.rs').write_text('\n'.join(lines)+'\n', encoding='utf-8')


def main():
    extractor = Extractor()
    scene = Scene(extractor)
    wanted = {'RedBird', 'YellowBird', 'WhiteBird', 'BlackBird', 'BlueBirds'}
    wanted.update(pig['asset_id'] for pig in json.loads((ROOT / 'content/campaign.json').read_text())['pigs'])
    prefabs = {}
    for source in scene.sources:
        if len(source) != 32:
            continue
        records = scene.file(source)[0]
        for object_id, (kind, object_data) in records.items():
            if kind != 1:
                continue
            reader = Reader(object_data)
            components = [reader.unpack('<iq') for _ in range(count(reader, 1000))]
            reader.read(4)
            name = reader.string()
            if name not in wanted:
                continue
            for pointer in components:
                target, pid, data = scene.resolve(source, pointer)
                if scene.file(target)[0][pid][0] != 114:
                    continue
                script = scene.resolve(target, struct.unpack_from('<iq', data, 16), 115)
                if Reader(script[2]).string() == 'BoneAnimation':
                    if name in prefabs:
                        raise ValueError(f'Ambiguous prefab for {name}')
                    prefabs[name] = (source, pid, data)
    texture_entries = {}
    models = []
    for name, (source, pid, data) in sorted(prefabs.items()):
        parsed = bone_animation(data)
        materials = [scene.texture(source, pointer)[0] if pointer[1] else None for pointer in parsed['materials']]
        for entry in materials:
            if entry: texture_entries[entry['name']] = entry
        quads, anchors = [], {}
        for bone in sorted(parsed['bones'], key=lambda bone: -bone['depth']):
            matrix = pose_matrix(scene, source, bone['sprite'])
            anchors[bone['name']] = [matrix[i] for i in (0, 4, 1, 5, 3, 7)]
            entry = materials[bone['material']] if bone['material'] >= 0 else None
            if bone['visible'] and bone['material'] >= 0 and entry is None:
                raise ValueError('Visible quad refers to null material')
            expected = [bone['node']*4+i for i in (0,3,1,3,2,1)]
            if bone['indices'] != expected:
                raise ValueError('Unsupported noncanonical SmoothMoves quad topology')
            points = []
            for index in bone['indices']:
                position = transform_point(matrix, parsed['vertices'][index])
                u, v = parsed['uvs'][index]
                points.append([*position, u, 1-v, *parsed['colors'][index]])
            if len(points) % 3:
                raise ValueError('Bone index array is not triangles')
            quads.append(dict(name=bone['name'], depth=bone['depth'], texture=entry['name'] if entry else None,
                              material=bone['material'], active=bone['active'], visible=bone['visible'], vertices=points,
                              node_path=transform_path(scene, source, bone['sprite'], struct.unpack_from('<iq', data)[1]),
                              local_vertices=[list(parsed['vertices'][index][:2]) for index in bone['indices']]))
        models.append(dict(asset_id=name, source=source, component_path_id=pid,
                           source_sha256=scene.file(source)[2], animation_guid=parsed['guid'],
                           anchors=anchors, materials=[entry['name'] if entry else None for entry in materials], quads=quads))
        print(name, len(parsed['bones']), 'bones,', sum(quad['visible'] for quad in quads), 'initially visible')
    for name, entry in sorted(texture_entries.items()):
        width, height, pixels = extractor.texture(entry)
        png(ROOT / 'assets/characters' / (name + '.png'), width, height, pixels)
    hats = hat_placements(extractor)
    result = dict(format='SmoothMoves rigid sprite triangles with authored prefab transforms',
                  limitations=['Orthographic prefab poses only; animation and skin/equipment overrides are separate.'],
                  missing=sorted(wanted - prefabs.keys()), models=models, hats=hats,
                  textures=[dict(name=name, source=entry['source'], path_id=entry['path_id'])
                            for name, entry in sorted(texture_entries.items())])
    (ROOT / 'content/characters.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    export_rust(models, sorted(texture_entries), hats)
    print('Missing:', result['missing'], 'Textures:', len(texture_entries))


if __name__ == '__main__':
    main()
