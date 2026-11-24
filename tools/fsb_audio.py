"""Strict single-sample FSB5 Vorbis reader and lossless Ogg repackager.

FSB field layout checked against python-fsb5; Vorbis bit syntax follows Xiph's
Vorbis I specification. The supplied banks contain compressed packets, not PCM.
Setup packets come from the MIT-licensed python-fsb5 table, read as literal data.
"""
import ast
import hashlib
import struct

from extract_unity import Reader
from recover_art import ROOT


def bank(data):
    reader = Reader(data)
    if reader.read(4) != b'FSB5':
        raise ValueError('Expected FSB5 bank')
    version, samples, header_size, names_size, payload_size, codec = reader.unpack('<6I')
    reader.read(32)
    if version != 1 or samples != 1 or codec != 15 or names_size:
        raise ValueError('Unsupported FSB version/sample count/codec/name table')
    if 60+header_size+payload_size != len(data):
        raise ValueError('FSB section sizes differ from resource range')
    raw = reader.unpack('<Q')[0]
    more, rate_code, channels = raw & 1, (raw >> 1) & 15, ((raw >> 5) & 1)+1
    offset, frames = ((raw >> 6) & ((1 << 28)-1))*16, raw >> 34
    metadata = {}
    while more:
        header = reader.unpack('<I')[0]
        more, size, kind = header & 1, (header >> 1) & 0xffffff, header >> 25
        if kind in metadata:
            raise ValueError('Duplicate FSB sample metadata chunk')
        metadata[kind] = reader.read(size)
        if reader.pos > 60+header_size:
            raise ValueError('FSB sample header overlaps audio packets')
    if any(reader.read(60+header_size-reader.pos)) or offset:
        raise ValueError('Unexpected FSB sample header extent or data offset')
    rates = {1:8000, 2:11000, 3:11025, 4:16000, 5:22050, 6:24000, 7:32000, 8:44100, 9:48000}
    rate = struct.unpack('<I', metadata[2])[0] if 2 in metadata else rates.get(rate_code)
    if not rate or 11 not in metadata or len(metadata[11]) < 4:
        raise ValueError('FSB Vorbis frequency/setup reference absent')
    if 1 in metadata:
        if len(metadata[1]) != 1:
            raise ValueError('Invalid channel override')
        channels = metadata[1][0]
    if not 1 <= channels <= 8 or not frames:
        raise ValueError('Invalid FSB channel/sample count')
    packets = []
    while reader.pos+2 <= len(data):
        size = reader.unpack('<H')[0]
        if not size:
            break
        packets.append(reader.read(size))
    if not packets or any(data[reader.pos:]):
        raise ValueError('Invalid FSB packet padding')
    return dict(version=version, codec=codec, sample_count=frames, sample_rate=rate, channels=channels,
                vorbis_crc32=struct.unpack_from('<I', metadata[11])[0], packets=packets,
                metadata={str(k):dict(bytes=len(v), sha256=hashlib.sha256(v).hexdigest(),
                                      prefix_hex=v[:16].hex()) for k, v in metadata.items()})


