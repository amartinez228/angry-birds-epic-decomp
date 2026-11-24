"""Read original Unity 5.6 legacy curves and bind paths to recovered rigs.

Format reference: Perfare/AssetStudio AnimationClip.cs (primary reader).
Humanoid/muscle structures are traversed and hashed without interpreting their
unused values. Unity events are bound to independently decoded SmoothMoves
frame records, including geometry, atlas references, depth and user tags.
No target code is executed, and exported curves do not imply runtime playback.
"""
import hashlib
import json
import math
import struct
from recover_art import ROOT, Extractor
from recover_characters import Scene, Reader, bone_animation, count


def curve(reader, dimension):
    keys = []
    previous = -math.inf
    ordered = True
    for _ in range(count(reader)):
        time = reader.unpack('<f')[0]
        value = reader.unpack('<' + 'f'*dimension)
        incoming = reader.unpack('<' + 'f'*dimension)
        outgoing = reader.unpack('<' + 'f'*dimension)
        if not math.isfinite(time) or not all(math.isfinite(v) for v in value):
            raise ValueError(f'Invalid animation time/value at {reader.pos}: time={time}, previous={previous}, value={value}')
        ordered = ordered and time >= previous
        if any(math.isnan(v) for v in (*incoming, *outgoing)):
            raise ValueError('NaN curve slope')
        def slopes(values):
            # Infinite tangents encode stepped curves and must not be silently
            # rounded to finite values or written as nonstandard JSON numbers.
            return [v if math.isfinite(v) else ('Infinity' if v > 0 else '-Infinity') for v in values]
        keys.append(dict(time=time, value=list(value), in_slope=slopes(incoming), out_slope=slopes(outgoing)))
        previous = time
    pre, post, rotation_order = reader.unpack('<3i')
    return dict(keys=keys, time_ordered=ordered, pre_infinity=pre, post_infinity=post, rotation_order=rotation_order)


def clip_tail(reader):
    """Walk the Unity 5.6 muscle/binding structures to the actual event table.

    Legacy actors do not use the humanoid values. Their byte span and digest
    are retained, while count-delimited members are still bounds checked.
    """
    declared_size = reader.integer()
    muscle_start = reader.pos
    reader.read(40+12+16)  # HumanPose root xform, look-at position/weights
    reader.read(count(reader)*64)  # HumanGoal xform, weights, hint position/weight
    for _ in range(2):
        reader.read(40)  # HandPose xform
        reader.read(count(reader)*4)
        reader.read(16)
    reader.read(count(reader)*4)  # HumanPose DoF
    reader.read(count(reader)*12)  # translation DoF
    reader.read(4*40+12)  # start/stop/left/right xforms, average speed
    reader.read(count(reader)*4)  # StreamedClip words
    reader.read(4)  # StreamedClip curveCount
    reader.read(16)  # DenseClip frameCount, curveCount, sampleRate, beginTime
    reader.read(count(reader)*4)  # DenseClip samples
    reader.read(count(reader)*4)  # ConstantClip values
    reader.read(count(reader)*12)  # ValueConstant: id, type, index (Unity >=5.5)
    reader.read(24)  # ClipMuscleConstant scalar fields
    reader.read(count(reader)*4)  # indices
    reader.read(count(reader)*8)  # ValueDelta pairs
    reader.read(count(reader)*4)  # reference pose
    flags = reader.read(11)
    if any(flag not in (0, 1) for flag in flags):
        raise ValueError('Invalid muscle clip flags')
    reader.align()
    muscle_end = reader.pos
    bindings = []
    for _ in range(count(reader)):
        path, attribute = reader.unpack('<2I')
        script = list(reader.unpack('<iq'))
        class_id = reader.integer()
        custom_type, is_pointer = reader.unpack('<2B')
        reader.align()
        bindings.append(dict(path_hash=path, attribute=attribute, script=script,
                             class_id=class_id, custom_type=custom_type, is_pointer=bool(is_pointer)))
    mapping = [list(reader.unpack('<iq')) for _ in range(count(reader))]
    event_offset = reader.pos
    events = []
    for _ in range(count(reader)):
        time = reader.unpack('<f')[0]
        function, parameter = reader.string(), reader.string()
        pointer = list(reader.unpack('<iq'))
        floating, integer, options = reader.unpack('<fii')
        if not math.isfinite(time) or not math.isfinite(floating):
            raise ValueError('Invalid event time/parameter')
        events.append(dict(time=time, function=function, string_parameter=parameter,
                           object_parameter=pointer, float_parameter=floating,
                           int_parameter=integer, message_options=options))
    if reader.pos != len(reader.data):
        raise ValueError(f'Clip event table did not reach object end: {reader.pos}/{len(reader.data)}')
    return dict(muscle_declared_size=declared_size, muscle_struct_bytes=muscle_end-muscle_start,
                muscle_struct_sha256=hashlib.sha256(reader.data[muscle_start:muscle_end]).hexdigest(),
                generic_bindings=bindings, pointer_mapping=mapping, event_table_offset=event_offset, events=events)


