"""Read the supplied XAPK/IL2CPP v23 metadata without executing the game.

REA's section-boundary approach is used here with the older v23 record layout.
Layout reference: Perfare/Il2CppDumper, Il2Cpp/MetadataClass.cs.
No native addresses or recovered names establish gameplay semantics by themselves.
"""
import hashlib
import json
from pathlib import Path
import re
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def inspect():
    path = ROOT / "analysis/global-metadata.dat"
    data = path.read_bytes()
    u32 = lambda at: struct.unpack_from("<I", data, at)[0]
    i32 = lambda at: struct.unpack_from("<i", data, at)[0]
    if (u32(0), u32(4)) != (0xFAB11BAF, 23):
        raise ValueError("This inspector requires IL2CPP metadata version 23")

    def section(index, stride=1):
        offset, size = struct.unpack_from("<II", data, 8 + index * 8)
        if offset + size > len(data) or size % stride:
            raise ValueError(f"Invalid section {index}")
        return offset, size // stride

    strings_at, strings_size = section(2)

    def name(index):
        if index >= strings_size:
            raise ValueError("String index outside metadata string section")
        end = data.index(b"\0", strings_at + index, strings_at + strings_size)
        return data[strings_at + index:end].decode("utf-8")

    types_at, type_count = section(19, 104)
    methods_at, method_count = section(5, 56)
    fields_at, field_count = section(11, 16)
    params_at, param_count = section(10, 16)
    classes = []
    for index in range(type_count):
        at = types_at + index * 104
        type_name, namespace = name(u32(at)), name(u32(at + 4))
        if not re.search(r"(ClassItem|ShopOffer|Inventory|Loot|Battle|Resource|Balancing|Bird|Pig)", type_name):
            continue
        field_start, method_start = i32(at + 48), i32(at + 52)
        methods_len, _, fields_len = struct.unpack_from("<HHH", data, at + 80)
        if fields_len == 0:
            field_start = 0
        if methods_len == 0:
            method_start = 0
        if not (0 <= field_start <= field_count and field_start + fields_len <= field_count):
            raise ValueError("Invalid field range")
        if not (0 <= method_start <= method_count and method_start + methods_len <= method_count):
            raise ValueError("Invalid method range")
        fields = [name(u32(fields_at + j * 16)) for j in range(field_start, field_start + fields_len)]
        methods = []
        for j in range(method_start, method_start + methods_len):
            ma = methods_at + j * 56
            ps = i32(ma + 12)
            pc = struct.unpack_from("<H", data, ma + 54)[0]
            if pc and not (0 <= ps and ps + pc <= param_count):
                raise ValueError("Invalid parameter range")
            methods.append({"name": name(u32(ma)), "metadata_index": j,
                            "native_method_index": i32(ma + 24),
                            "parameters": [name(u32(params_at + k * 16)) for k in range(ps, ps + pc)]})
        classes.append({"name": type_name, "namespace": namespace, "fields": fields, "methods": methods})

    literals_at, literal_count = section(0, 8)
    literal_data_at, literal_size = section(1)
    literals = []
    for index in range(literal_count):
        length, start = struct.unpack_from("<II", data, literals_at + index * 8)
        if start + length > literal_size:
            raise ValueError("Invalid literal range")
        text = data[literal_data_at + start:literal_data_at + start + length].decode("utf-8", errors="replace")
        if re.search(r"(bird_class|lucky_coin|gold_coin|resource_gold|shopoffer|balancing|class_knight|class_paladin)", text, re.I):
            literals.append({"index": index, "value": text})
    report = {"metadata_version": 23, "sha256": hashlib.sha256(data).hexdigest(),
              "type_count": type_count, "method_count": method_count,
              "classes": classes, "selected_literals": literals,
              "limitations": ["Static names and parameters only; method bodies are native code.",
                              "No reward amounts, item prices, or combat formulas inferred from names.",
                              "REA CLI could not run: Node.js is absent. REA's v24+ decoder does not accept v23."]}
    (ROOT / "analysis/metadata-report.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    with zipfile.ZipFile(ROOT / "original/com.rovio.gold.apk") as apk:
        asset = b"".join(apk.read(f"assets/bin/Data/sharedassets0.assets.split{i}") for i in range(19))
    matches = [m.group().decode("ascii", errors="replace") for m in re.finditer(rb"[\x20-\x7e]{6,}", asset)
               if re.search(rb"balanc|bird_class|lucky_coin|class_knight|class_paladin", m.group(), re.I)]
    (ROOT / "analysis/asset-markers.json").write_text(json.dumps(matches, indent=2), encoding="utf-8")
    print(f"Validated {type_count} types, {method_count} methods; selected {len(classes)} classes and {len(literals)} literals.")
    for entry in classes:
        if entry["name"] in ("ClassItemBalancingData", "BasicShopOfferBalancingData", "InventoryService", "LootTableBalancingData"):
            print(entry["namespace"], entry["name"], entry["fields"])
    print("Selected asset markers:", matches[:15])


if __name__ == "__main__":
    inspect()
