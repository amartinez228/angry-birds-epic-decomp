"""Inventory Unity 5.6 format-17 assets, extracting original TextAssets locally.

Only the stripped format in the supplied game is supported. Unsupported layouts
are recorded, not guessed. Object names are evidence, not gameplay formulas.
"""
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import struct
import zipfile

ROOT = Path(__file__).resolve().parents[1]
KINDS = {1: "GameObject", 21: "Material", 28: "Texture2D", 43: "Mesh",
         48: "Shader", 49: "TextAsset", 74: "AnimationClip", 83: "AudioClip",
         114: "MonoBehaviour", 115: "MonoScript", 142: "AssetBundle", 213: "Sprite"}
NAMED = {21, 28, 43, 48, 49, 74, 83, 115, 142, 213}


class Reader:
    def __init__(self, data, position=0):
        self.data, self.pos = data, position

    def read(self, size):
        if size < 0 or self.pos + size > len(self.data):
            raise ValueError("Read outside object")
        result = self.data[self.pos:self.pos + size]
        self.pos += size
        return result

    def unpack(self, fmt):
        return struct.unpack(fmt, self.read(struct.calcsize(fmt)))

    def integer(self):
        return self.unpack("<i")[0]

    def align(self):
        self.pos = (self.pos + 3) & ~3

    def string(self):
        count = self.integer()
        if count > 1_000_000:
            raise ValueError("Oversized string")
        result = self.read(count).decode("utf-8")
        self.align()
        return result


def objects(data):
    if len(data) < 32:
        return []
    metadata_size, size, version, data_offset = struct.unpack_from(">4I", data)
    if version != 17 or data[16] != 0:
        raise ValueError(f"Unsupported serialized layout {version}/{data[16]}")
    if size != len(data) or data_offset > size or metadata_size > size:
        raise ValueError("Serialized file size mismatch")
    reader = Reader(data, 20)
    end = data.index(b"\0", reader.pos)
    unity_version = data[reader.pos:end].decode()
    reader.pos = end + 1
    platform = reader.integer()
    has_tree = reader.read(1)[0]
    type_count = reader.integer()
    if has_tree or not 0 <= type_count < 10000:
        raise ValueError("Requires stripped type metadata")
    types = []
    for _ in range(type_count):
        class_id = reader.integer()
        reader.read(3)  # stripped flag, script type index
        if class_id == 114:
            reader.read(16)  # script GUID
        reader.read(16)  # type hash
        types.append(class_id)
    count = reader.integer()
    if not 0 <= count < 1_000_000:
        raise ValueError("Invalid object count")
    output = []
    for _ in range(count):
        reader.align()
        path_id, start, length, type_id = reader.unpack("<qIIi")
        if not 0 <= type_id < len(types) or data_offset + start + length > len(data):
            raise ValueError("Invalid object range/type")
        class_id = types[type_id]
        output.append((path_id, class_id, data_offset + start, length))
    if reader.pos > data_offset:
        raise ValueError("Object table overlaps payload")
    return output


def archive_members(archive):
    names = set(archive.namelist())
    for name in sorted(names):
        if not name.startswith("assets/bin/Data/"):
            continue
        if ".split" in name:
            if not name.endswith(".split0"):
                continue
            base = name[:-7]
            parts = []
            index = 0
            while f"{base}.split{index}" in names:
                parts.append(archive.read(f"{base}.split{index}"))
                index += 1
            yield base, b"".join(parts)
        elif re.search(r"/(?:[0-9a-f]{32}|level\d+|sharedassets\d+\.assets|globalgamemanagers(?:\.assets)?|resources\.assets|unity default resources|unity_builtin_extra)$", name):
            yield name, archive.read(name)


def main():
    output = ROOT / "analysis/unity"
    (output / "text").mkdir(parents=True, exist_ok=True)
    inventory, failures, totals = [], [], Counter()
    for archive_name in ("com.rovio.gold.apk", "main.4821.com.rovio.gold.obb"):
        with zipfile.ZipFile(ROOT / "original" / archive_name) as archive:
            for source, data in archive_members(archive):
                try:
                    records = objects(data)
                except (ValueError, UnicodeError, struct.error) as error:
                    failures.append({"archive": archive_name, "path": source, "error": str(error)})
                    continue
                for path_id, class_id, at, length in records:
                    totals[KINDS.get(class_id, str(class_id))] += 1
                    if class_id not in NAMED and class_id != 114:
                        continue
                    record = {"archive": archive_name, "source": source, "path_id": path_id,
                              "class_id": class_id, "kind": KINDS.get(class_id), "offset": at, "size": length}
                    reader = Reader(data[at:at + length])
                    try:
                        if class_id == 114:
                            reader.read(28)  # GameObject pointer, enabled/alignment, MonoScript pointer
                        record["name"] = reader.string()
                        if class_id == 49:
                            payload = reader.read(reader.integer())
                            digest = hashlib.sha256(payload).hexdigest()
                            filename = digest + ".bytes"
                            (output / "text" / filename).write_bytes(payload)
                            record.update({"payload_sha256": digest, "payload_file": "text/" + filename,
                                           "payload_size": len(payload)})
                    except (ValueError, UnicodeError, struct.error) as error:
                        record["name_error"] = str(error)
                    inventory.append(record)
    report = {"format": "Unity serialized format 17, little endian, stripped type metadata",
              "objects_by_kind": dict(totals), "assets": inventory, "unsupported_files": failures}
    (output / "inventory.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
    print("Object counts:", dict(totals))
    print("Named records:", len(inventory), "unsupported files:", len(failures))
    for entry in inventory:
        if entry["class_id"] == 49:
            print("TEXT", entry.get("name"), entry.get("payload_size"))
    print("First unsupported:", failures[:5])


if __name__ == "__main__":
    main()