def clip(data):
    reader = Reader(data)
    name = reader.string()
    legacy, compressed, high_quality = reader.unpack('<3B')
    if legacy not in (0, 1) or compressed not in (0, 1) or high_quality not in (0, 1):
        raise ValueError('Invalid AnimationClip flags')
    reader.align()
    groups = {}
    for kind, dimension in [('rotation', 4), ('compressed_rotation', None), ('euler', 3),
                             ('position', 3), ('scale', 3), ('float', 1)]:
        number = count(reader)
        if kind == 'compressed_rotation':
            if number:
                raise ValueError('Packed quaternion curves require another decoder')
            continue
        curves = []
        for _ in range(number):
            record = curve(reader, dimension)
            if kind == 'float':
                record['attribute'] = reader.string()
            record['path'] = reader.string()
            if kind == 'float':
                record['class_id'] = reader.integer()
                record['script'] = list(reader.unpack('<iq'))
            curves.append(record)
        groups[kind] = curves
    pointers = []
    for _ in range(count(reader)):
        keys = [dict(time=reader.unpack('<f')[0], pointer=list(reader.unpack('<iq')))
                for _ in range(count(reader))]
        pointers.append(dict(keys=keys, attribute=reader.string(), path=reader.string(),
                             class_id=reader.integer(), script=list(reader.unpack('<iq'))))
    sample_rate, wrap = reader.unpack('<fi')
    bounds = list(reader.unpack('<6f'))
    if not 0 < sample_rate <= 1000 or not all(math.isfinite(v) for v in bounds):
        raise ValueError('Invalid clip sampling metadata')
    keys = [key for curves in groups.values() for record in curves for key in record['keys']]
    prefix = reader.pos
    tail = clip_tail(reader)
    return dict(name=name, legacy=bool(legacy), compressed=bool(compressed), high_quality=bool(high_quality),
                curves=groups, pointer_curves=pointers, sample_rate=sample_rate, wrap_mode=wrap, bounds=bounds,
                max_key_time=max((key['time'] for key in keys), default=0.),
                time_units='Original Unity clip coordinates; SmoothMoves playback speed must be recovered separately.',
                curve_prefix_bytes=prefix, unparsed_tail_bytes=0, **tail)


