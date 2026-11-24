"""Inspect declared native fields of the type owning selected linked methods.

Reads verified v23 metadata-registration field-offset/type tables. This is
static layout evidence, not decompiled behavior or execution of target code.
"""
import argparse
import hashlib
import json
import struct

from recover_content import ROOT


def layouts(method_indices):
    metadata = (ROOT / 'analysis/global-metadata.dat').read_bytes()
    native = (ROOT / 'analysis/libil2cpp-x86.so').read_bytes()
    linked = json.loads((ROOT / 'analysis/native-methods.json').read_text(encoding='utf-8'))
    for key, data in [('metadata_sha256', metadata), ('native_sha256', native)]:
        if hashlib.sha256(data).hexdigest() != linked[key]:
            raise ValueError('Linked registration belongs to different source bytes')
    if struct.unpack_from('<II', metadata) != (0xFAB11BAF, 23):
        raise ValueError('Expected metadata v23')
    phoff = struct.unpack_from('<I', native, 28)[0]
    phsize, phcount = struct.unpack_from('<HH', native, 42)
    segments = [struct.unpack_from('<8I', native, phoff + index * phsize) for index in range(phcount)]

    def offset(address, size):
        for kind, start, virtual, _, length, _, _, _ in segments:
            if kind == 1 and virtual <= address and address + size <= virtual + length:
                return start + address - virtual
        raise ValueError('Native field table reference outside file-backed segment')

    strings, string_size = struct.unpack_from('<II', metadata, 24)
    types, type_size = struct.unpack_from('<II', metadata, 160)
    fields, field_size = struct.unpack_from('<II', metadata, 96)
    methods, method_size = struct.unpack_from('<II', metadata, 48)
    registration = linked['metadata_registration_file_offset']
    field_count, field_pointer = struct.unpack_from('<II', native, registration + 40)
    native_type_count, native_type_pointer = struct.unpack_from('<II', native, registration + 24)
    if field_count != type_size // 104:
        raise ValueError('Field offset table does not cover metadata types')
    field_table = offset(field_pointer, field_count * 4)
    native_types = offset(native_type_pointer, native_type_count * 4)

    def name(index):
        if not 0 <= index < string_size:
            raise ValueError('Field name outside metadata strings')
        end = metadata.index(b'\0', strings + index, strings + string_size)
        return metadata[strings + index:end].decode('utf-8')

    result = []
    for method_index in method_indices:
        if not 0 <= method_index < method_size // 56:
            raise ValueError('Method index outside metadata')
        type_index = struct.unpack_from('<I', metadata, methods + method_index * 56 + 4)[0]
        if type_index >= field_count:
            raise ValueError('Declaring type outside field table')
        row = types + type_index * 104
        start = struct.unpack_from('<i', metadata, row + 48)[0]
        count = struct.unpack_from('<H', metadata, row + 84)[0]
        if not 0 <= start <= start + count <= field_size // 16:
            raise ValueError('Declared fields outside metadata')
        pointer = struct.unpack_from('<I', native, field_table + type_index * 4)[0]
        native_offsets = offset(pointer, count * 4) if count else 0
        declared = []
        for index in range(count):
            name_index, native_type = struct.unpack_from('<II', metadata, fields + (start + index) * 16)
            if native_type >= native_type_count:
                raise ValueError('Field type index outside native table')
            type_pointer = struct.unpack_from('<I', native, native_types + native_type * 4)[0]
            flags = struct.unpack_from('<I', native, offset(type_pointer, 8) + 4)[0]
            declared.append(dict(metadata_index=start+index, name=name(name_index),
                                 offset=struct.unpack_from('<i', native, native_offsets + index * 4)[0],
                                 attributes=flags & 0xffff, static=bool(flags & 0x10),
                                 type_kind=(flags >> 16) & 255))
        method = next(item for item in linked['methods'] if item['metadata_index'] == method_index)
        result.append(dict(method_index=method_index, declaring_type_index=type_index,
                           declaring_type=method['class'], fields=declared))
    return dict(metadata_sha256=linked['metadata_sha256'], native_sha256=linked['native_sha256'],
                layouts=result, limitations=['Declared fields only; inherited fields remain in base layouts. Static offsets refer to static storage, not the object instance.'])


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('methods', nargs='+', type=int)
    args = parser.parse_args()
    report = layouts(args.methods)
    path = ROOT / 'analysis/native' / ('fields-' + '-'.join(map(str, args.methods)) + '.json')
    path.write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(path)
