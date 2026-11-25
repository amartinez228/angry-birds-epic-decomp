"""Recover saved UI hierarchies from the pinned EpicWeb UnityFS bundle.

Requires UnityPy==1.25.4 for --bundle; --check uses only Python's standard
library. Saved transforms are evidence, not resolved NGUI screen coordinates:
anchors, animation and runtime scripts can change the displayed layout.
"""
import argparse
import hashlib
import json
import math
from pathlib import Path
import struct

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / 'content/reference-layouts.json'
BUNDLE_SHA = 'f245e9efc2d0a47a17cbe31fea622a6224460b9d4d2da78c4d54db533f7952b0'
REVISION = 'd6ff01fcd9497a95abc40be955957a3447b55227'
SCENES = {'level6': 'world_map_menu', 'level7': 'camp_menu', 'level10': 'battle_menu'}


def sha(data):
    return hashlib.sha256(data).hexdigest()


def validate(manifest):
    if manifest['revision'] != REVISION or manifest['bundle_sha256'] != BUNDLE_SHA:
        raise ValueError('Unexpected reference identity')
    if {s['file']: s['role'] for s in manifest['scenes']} != SCENES:
        raise ValueError('Unexpected scene selection')
    for scene in manifest['scenes']:
        nodes = {n['transform_id']: n for n in scene['nodes']}
        if len(nodes) != len(scene['nodes']):
            raise ValueError('Duplicate transform')
        game_objects = set()
        for node in nodes.values():
            if node['game_object_id'] in game_objects:
                raise ValueError('Duplicate game object')
            game_objects.add(node['game_object_id'])
            for component in node['components']:
                if 'serialized_hex' in component:
                    raw = bytes.fromhex(component['serialized_hex'])
                    if len(raw) != component['size'] or sha(raw) != component['raw_sha256']:
                        raise ValueError('Changed layout-controller evidence')
            for field, size in [('position', 3), ('rotation', 4), ('scale', 3)]:
                values = node[field]
                if len(values) != size or not all(math.isfinite(v) for v in values):
                    raise ValueError('Invalid transform values')
            parent = node['parent']
            if parent and (parent not in nodes or node['transform_id'] not in nodes[parent]['children']):
                raise ValueError('Parent/child mismatch')
            for child in node['children']:
                if child not in nodes or nodes[child]['parent'] != node['transform_id']:
                    raise ValueError('Child/parent mismatch')
            chain = set()
            current = node['transform_id']
            while current:
                if current in chain:
                    raise ValueError('Transform cycle')
                chain.add(current)
                current = nodes[current]['parent']
        expected = sha(json.dumps(scene['nodes'], sort_keys=True, separators=(',', ':')).encode())
        if scene['nodes_sha256'] != expected:
            raise ValueError('Changed scene evidence')


def recover(path):
    import UnityPy
    import importlib.metadata
    bundle = Path(path).read_bytes()
    if sha(bundle) != BUNDLE_SHA:
        raise ValueError('Bundle differs from the reviewed reference')
    env = UnityPy.load(bundle)
    scripts = {o.path_id: o.read().m_ClassName for o in env.objects
               if o.assets_file.name == 'globalgamemanagers.assets' and o.type.name == 'MonoScript'}
    scenes = []
    for filename, role in SCENES.items():
        objects = {o.path_id: o for o in env.objects if o.assets_file.name == filename}
        nodes = []
        for obj in sorted(objects.values(), key=lambda o: o.path_id):
            if obj.type.name != 'Transform':
                continue
            transform = obj.read_typetree()
            pointers = [transform['m_GameObject'], transform['m_Father'], *transform['m_Children']]
            if any(p['m_FileID'] != 0 for p in pointers):
                raise ValueError('Unexpected external hierarchy reference')
            go_obj = objects[transform['m_GameObject']['m_PathID']]
            go = go_obj.read()
            components = []
            for pair in go.m_Component:
                component = objects[pair.component.path_id]
                raw = component.get_raw_data()
                row = dict(id=component.path_id, type=component.type.name,
                           raw_sha256=sha(raw), size=len(raw))
                if component.type.name == 'MonoBehaviour':
                    file_id, script_id = struct.unpack_from('<iq', raw, 16)
                    external = component.assets_file.externals[file_id - 1] if file_id else None
                    # Resolve against the serialized external, not only its numeric ID.
                    if external is None or not external.path.endswith('globalgamemanagers.assets'):
                        raise ValueError('Unexpected script assembly reference')
                    row.update(script=scripts[script_id], script_id=script_id,
                               script_file='globalgamemanagers.assets')
                    if row['script'] in ['LayoutControl', 'LockToScreenSize', 'ContainerControl',
                                         'CameraResolutionMgr', 'RageCamera']:
                        # Preserve undecoded layout-controller evidence for the next pass.
                        row['serialized_hex'] = raw.hex()
                elif component.type.name == 'Camera':
                    camera = component.read_typetree()
                    row['projection'] = {key: camera[key] for key in [
                        'orthographic', 'orthographic size', 'field of view',
                        'near clip plane', 'far clip plane', 'm_NormalizedViewPortRect']}
                components.append(row)
            node = dict(name=go.m_Name, game_object_id=go_obj.path_id,
                        active=bool(go.m_IsActive), transform_id=obj.path_id,
                        parent=transform['m_Father']['m_PathID'],
                        children=[p['m_PathID'] for p in transform['m_Children']],
                        game_object_sha256=sha(go_obj.get_raw_data()),
                        transform_sha256=sha(obj.get_raw_data()), components=components)
            for field, source, keys in [('position', 'm_LocalPosition', 'xyz'),
                                        ('rotation', 'm_LocalRotation', 'xyzw'),
                                        ('scale', 'm_LocalScale', 'xyz')]:
                node[field] = [transform[source][key] for key in keys]
            nodes.append(node)
        scenes.append(dict(file=filename, role=role, nodes=nodes,
                           nodes_sha256=sha(json.dumps(nodes, sort_keys=True, separators=(',', ':')).encode())))
    manifest = dict(reference='https://github.com/DarkTerraYT/EpicWeb', revision=REVISION,
                    bundle_sha256=BUNDLE_SHA, decoder='UnityPy ' + importlib.metadata.version('UnityPy'),
                    coordinate_system='Saved local Unity transforms; x right, y up; not screen pixels',
                    limitations=['Anchoring, animations and script updates are not evaluated',
                                 'Widget dimensions, pivots, clipping and atlas bindings are not decoded here',
                                 'Scene hierarchies alone do not establish final visible positions or parity'],
                    scenes=scenes)
    validate(manifest)
    OUTPUT.write_text(json.dumps(manifest, indent=2) + '\n')
    print('Recovered', sum(len(s['nodes']) for s in scenes), 'UI transforms across', len(scenes), 'scenes')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument('--bundle')
    mode.add_argument('--check', action='store_true')
    args = parser.parse_args()
    if args.check:
        validate(json.loads(OUTPUT.read_text()))
        print('Reference layout identities, evidence hashes and transform graphs match')
    else:
        recover(args.bundle)