class Bits:
    def __init__(self, data):
        self.data, self.pos = data, 0

    def read(self, width):
        if width < 0 or self.pos+width > len(self.data)*8:
            raise ValueError('Truncated Vorbis setup')
        start = self.pos
        self.pos += width
        return (int.from_bytes(self.data[start//8:(self.pos+7)//8], 'little') >> (start % 8)) & ((1 << width)-1)


def mode_flags(setup, channels):
    if not setup.startswith(b'\x05vorbis'):
        raise ValueError('Invalid Vorbis setup packet')
    bits = Bits(setup[7:])
    for _ in range(bits.read(8)+1):
        if bits.read(24) != 0x564342:
            raise ValueError('Invalid Vorbis codebook sync')
        dimension, entries = bits.read(16), bits.read(24)
        if not dimension or not entries or entries > 1_000_000:
            raise ValueError('Invalid Vorbis codebook size')
        if bits.read(1):
            bits.read(5)
            done = 0
            rounds = 0
            while done < entries:
                done += bits.read((entries-done).bit_length())
                rounds += 1
                if done > entries or rounds > 32:
                    raise ValueError('Invalid ordered Vorbis code lengths')
        else:
            sparse = bits.read(1)
            for _ in range(entries):
                if not sparse or bits.read(1):
                    bits.read(5)
        lookup = bits.read(4)
        if lookup > 2:
            raise ValueError('Invalid Vorbis codebook lookup type')
        if lookup:
            bits.read(64)
            width = bits.read(4)+1
            bits.read(1)
            if lookup == 1:
                values = int(entries ** (1/dimension))
                while (values+1)**dimension <= entries:
                    values += 1
                while values**dimension > entries:
                    values -= 1
            else:
                values = entries*dimension
            bits.read(values*width)
    for _ in range(bits.read(6)+1):
        if bits.read(16):
            raise ValueError('Invalid Vorbis time transform')
    floors = bits.read(6)+1
    for _ in range(floors):
        kind = bits.read(16)
        if kind == 0:
            bits.read(8+16+16+6+8)
            for _ in range(bits.read(4)+1):
                bits.read(8)
        elif kind == 1:
            partitions = [bits.read(4) for _ in range(bits.read(5))]
            dimensions = []
            for _ in range(max(partitions, default=-1)+1):
                dimensions.append(bits.read(3)+1)
                subclasses = bits.read(2)
                if subclasses:
                    bits.read(8)
                for _ in range(1 << subclasses):
                    bits.read(8)
            bits.read(2)
            width = bits.read(4)
            for partition in partitions:
                bits.read(dimensions[partition]*width)
        else:
            raise ValueError('Unsupported Vorbis floor')
    residues = bits.read(6)+1
    for _ in range(residues):
        if bits.read(16) > 2:
            raise ValueError('Invalid Vorbis residue type')
        bits.read(24*3)
        classifications = bits.read(6)+1
        bits.read(8)
        cascades = []
        for _ in range(classifications):
            low = bits.read(3)
            high = bits.read(5) if bits.read(1) else 0
            cascades.append((high << 3) | low)
        for cascade in cascades:
            for shift in range(8):
                if cascade & (1 << shift):
                    bits.read(8)
    mappings = bits.read(6)+1
    for _ in range(mappings):
        if bits.read(16):
            raise ValueError('Unsupported Vorbis mapping')
        submaps = bits.read(4)+1 if bits.read(1) else 1
        if bits.read(1):
            for _ in range(bits.read(8)+1):
                magnitude = bits.read((channels-1).bit_length())
                angle = bits.read((channels-1).bit_length())
                if magnitude == angle or max(magnitude, angle) >= channels:
                    raise ValueError('Invalid Vorbis channel coupling')
        if bits.read(2):
            raise ValueError('Invalid Vorbis mapping reserved bits')
        if submaps > 1:
            for _ in range(channels):
                if bits.read(4) >= submaps:
                    raise ValueError('Invalid Vorbis channel mux')
        for _ in range(submaps):
            bits.read(8)
            if bits.read(8) >= floors or bits.read(8) >= residues:
                raise ValueError('Invalid Vorbis submap reference')
    flags = []
    for _ in range(bits.read(6)+1):
        flags.append(bits.read(1))
        if bits.read(16) or bits.read(16) or bits.read(8) >= mappings:
            raise ValueError('Invalid Vorbis mode')
    if bits.read(1) != 1 or len(bits.data)*8-bits.pos > 7 or bits.read(len(bits.data)*8-bits.pos):
        raise ValueError('Invalid Vorbis setup framing/padding')
    return flags


def setup_table():
    source = (ROOT/'tools/vendor/python-fsb5/vorbis_headers.py').read_text(encoding='utf-8')
    tree = ast.parse(source)
    if len(tree.body) != 1 or not isinstance(tree.body[0], ast.Assign):
        raise ValueError('Unexpected setup table syntax')
    table = ast.literal_eval(tree.body[0].value)
    if not isinstance(table, dict) or not all(isinstance(k, int) and isinstance(v, bytes) for k, v in table.items()):
        raise ValueError('Invalid Vorbis setup table')
    return table


def crc_table():
    table = []
    for value in range(256):
        crc = value << 24
        for _ in range(8):
            crc = ((crc << 1) ^ (0x04c11db7 if crc & 0x80000000 else 0)) & 0xffffffff
        table.append(crc)
    return table


CRC = crc_table()


def ogg_page(packet, serial, sequence, granule, flags):
    laces = [255]*(len(packet)//255)+[len(packet) % 255]
    if len(laces) > 255:
        raise ValueError('Vorbis packet needs continued Ogg pages')
    page = bytearray(b'OggS'+struct.pack('<BBQIIIB', 0, flags, granule, serial, sequence, 0, len(laces))+bytes(laces)+packet)
    crc = 0
    for byte in page:
        crc = ((crc << 8) & 0xffffffff) ^ CRC[((crc >> 24) ^ byte) & 255]
    struct.pack_into('<I', page, 22, crc)
    return page


def ogg(sample, table):
    setup = table[sample['vorbis_crc32']]
    flags = mode_flags(setup, sample['channels'])
    identification = b'\x01vorbis'+struct.pack('<IBI3iBB', 0, sample['channels'], sample['sample_rate'], 0, 0, 0, 0xb8, 1)
    vendor = b'Epic Rust original audio recovery'
    comment = b'\x03vorbis'+struct.pack('<I', len(vendor))+vendor+struct.pack('<I', 0)+b'\x01'
    output = bytearray()
    serial = sample['vorbis_crc32'] or 1
    for i, packet in enumerate([identification, comment, setup]):
        output.extend(ogg_page(packet, serial, i, 0, 2 if i == 0 else 0))
    previous, granule = 0, 0
    for i, packet in enumerate(sample['packets']):
        bits = Bits(packet)
        if bits.read(1):
            raise ValueError('Expected Vorbis audio packet')
        mode = bits.read((len(flags)-1).bit_length())
        if mode >= len(flags):
            raise ValueError('Invalid Vorbis packet mode')
        block = 2048 if flags[mode] else 256
        if previous:
            granule += (previous+block)//4
        previous = block
        final = i == len(sample['packets'])-1
        if final and not granule-block <= sample['sample_count'] <= granule:
            raise ValueError('FSB sample length differs from Vorbis packet granules')
        position = sample['sample_count'] if final else granule
        output.extend(ogg_page(packet, serial, i+3, position, 4 if final else 0))
    return bytes(output)
