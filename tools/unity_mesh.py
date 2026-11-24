"""Range-checked Unity 5.6 Mesh reader for uncompressed triangle geometry.

Serialization layout checked against AssetStudio's Mesh reader. Unsupported
blend shapes/compressed geometry are rejected, not replaced with guessed quads.
"""
import hashlib
import math
import struct

from extract_unity import Reader
from recover_characters import count


def packed(reader, floating):
    items = reader.unpack('<I')[0]
    if floating:
        reader.read(8)  # range/start
    payload = reader.read(count(reader, 100_000_000))
    reader.align()
    bits = reader.read(1)[0]
    reader.align()
    if items or payload:
        raise ValueError('Compressed mesh vectors require separate decoding')
    return bits


def mesh(data):
    reader = Reader(data)
    name = reader.string()
    submeshes = []
    for _ in range(count(reader, 10000)):
        first, length, topology, first_vertex, vertices = reader.unpack('<5I')
        bounds = reader.unpack('<6f')
        if topology != 0 or length % 3:
            raise ValueError('Only triangle mesh topology is supported')
        submeshes.append(dict(first_byte=first, index_count=length, first_vertex=first_vertex,
                              vertex_count=vertices, bounds=bounds))
    for _ in range(4):
        if count(reader) != 0:
            raise ValueError('Mesh blend shapes require separate decoding')
    bind_poses = [reader.unpack('<16f') for _ in range(count(reader))]
    bone_hashes = [reader.unpack('<I')[0] for _ in range(count(reader))]
    root_hash = reader.unpack('<I')[0]
    compression, readable, keep_vertices, keep_indices = reader.unpack('<4B')
    if compression or any(value not in (0, 1) for value in (readable, keep_vertices, keep_indices)):
        raise ValueError('Unsupported mesh compression/flags')
    reader.align()
    index_bytes = reader.read(count(reader, 100_000_000))
    if len(index_bytes) % 2:
        raise ValueError('Truncated 16-bit mesh indices')
    indices = struct.unpack('<' + 'H'*(len(index_bytes)//2), index_bytes)
    reader.align()
    skin = [reader.read(32) for _ in range(count(reader, 1_000_000))]
    current_channels, vertex_count = reader.unpack('<2I')
    if vertex_count > 1_000_000:
        raise ValueError('Oversized mesh vertex count')
    channels = [reader.unpack('<4B') for _ in range(count(reader, 16))]
    payload = reader.read(count(reader, 100_000_000))
    reader.align()
    # Unity 5 CompressedMesh fields: FFFF III F II, followed by UVInfo.
    for floating in [True]*4 + [False]*3 + [True] + [False]*2:
        packed(reader, floating)
    uv_info = reader.unpack('<I')[0]
    bounds = reader.unpack('<6f')
    usage = reader.integer()
    collisions = []
    for _ in range(2):
        blob = reader.read(count(reader, 100_000_000))
        reader.align()
        collisions.append(dict(bytes=len(blob), sha256=hashlib.sha256(blob).hexdigest()))
    if reader.pos != len(data):
        raise ValueError(f'Unconsumed mesh bytes: {len(data)-reader.pos}')
    if indices and max(indices) >= vertex_count:
        raise ValueError('Mesh index outside vertex buffer')
    widths = {0: 4, 1: 2, 2: 1}
    streams = {}
    for stream, channel_offset, fmt, dimension in channels:
        dimension &= 15
        if not dimension:
            continue
        if fmt not in widths or dimension > 4:
            raise ValueError('Unsupported mesh vertex channel format')
        width = widths[fmt]*dimension
        item = streams.setdefault(stream, dict(stride=0, end=0))
        item['stride'] += width
        item['end'] = max(item['end'], channel_offset+width)
    offset = 0
    for stream in range(max(streams, default=-1)+1):
        item = streams.setdefault(stream, dict(stride=0, end=0))
        if item['stride'] != item['end']:
            raise ValueError('Unsupported gapped mesh vertex stream')
        item['offset'] = offset
        if offset+item['stride']*vertex_count > len(payload):
            raise ValueError('Mesh vertex stream exceeds payload')
        offset = (offset+item['stride']*vertex_count+15) & ~15
    decoded = {}
    for channel, (stream, start, fmt, dimension) in enumerate(channels):
        dimension &= 15
        if not dimension:
            continue
        values = []
        for index in range(vertex_count):
            at = streams[stream]['offset'] + streams[stream]['stride']*index + start
            if fmt in (0, 1):
                value = struct.unpack_from('<'+('f' if fmt == 0 else 'e')*dimension, payload, at)
            else:
                value = tuple(component/255. for component in payload[at:at+dimension])
            values.append(value)
        decoded[channel] = values
    if vertex_count and (0 not in decoded or 3 not in decoded):
        raise ValueError('Textured mesh lacks position or UV0 channel')
    positions = decoded.get(0, [])
    uvs = decoded.get(3, [])
    if any(len(value) != 3 or not all(math.isfinite(v) for v in value) for value in positions):
        raise ValueError('Invalid mesh positions')
    if any(len(value) != 2 or not all(math.isfinite(v) for v in value) for value in uvs):
        raise ValueError('Invalid mesh UVs')
    for submesh in submeshes:
        start = submesh['first_byte']//2
        if submesh['first_byte'] % 2 or start+submesh['index_count'] > len(indices):
            raise ValueError('Submesh index range outside mesh')
        submesh['indices'] = indices[start:start+submesh['index_count']]
    return dict(name=name, sha256=hashlib.sha256(data).hexdigest(), vertex_count=vertex_count,
                positions=positions, uvs=uvs, colors=decoded.get(2, [(1.,1.,1.,1.)]*vertex_count),
                submeshes=submeshes, channels=channels, current_channels=current_channels,
                bind_pose_count=len(bind_poses), skin_count=len(skin), bone_hashes=bone_hashes,
                root_bone_hash=root_hash, uv_info=uv_info, bounds=bounds, usage=usage,
                collisions=collisions)
