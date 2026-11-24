"""Decode original CHMotionTween settings and authored curves without execution.

Native Play selects fixed seconds or distance/speed. Update evaluates elapsed /
computed duration and invokes Finished. No runtime projectile binding is inferred
from a prefab name: exported transforms and component references retain evidence.
"""
import hashlib
import json
import math
import struct

from extract_unity import Reader
from recover_art import Extractor, ROOT
from recover_characters import Scene, count


def curve(reader):
    keys = [dict(zip(('time', 'value', 'incoming', 'outgoing'), reader.unpack('<4f')))
            for _ in range(count(reader, 10000))]
    pre, post, rotation = reader.unpack('<3i')
    if not 0 <= pre <= 8 or not 0 <= post <= 8 or not 0 <= rotation <= 4:
        raise ValueError('Invalid motion curve modes')
    if any(not math.isfinite(key['time']) or not math.isfinite(key['value']) for key in keys):
        raise ValueError('Non-finite motion key')
    return dict(keys=keys, pre_wrap=pre, post_wrap=post, rotation_order=rotation)


def decode(data):
    reader = Reader(data, 28)
    name = reader.string()
    start = reader.unpack('<iq')
    start_offset = reader.unpack('<3f')
    end = reader.unpack('<iq')
    end_offset = reader.unpack('<3f')
    timing, duration, speed = reader.unpack('<iff')
    # Unity serializes and aligns each bool field separately in this component.
    play, loop = reader.unpack('<2i')
    primary = curve(reader)
    axes = []
    for _ in range(count(reader, 3)):
        axis = reader.integer()
        if axis not in (0, 1, 2):
            raise ValueError('Invalid motion axis')
        axes.append(dict(axis=axis, curve=curve(reader)))
    if reader.pos != len(data):
        raise ValueError('Unconsumed motion component bytes')
    if timing not in (0, 1) or play not in (0, 1) or loop not in (0, 1):
        raise ValueError('Invalid motion timing/flags')
    if len({item['axis'] for item in axes}) != len(axes):
        raise ValueError('Duplicate motion axis')
    if any(not math.isfinite(v) for v in (*start_offset, *end_offset, duration, speed)):
        raise ValueError('Non-finite motion settings')
    return dict(name=name, start_transform=start, start_offset=start_offset,
                end_transform=end, end_offset=end_offset, timing=timing,
                duration=duration, speed=speed, play_on_start=bool(play),
                looping=bool(loop), curve=primary, axes=axes)


def recover():
    extractor = Extractor()
    scene = Scene(extractor)
    script = next(entry for entry in extractor.inventory
                  if entry['class_id'] == 115 and entry.get('name') == 'CHMotionTween')
    result = []
    for entry in extractor.inventory:
        if entry['class_id'] != 114 or entry['size'] < 32:
            continue
        data = extractor.data(entry)
        pointer = struct.unpack_from('<iq', data, 16)
        if pointer[1] != script['path_id']:
            continue
        source = entry['source'].split('/')[-1]
        target = scene.resolve(source, pointer, 115)
        if target[0] != script['source'].split('/')[-1]:
            continue
        if Reader(target[2]).string() != 'CHMotionTween':
            raise ValueError('Motion script identity mismatch')
        obj = scene.resolve(source, struct.unpack_from('<iq', data), 1)
        reader = Reader(obj[2])
        components = [reader.unpack('<iq') for _ in range(count(reader))]
        reader.read(4)
        object_name = reader.string()
        references = []
        for ptr in components:
            resolved = scene.resolve(obj[0], ptr)
            references.append(dict(source=resolved[0], path_id=resolved[1],
                                   class_id=scene.file(resolved[0])[0][resolved[1]][0]))
        result.append(dict(source=entry, sha256=hashlib.sha256(data).hexdigest(),
                           object_name=object_name, components=references, **decode(data)))
    if not result:
        raise ValueError('No original motion components found')
    # JSON permits infinite tangents in the evidence, matching original curves.
    exported = dict(script=script, components=result,
                    limitations=['Original serialized motion components; scene/prefab bindings, full tween evaluation, and runtime projectile callbacks remain unfinished.'])
    (ROOT / 'content/motion.json').write_text(json.dumps(exported, indent=2) + '\n', encoding='utf-8')
    print(f'Recovered {len(result)} original motion components')


if __name__ == '__main__':
    recover()
