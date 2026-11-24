"""Pack recovered original curves into a bounded, versioned Rust runtime input.

Original key order remains in evidence JSON. Runtime curves use a stable time
sort, explicitly recorded here; exact original handling of unsorted curves is
not yet established. Tangents retain original float32 values and infinities.
"""
import hashlib
import json
import struct
from recover_art import ROOT


def build():
    manifest = json.loads((ROOT / 'content/animations.json').read_text(encoding='utf-8'))
    rigs = {rig['asset_id']: rig for rig in json.loads((ROOT / 'content/rigs.json').read_text(encoding='utf-8'))}
    models = {model['asset_id']: model for model in json.loads((ROOT / 'content/characters.json').read_text(encoding='utf-8'))['models']}
    output = bytearray(b'EPICAN03')
    def integer(value): output.extend(struct.pack('<I', value))
    def floats(values): output.extend(struct.pack('<'+'f'*len(values), *map(float, values)))
    def string(value):
        raw = value.encode('utf-8')
        integer(len(raw))
        output.extend(raw)
    integer(len(manifest['actors']))
    keys = 0
    for actor in manifest['actors']:
        rig = rigs[actor['asset_id']]
        by_id = {node['path_id']: node for node in rig['nodes']}
        ordered = []
        def visit(node):
            if node in ordered: return
            if node['parent_id']: visit(by_id[node['parent_id']])
            ordered.append(node)
        for node in rig['nodes']: visit(node)
        indices = {node['path_id']: index for index, node in enumerate(ordered)}
        paths = {node['path']: index for index, node in enumerate(ordered)}
        string(actor['asset_id'])
        string(actor['default_clip_name'])
        material_count = len(models[actor['asset_id']]['materials'])
        integer(material_count)
        integer(len(ordered))
        for node in ordered:
            string(node['path'])
            integer(indices[node['parent_id']] + 1 if node['parent_id'] else 0)
            floats(node['position'] + node['rotation'] + node['scale'])
        integer(len(actor['clips']))
        for summary in actor['clips']:
            clip = json.loads((ROOT / 'analysis/animations' / summary['file']).read_text(encoding='utf-8'))
            string(clip['name'])
            floats([clip['playback']['fps'], clip['max_key_time']])
            integer(clip['playback']['wrap_mode'])
            curves = [(kind, record) for kind, name in enumerate(('rotation','position','scale'))
                      for record in clip['curves'][name]]
            if clip['curves']['euler'] or clip['curves']['float'] or clip['pointer_curves']:
                raise ValueError('Runtime pack does not yet encode these curve types')
            integer(len(curves))
            for kind, curve in curves:
                integer(paths[curve['path']])
                integer(kind)
                integer(len(curve['keys']))
                keys += len(curve['keys'])
                for key in sorted(curve['keys'], key=lambda key: key['time']):
                    floats([key['time']] + key['value'] + key['in_slope'] + key['out_slope'])
            frames = sorted(clip['smoothmoves_frames'], key=lambda frame: frame['frame'])
            integer(len(frames))
            for frame in frames:
                floats([frame['frame']])
                integer(len(frame['bones']))
                for bone in frame['bones']:
                    if any(abs(corner[2]) > .000001 for corner in bone['corners']):
                        raise ValueError('Non-planar sprite corners require an expanded runtime geometry format')
                    integer(paths[rig['trigger_frames']['sprite_paths'][bone['node']]])
                    integer(sum(1 << event for event in set(bone['events'])))
                    if bone['material'] >= material_count:
                        raise ValueError('Frame material outside actor material array')
                    integer(bone['material']+1 if bone['material'] >= 0 else 0)
                    integer(bone['depth'] & 0xffffffff)
                    floats([coordinate for corner in bone['corners'] for coordinate in corner[:2]])
                    floats(bone['uv'])
            cues = [(frame['frame'],bone['tag']) for frame in frames for bone in frame['bones'] if 0 in bone['events']]
            integer(len(cues))
            for time, tag in cues:
                floats([time])
                string(tag)
    path = ROOT / 'assets/animation.bin'
    path.write_bytes(output)
    evidence = dict(format='EPICAN03: original curves, hierarchy, sprite frame changes and user cue times; little-endian float32',
                    sha256=hashlib.sha256(output).hexdigest(), bytes=len(output), actors=len(manifest['actors']), keys=keys,
                    source_manifest_sha256=hashlib.sha256((ROOT / 'content/animations.json').read_bytes()).hexdigest(),
                    source_rigs_sha256=hashlib.sha256((ROOT / 'content/rigs.json').read_bytes()).hexdigest(),
                    source_characters_sha256=hashlib.sha256((ROOT / 'content/characters.json').read_bytes()).hexdigest(),
                    key_order='Runtime uses a stable sort by key time. Original order is preserved in analysis/animations JSON.',
                    limitations=['Single-clip transforms and sprite frame changes; blend/mixing, user callbacks, collider changes, audio/VFX and original unsorted-key behavior remain separate.'])
    (ROOT / 'content/animation-runtime.json').write_text(json.dumps(evidence, indent=2), encoding='utf-8')
    return evidence


if __name__ == '__main__':
    print(json.dumps(build()))