def rig(scene, source, component_id):
    records = scene.file(source)[0]
    animation_data = records[component_id][1]
    reader = Reader(animation_data, 28)
    reader.string()
    reader.read(12)
    animation_source, animation_id, animation_component = scene.resolve(source, reader.unpack('<iq'), 111)
    parsed = bone_animation(animation_data)
    reader = Reader(animation_data, parsed['next_offset'])
    for _ in range(2):
        reader.read(count(reader)*12)
    build_id = reader.string()
    import_scale = reader.unpack('<f')[0]
    default_name = reader.string()
    actor = struct.unpack_from('<iq', animation_component)
    if actor[0] != 0 or animation_source != source:
        raise ValueError('Unexpected external actor root')
    nodes = {}
    for path_id, (kind, data) in records.items():
        if kind != 4:
            continue
        transform = Reader(data)
        obj = scene.resolve(source, transform.unpack('<iq'), 1)
        obj_reader = Reader(obj[2])
        obj_reader.read(count(obj_reader)*12+4)
        name = obj_reader.string()
        rotation = list(transform.unpack('<4f'))
        position = list(transform.unpack('<3f'))
        scale = list(transform.unpack('<3f'))
        transform.read(count(transform)*12)
        parent = transform.unpack('<iq')
        if parent[0] != 0:
            raise ValueError('External transform parent')
        nodes[path_id] = dict(name=name, game_object_id=obj[1], rotation=rotation,
                              position=position, scale=scale, parent_id=parent[1])
    roots = [path_id for path_id, node in nodes.items() if node['game_object_id'] == actor[1]]
    if len(roots) != 1:
        raise ValueError('Ambiguous actor root transform')
    root = roots[0]
    def path(path_id, seen=()):
        if path_id == root:
            return ''
        if path_id in seen:
            raise ValueError('Cyclic rig hierarchy')
        node = nodes[path_id]
        if not node['parent_id']:
            raise ValueError('Node outside actor hierarchy')
        prefix = path(node['parent_id'], (*seen, path_id))
        return (prefix + '/' if prefix else '') + node['name']
    for path_id, node in nodes.items():
        node.update(path_id=path_id, path=path(path_id))
    if len({node['path'] for node in nodes.values()}) != len(nodes):
        raise ValueError('Ambiguous rig node paths')
    reader = Reader(animation_component, 16)
    default_pointer = reader.unpack('<iq')
    pointers = [default_pointer] + [reader.unpack('<iq') for _ in range(count(reader))]
    pointers = list(dict.fromkeys(pointer for pointer in pointers if pointer[1]))
    names = {Reader(scene.resolve(animation_source, pointer, 74)[2]).string() for pointer in pointers}
    metadata = clip_metadata(animation_data, names, {bone['bone'] for bone in parsed['bones']})
    frames = trigger_frames(animation_data, parsed, metadata)
    return dict(root_id=root, default_clip_name=default_name, import_scale=import_scale,
                build_id=build_id, animation_component_id=animation_id,
                nodes=list(nodes.values()), clips=pointers, animation_source=animation_source,
                clip_metadata=metadata, trigger_frames=frames)


def trigger_frames(data, animation, metadata):
    """Decode serialized SmoothMoves frame changes, preserving original IDs.

    Field types/order come from this build's IL2CPP TriggerFrame/Bone types;
    the independently recognized clip metadata offset bounds the entire list.
    """
    reader = Reader(data, animation['next_offset'])
    for _ in range(2): reader.read(count(reader)*12)
    reader.string()  # build ID
    reader.read(4)  # import scale
    reader.string()  # default animation name
    for size in (20,16,20): reader.read(count(reader)*size)
    for _ in range(count(reader)):
        reader.integer()
        reader.string()
        reader.integer()
    paths = [[reader.string() for _ in range(count(reader))] for _ in range(2)]
    if any(len(array) != len(animation['bones']) for array in paths):
        raise ValueError('SmoothMoves path arrays and bones disagree')
    node_ids = {bone['node'] for bone in animation['bones']}
    frames = []
    for _ in range(count(reader)):
        clip_index, frame = reader.unpack('<2i')
        if not 0 <= clip_index < len(metadata['records']) or frame < 0:
            raise ValueError('Invalid trigger clip/frame index')
        bones = []
        for _ in range(count(reader,4096)):
            tag = reader.string()
            node = reader.integer()
            events = [reader.integer() for _ in range(count(reader,64))]
            if node not in node_ids or any(event not in range(7) for event in events):
                raise ValueError('Invalid trigger bone/event type')
            pivot = list(reader.unpack('<2f'))
            corners = [list(reader.unpack('<3f')) for _ in range(4)]
            uv = list(reader.unpack('<4f'))
            position = list(reader.unpack('<3f'))
            rotation = reader.unpack('<f')[0]
            scale = list(reader.unpack('<2f'))
            atlas = list(reader.unpack('<iq'))
            texture = reader.string()
            material, depth = reader.unpack('<2i')
            original_atlas = list(reader.unpack('<iq'))
            original_texture = reader.string()
            original_material = reader.integer()
            original_uv = list(reader.unpack('<4f'))
            original_pivot = list(reader.unpack('<2f'))
            if not all(math.isfinite(value) for value in (*pivot,*uv,*position,rotation,*scale,
                                                          *original_uv,*original_pivot,*sum(corners,[]))):
                raise ValueError('Non-finite trigger geometry')
            bones.append(dict(node=node, tag=tag, events=events, pivot_offset=pivot,
                              corners=corners, uv=uv, local_position=position,
                              local_rotation=rotation, local_scale=scale, atlas=atlas,
                              texture_guid=texture, material=material, depth=depth,
                              original_atlas=original_atlas, original_texture_guid=original_texture,
                              original_material=original_material, original_uv=original_uv,
                              original_pivot_offset=original_pivot))
        frames.append(dict(clip_index=clip_index, frame=frame, bones=bones))
    atlases = [list(reader.unpack('<iq')) for _ in range(count(reader))]
    if reader.pos != metadata['serialized_offset']:
        raise ValueError(f'Trigger decoding did not reach validated clip metadata: {reader.pos}/{metadata["serialized_offset"]}')
    return dict(frames=frames, bone_paths=paths[0], sprite_paths=paths[1], atlas_pointers=atlases)


