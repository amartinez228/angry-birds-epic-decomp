"""Bind v23 method indices to the supplied x86 IL2CPP ELF's registration.

Read-only format- and range-checked analysis. The unique registration candidate
must contain a complete executable-pointer array before it is accepted.
"""
import argparse
import hashlib
from collections import defaultdict
import json
from pathlib import Path
import re
import struct
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def link():
    meta = (ROOT / "analysis/global-metadata.dat").read_bytes()
    if struct.unpack_from("<II", meta) != (0xFAB11BAF, 23):
        raise ValueError("Expected metadata v23")
    native_path = ROOT / "analysis/libil2cpp-x86.so"
    if not native_path.exists():
        with zipfile.ZipFile(ROOT / "original/com.rovio.gold.apk") as apk:
            native_path.write_bytes(apk.read("lib/x86/libil2cpp.so"))
    native = native_path.read_bytes()
    if native[:7] != b"\x7fELF\x01\x01\x01" or struct.unpack_from("<H", native, 18)[0] != 3:
        raise ValueError("Expected little-endian ELF32 i386")
    word = lambda data, at: struct.unpack_from("<I", data, at)[0]
    phoff, phsize, phcount = word(native, 28), struct.unpack_from("<H", native, 42)[0], struct.unpack_from("<H", native, 44)[0]
    segments = [struct.unpack_from("<8I", native, phoff + i * phsize) for i in range(phcount)]
    loads = [s for s in segments if s[0] == 1]

    def offset(address, size=1):
        for _, fileoff, virtual, _, filelen, _, _, _ in loads:
            if virtual <= address and address + size <= virtual + filelen:
                return fileoff + address - virtual
        raise ValueError(f"Address outside ELF file-backed segments: {address:#x}")

    def executable(address):
        return any(virtual <= address < virtual + filelen and flags & 1
                   for _, _, virtual, _, filelen, _, flags, _ in loads)

    strings_at, strings_size = struct.unpack_from("<II", meta, 24)

    def name(index):
        if index >= strings_size:
            raise ValueError("Metadata string index outside section")
        end = meta.index(b"\0", strings_at + index, strings_at + strings_size)
        return meta[strings_at + index:end].decode("utf-8")

    types_at, types_size = struct.unpack_from("<II", meta, 160)
    type_rows = list(range(types_at, types_at + types_size, 104))
    nested_at, nested_size = struct.unpack_from("<II", meta, 128)
    parents = {}
    for parent, at in enumerate(type_rows):
        start = struct.unpack_from("<i", meta, at + 64)[0]
        count = struct.unpack_from("<H", meta, at + 88)[0]
        if count and not 0 <= start <= start + count <= nested_size // 4:
            raise ValueError("Nested type range outside section")
        for index in range(start, start + count):
            child = word(meta, nested_at + index * 4)
            if child >= len(type_rows) or child in parents:
                raise ValueError("Invalid or multiply-owned nested type")
            parents[child] = parent

    def type_name(index, seen=()):
        if index in seen:
            raise ValueError("Cyclic nested type ownership")
        at = type_rows[index]
        own = name(word(meta, at))
        if index in parents:
            return type_name(parents[index], (*seen, index)) + "+" + own
        return ".".join(part for part in (name(word(meta, at + 4)), own) if part)

    types = [type_name(index) for index in range(len(type_rows))]
    methods_at, methods_size = struct.unpack_from("<II", meta, 48)
    parameters_at, parameters_size = struct.unpack_from("<II", meta, 88)
    rows = []
    for i, at in enumerate(range(methods_at, methods_at + methods_size, 56)):
        native_index = struct.unpack_from("<i", meta, at + 24)[0]
        parameter_start = struct.unpack_from("<i", meta, at + 12)[0]
        parameter_count = struct.unpack_from("<H", meta, at + 54)[0]
        if parameter_count and not 0 <= parameter_start <= parameter_start + parameter_count <= parameters_size // 16:
            raise ValueError("Method parameter range outside section")
        rows.append({"metadata_index": i, "native_index": native_index,
                     "class": types[word(meta, at + 4)], "method": name(word(meta, at)),
                     "parameter_count": parameter_count,
                     "parameters": [name(word(meta, parameters_at + j * 16)) for j in range(parameter_start, parameter_start + parameter_count)]})
    count = max(row["native_index"] for row in rows) + 1
    candidates = []
    for match in re.finditer(re.escape(struct.pack("<I", count)), native):
        at = match.start()
        if at % 4:
            continue
        try:
            table = offset(word(native, at + 4), count * 4)
            pointers = struct.unpack_from(f"<{count}I", native, table)
            if all(executable(p) for p in pointers if p):
                candidates.append((at, pointers))
        except (ValueError, struct.error):
            pass
    if len(candidates) != 1:
        raise ValueError(f"Expected unique verified method registration, found {len(candidates)}")
    registration_at, pointers = candidates[0]
    for row in rows:
        index = row["native_index"]
        address = pointers[index] if index >= 0 else 0
        row["address"] = address or None
        row["file_offset"] = offset(address) if address else None
    # IL2CPP v23 MetadataRegistration: eight 32-bit count/pointer pairs.
    # Adjacent fieldOffsets/typeDefinitionSizes counts both equal type count.
    # Validate all cross-table indices before publishing any generic binding.
    generic_count = word(native, registration_at + 16)
    generic_table_at = offset(word(native, registration_at + 20), generic_count * 4)
    generic_pointers = struct.unpack_from(f"<{generic_count}I", native, generic_table_at)
    if not generic_count or not all(executable(p) for p in generic_pointers if p):
        raise ValueError("Invalid generic method pointer table")
    invoker_count = word(native, registration_at + 24)
    metadata_candidates = []
    for match in re.finditer(re.escape(struct.pack("<I", len(type_rows))), native):
        at = match.start()
        if at < 40 or at % 4 or word(native, at + 8) != len(type_rows):
            continue
        reg = at - 40
        pairs = [struct.unpack_from("<II", native, reg + i * 8) for i in range(8)]
        try:
            for index, width in [(1, 4), (2, 12), (3, 4), (4, 12), (5, 4), (6, 4)]:
                n, pointer = pairs[index]
                if not 0 < n < 1_000_000:
                    raise ValueError("Invalid metadata registration count")
                offset(pointer, n * width)
            metadata_candidates.append((reg, pairs))
        except ValueError:
            continue
    if len(metadata_candidates) != 1:
        raise ValueError(f"Expected one metadata registration, found {len(metadata_candidates)}")
    metadata_registration_at, pairs = metadata_candidates[0]
    inst_count, inst_pointer = pairs[1]
    method_table_count, method_table_pointer = pairs[2]
    spec_count, spec_pointer = pairs[4]
    insts_at = offset(inst_pointer, inst_count * 4)
    method_table_at = offset(method_table_pointer, method_table_count * 12)
    specs_at = offset(spec_pointer, spec_count * 12)
    primitives = {1: 'void', 2: 'bool', 3: 'char', 4: 'sbyte', 5: 'byte', 6: 'short', 7: 'ushort',
                  8: 'int', 9: 'uint', 10: 'long', 11: 'ulong', 12: 'float', 13: 'double',
                  14: 'string', 24: 'IntPtr', 25: 'UIntPtr', 28: 'object'}

    def native_type(pointer):
        at = offset(pointer, 8)
        value, flags = struct.unpack_from("<II", native, at)
        kind = (flags >> 16) & 255
        if kind in primitives:
            return primitives[kind]
        if kind in (0x11, 0x12) and value < len(types):
            return types[value]
        return f"unresolved-type@{pointer:#x}(kind={kind:#x},data={value:#x})"

    def instance(index):
        if index == -1:
            return []
        if not 0 <= index < inst_count:
            raise ValueError("Generic instance index outside table")
        at = offset(word(native, insts_at + index * 4), 8)
        argc, argv = struct.unpack_from("<II", native, at)
        if not 0 < argc <= 64:
            raise ValueError("Invalid generic instance argument count")
        at = offset(argv, argc * 4)
        return [native_type(word(native, at + i * 4)) for i in range(argc)]

    definition_count = len(rows)
    for i in range(method_table_count):
        spec_index, pointer_index, invoker_index = struct.unpack_from("<iii", native, method_table_at + i * 12)
        if not (0 <= spec_index < spec_count and 0 <= pointer_index < generic_count and -1 <= invoker_index < invoker_count):
            raise ValueError("Generic method indices contradict registrations")
        definition, class_inst, method_inst = struct.unpack_from("<iii", native, specs_at + spec_index * 12)
        if not 0 <= definition < definition_count:
            raise ValueError("Generic method spec selects an invalid method definition")
        args, method_args = instance(class_inst), instance(method_inst)
        original = rows[definition]
        row = dict(original)
        row.update({"analysis_id": f"{definition}-generic-{i}", "generic_spec_index": spec_index,
                    "generic_pointer_index": pointer_index, "generic_class_arguments": args,
                    "generic_method_arguments": method_args, "declaring_class": original["class"],
                    "class": original["class"] + ("<" + ", ".join(args) + ">" if args else ""),
                    "native_index": None})
        address = generic_pointers[pointer_index]
        row["address"] = address or None
        row["file_offset"] = offset(address) if address else None
        rows.append(row)
    ordered = sorted(set(p for p in (*pointers, *generic_pointers) if p))
    next_address = dict(zip(ordered, ordered[1:]))
    for row in rows:
        row["next_method_address"] = next_address.get(row["address"])
    dynamic = next((segment for segment in segments if segment[0] == 2), None)
    got = None
    if dynamic:
        for at in range(dynamic[1], dynamic[1] + dynamic[4], 8):
            tag, value = struct.unpack_from("<II", native, at)
            if tag == 3:  # DT_PLTGOT
                got = value
                break
    usages_count, usages_pointer = pairs[7]
    usages_at = offset(usages_pointer, usages_count * 4)
    usage_pairs_at, usage_pairs_size = struct.unpack_from("<II", meta, 200)
    literal_records_at, literal_records_size = struct.unpack_from("<II", meta, 8)
    literal_data_at, literal_data_size = struct.unpack_from("<II", meta, 16)
    literals = {}
    for at in range(usage_pairs_at, usage_pairs_at + usage_pairs_size, 8):
        destination, encoded = struct.unpack_from("<II", meta, at)
        if encoded >> 29 != 5:
            continue
        index = encoded & 0x1fffffff
        if destination >= usages_count or index >= literal_records_size // 8:
            raise ValueError("String usage index outside table")
        length, start = struct.unpack_from("<II", meta, literal_records_at + index * 8)
        if start + length > literal_data_size:
            raise ValueError("Literal range outside metadata")
        text = meta[literal_data_at + start:literal_data_at + start + length].decode("utf-8")
        address = word(native, usages_at + destination * 4)
        if address in literals and literals[address] != text:
            raise ValueError("Conflicting string literal usage slot")
        literals[address] = text
    report = {"format": "IL2CPP v23 global method-pointer table / ELF32 i386",
              "metadata_sha256": hashlib.sha256(meta).hexdigest(),
              "native_sha256": hashlib.sha256(native).hexdigest(),
              "registration_file_offset": registration_at, "native_pointer_count": count,
              "metadata_registration_file_offset": metadata_registration_at,
              "generic_method_pointer_count": generic_count, "generic_method_spec_count": spec_count,
              "generic_method_function_count": method_table_count,
              "global_offset_table": got,
              "string_literal_slots": {str(address): value for address, value in literals.items()},
              "methods": rows,
              "limitations": ["Static address binding, not decompiled source or observed runtime execution.",
                              "Next method start is a conservative disassembly boundary, not proof of a complete function extent."]}
    (ROOT / "analysis/native-methods.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    return rows, native_path, got, literals


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("query", nargs="*", default=[])
    parser.add_argument("--objdump", default="C:/msys64/ucrt64/bin/objdump.exe")
    args = parser.parse_args()
    rows, path, got, literals = link()
    labels = defaultdict(list)
    for row in rows:
        if row["address"]:
            labels[row["address"]].append(row["class"] + "::" + row["method"])
    queries = args.query or ["GenerateWaveWeighted"]
    matches = [row for row in rows if any(query.lower() in (row["class"] + "::" + row["method"]).lower() for query in queries) and row["address"]]
    for row in matches:
        start = row["address"]
        end = min(row["next_method_address"] or start + 32768, start + 32768)
        result = subprocess.run([args.objdump, "-d", "-M", "intel", "--no-show-raw-insn", f"--start-address={start}", f"--stop-address={end}", str(path)],
                                check=True, capture_output=True, text=True)
        lines = []
        for line in result.stdout.splitlines():
            line = re.sub(r"\s*<[^>]*>", "", line)
            call = re.search(r"\b(?:call|jmp)\s+([0-9a-f]+)", line)
            if call and int(call[1], 16) in labels:
                aliases = labels[int(call[1], 16)]
                line += "  ; " + ("shared address: " if len(aliases) > 1 else "") + " | ".join(aliases[:3])
                if len(aliases) > 3:
                    line += f" | +{len(aliases) - 3} other aliases"
            reference = re.search(r"\[ebx([+-])0x([0-9a-f]+)\]", line)
            if reference and got is not None:
                delta = int(reference[2], 16) * (1 if reference[1] == '+' else -1)
                if got + delta in literals:
                    literal = literals[got + delta]
                    line += "  ; literal " + json.dumps(literal[:160], ensure_ascii=False)
            lines.append(line)
        destination = ROOT / "analysis/native" / (row.get('analysis_id', str(row['metadata_index'])) + ".asm")
        destination.parent.mkdir(exist_ok=True)
        destination.write_text("\n".join(lines), encoding="utf-8")
        print(f"{row['class']}::{row['method']} at {start:#x}, {end - start} bytes -> {destination.name}")


if __name__ == "__main__":
    main()