def clip_metadata(data, expected_names, bone_ids):
    """Recognize the complete serialized AnimationClipSM_Lite array uniquely.

    Its preceding SmoothMoves trigger-frame records are not decoded yet. This
    is a constrained candidate search, validated against independent Animation
    component clip names, all bone IDs, flags and the entire declared array.
    Native BoneAnimation.Awake at 0x1476450 assigns this record's fps to Unity
    AnimationState.speed, establishing the conversion from clip time to seconds.
    """
    candidates = {}
    for first in expected_names:
        raw = first.encode('utf-8')
        needle = struct.pack('<ii', len(expected_names), len(raw)) + raw
        start = 0
        while (at := data.find(needle, start)) >= 0:
            start = at + 1
            reader = Reader(data, at + 4)
            records = []
            try:
                for _ in range(len(expected_names)):
                    name = reader.string()
                    fps = reader.unpack('<f')[0]
                    wrap, mix, blend, layer = reader.unpack('<4i')
                    weight = reader.unpack('<f')[0]
                    bones = [reader.unpack('<3i') for _ in range(count(reader, 4096))]
                    if (name not in expected_names or not 0 < fps <= 1000 or mix not in (0, 1)
                            or blend not in (0, 1) or not math.isfinite(weight)
                            or any(bone not in bone_ids or mixing not in (0, 1) or color not in (0, 1)
                                   for bone, mixing, color in bones)):
                        raise ValueError('Invalid SmoothMoves clip metadata')
                    records.append(dict(name=name, fps=fps, wrap_mode=wrap, mix=bool(mix),
                                        blend_mode=blend, layer=layer, blend_weight=weight,
                                        bones=[dict(bone_data_index=b, mix_transform=bool(m), animates_color=bool(c))
                                               for b, m, c in bones]))
                if {record['name'] for record in records} != expected_names:
                    raise ValueError('SmoothMoves and Unity clip lists disagree')
                candidates[at] = dict(serialized_offset=at, end_offset=reader.pos, records=records)
            except (ValueError, struct.error, UnicodeError):
                continue
    if len(candidates) != 1:
        raise ValueError(f'Expected unique complete SmoothMoves clip metadata array, found {len(candidates)}')
    return next(iter(candidates.values()))


def main():
    scene = Scene(Extractor())
    characters = json.loads((ROOT / 'content/characters.json').read_text(encoding='utf-8'))
    directory = ROOT / 'analysis/animations'
    directory.mkdir(exist_ok=True)
    summaries, rigs, failures = [], [], []
    for model in characters['models']:
        skeleton = rig(scene, model['source'], model['component_path_id'])
        known_paths = {node['path'] for node in skeleton['nodes']}
        metadata = {record['name']: record for record in skeleton['clip_metadata']['records']}
        clips = []
        for pointer in skeleton.pop('clips'):
            source, path_id, data = scene.resolve(skeleton['animation_source'], pointer, 74)
            try:
                recovered = clip(data)
                recovered['playback'] = metadata[recovered['name']]
                recovered['duration_seconds'] = recovered['max_key_time'] / recovered['playback']['fps']
                recovered['time_units'] = 'Unity clip coordinates; seconds = key time / playback.fps, from native AnimationState.speed assignment.'
                unknown = sorted({record['path'] for kind in ('rotation', 'euler', 'position', 'scale')
                                  for record in recovered['curves'][kind]} - known_paths)
                if unknown:
                    raise ValueError(f'Unbound transform paths: {unknown}')
                frames = skeleton['trigger_frames']['frames']
                for event in recovered['events']:
                    if event['function'] == 'AnimationEvent_Triggered':
                        index = event['int_parameter']
                        if not 0 <= index < len(frames):
                            raise ValueError('Animation event outside SmoothMoves trigger table')
                        frame = frames[index]
                        frame_clip = skeleton['clip_metadata']['records'][frame['clip_index']]['name']
                        if frame_clip != recovered['name'] or event['time'] != frame['frame']:
                            raise ValueError('Unity event and SmoothMoves clip/frame disagree')
                recovered['smoothmoves_frames'] = [dict(trigger_index=event['int_parameter'],
                        time_seconds=event['time']/recovered['playback']['fps'],
                        **frames[event['int_parameter']]) for event in recovered['events']
                        if event['function'] == 'AnimationEvent_Triggered']
                filename = source + '-' + str(path_id) + '.json'
                recovered.update(source=source, path_id=path_id, source_sha256=hashlib.sha256(data).hexdigest())
                (directory / filename).write_text(json.dumps(recovered, indent=2, allow_nan=False), encoding='utf-8')
                clips.append(dict(name=recovered['name'], file=filename, max_key_time=recovered['max_key_time'],
                                  duration_seconds=recovered['duration_seconds'], playback_fps=recovered['playback']['fps'],
                                  event_count=len(recovered['events']),
                                  user_cues=[dict(time_seconds=frame['time_seconds'], tag=bone['tag'], node=bone['node'])
                                             for frame in recovered['smoothmoves_frames'] for bone in frame['bones']
                                             if 0 in bone['events']],
                                  unordered_curve_count=sum(not record['time_ordered'] for curves in recovered['curves'].values() for record in curves),
                                  curve_count=sum(len(curves) for curves in recovered['curves'].values()),
                                  key_count=sum(len(record['keys']) for curves in recovered['curves'].values() for record in curves)))
            except (ValueError, struct.error) as error:
                failures.append(dict(actor=model['asset_id'], source=source, path_id=path_id, error=str(error)))
        summaries.append(dict(asset_id=model['asset_id'], default_clip_name=skeleton['default_clip_name'], clips=clips))
        skeleton.update(asset_id=model['asset_id'], source=model['source'])
        rigs.append(skeleton)
        print(model['asset_id'], len(skeleton['nodes']), 'nodes,', len(clips), 'clips')
    (ROOT / 'content/rigs.json').write_text(json.dumps(rigs, indent=2), encoding='utf-8')
    manifest = dict(source='Original actor prefab Animation links and Unity 5.6 legacy AnimationClip objects',
                    limitations=['Exported events and frame changes are not yet executed by the runtime.',
                                 'Humanoid/muscle values are structurally traversed and hashed, not semantically interpreted.'],
                    actors=summaries, failures=failures)
    (ROOT / 'content/animations.json').write_text(json.dumps(manifest, indent=2), encoding='utf-8')
    print('Recovered', sum(len(actor['clips']) for actor in summaries), 'actor clip links; failures:', len(failures))


if __name__ == '__main__':
    main()
