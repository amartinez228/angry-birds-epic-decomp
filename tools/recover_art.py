"""Convert selected Unity ETC textures and SmoothMoves atlas sprites to PNG.

Uses the MIT-licensed texture2ddecoder tool helper, never the game's native code.
Runtime remains Rust. See tools/vendor/texture2ddecoder/LICENSE.
"""
import ctypes
import json
from pathlib import Path
import struct
import zipfile
import zlib
from extract_unity import Reader

ROOT = Path(__file__).resolve().parents[1]


def png(path, width, height, rgba):
    def chunk(kind, data):
        return struct.pack(">I", len(data)) + kind + data + struct.pack(">I", zlib.crc32(kind + data))
    rows = b"".join(b"\0" + rgba[y * width * 4:(y + 1) * width * 4] for y in range(height))
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 6, 0, 0, 0))
                     + chunk(b"IDAT", zlib.compress(rows, 9)) + chunk(b"IEND", b""))


class Extractor:
    def __init__(self):
        self.inventory = json.loads((ROOT / "analysis/unity/inventory.json").read_text(encoding="utf-8"))["assets"]
        self.archives = {name: zipfile.ZipFile(ROOT / "original" / name)
                         for name in ("com.rovio.gold.apk", "main.4821.com.rovio.gold.obb")}
        self.library = ctypes.CDLL(str(ROOT / "analysis/unity/texture_decode.dll"))
        self.library.epic_decode_etc.argtypes = [ctypes.c_void_p, ctypes.c_long, ctypes.c_long, ctypes.c_int, ctypes.c_void_p]
        self.texture_cache = {}
        self.source_cache = {}

    def data(self, entry):
        key = (entry["archive"], entry["source"])
        if key not in self.source_cache:
            archive = self.archives[key[0]]
            if key[1] in archive.namelist():
                data = archive.read(key[1])
            else:
                chunks, index = [], 0
                while f"{key[1]}.split{index}" in archive.namelist():
                    chunks.append(archive.read(f"{key[1]}.split{index}"))
                    index += 1
                data = b"".join(chunks)
            self.source_cache[key] = data
        data = self.source_cache[key]
        return data[entry["offset"]:entry["offset"] + entry["size"]]

    def texture(self, entry):
        name = entry["name"]
        if name in self.texture_cache:
            return self.texture_cache[name]
        reader = Reader(self.data(entry))
        reader.string()
        width, height, _, fmt = reader.unpack("<4i")
        if not 0 < width <= 4096 or not 0 < height <= 4096:
            raise ValueError("Invalid texture dimensions")
        reader.read(40)  # mip count, flags, image count, dimension and sampling settings
        size = reader.integer()
        payload = reader.read(size)
        if fmt in (34, 45, 46, 47):
            block_size = 16 if fmt == 47 else 8
            required = ((width + 3) // 4) * ((height + 3) // 4) * block_size
            if len(payload) < required:
                raise ValueError("Truncated ETC texture")
            out = ctypes.create_string_buffer(width * height * 4)
            if not self.library.epic_decode_etc(payload, width, height, fmt, out):
                raise ValueError("Texture decoder refused data")
            bgra = out.raw
            rgba = bytearray(bgra)
            rgba[0::4], rgba[2::4] = bgra[2::4], bgra[0::4]
        elif fmt == 4:
            rgba = payload[:width * height * 4]
        else:
            raise ValueError(f"Unsupported texture format {fmt}")
        if len(rgba) != width * height * 4:
            raise ValueError("Invalid decoded image length")
        # Unity's texture coordinates have their origin at the bottom left.
        rgba = b"".join(rgba[y * width * 4:(y + 1) * width * 4] for y in reversed(range(height)))
        result = width, height, rgba
        self.texture_cache[name] = result
        return result


def main():
    ex = Extractor()
    textures = {entry["name"]: entry for entry in ex.inventory if entry["class_id"] == 28 and "name" in entry}
    catalog = json.loads((ROOT / "content/catalog.json").read_text(encoding="utf-8"))
    wanted = {hat["asset_id"] for hat in catalog["hats"]}
    sprite_sources = {}
    for entry in ex.inventory:
        if entry["class_id"] != 114 or not entry.get("name") or "Atlas" not in entry["name"]:
            continue
        atlas_name = entry["name"]
        texture_name = atlas_name + "_HR"
        if texture_name not in textures:
            continue
        try:
            reader = Reader(ex.data(entry), 28)
            if reader.string() != atlas_name:
                continue
            reader.read(12)  # material pointer
            count = reader.integer()
            if not 0 < count < 2000:
                continue
            rects = [reader.unpack("<4f") for _ in range(count)]
            guids = [reader.string() for _ in range(reader.integer())]
            sizes = [reader.unpack("<2f") for _ in range(reader.integer())]
            pivots = [reader.unpack("<2f") for _ in range(reader.integer())]
            names = [reader.string() for _ in range(reader.integer())]
            if not (len(guids) == len(sizes) == len(pivots) == len(names) == count):
                continue
            for name, rect in zip(names, rects):
                if name in wanted and name not in sprite_sources:
                    sprite_sources[name] = (textures[texture_name], rect)
        except (ValueError, UnicodeError, struct.error):
            continue
    extracted, missing = [], []
    for hat in catalog["hats"]:
        source = sprite_sources.get(hat["asset_id"])
        if source is None:
            missing.append(hat["id"])
            continue
        entry, (u, v, uw, vh) = source
        width, height, rgba = ex.texture(entry)
        x, y = round(u * width), round((1 - v - vh) * height)
        w, h = round(uw * width), round(vh * height)
        if not (0 <= x < x + w <= width and 0 <= y < y + h <= height):
            raise ValueError("Atlas rectangle outside texture")
        crop = b"".join(rgba[(row * width + x) * 4:(row * width + x + w) * 4] for row in range(y, y + h))
        png(ROOT / "assets/hats" / (hat["id"] + ".png"), w, h, crop)
        extracted.append({"skin_id": hat["id"], "asset_id": hat["asset_id"], "texture": entry["name"], "rect": [x, y, w, h]})
    for name in ("RedBird_01", "YellowBird_01", "WhiteBird_01", "BlackBird_01", "BlueBird_01"):
        if name in textures:
            w, h, rgba = ex.texture(textures[name])
            png(ROOT / "analysis/unity/previews" / (name + ".png"), w, h, rgba)
    (ROOT / "content/art-manifest.json").write_text(json.dumps({"extracted": extracted, "missing": missing}, indent=2), encoding="utf-8")
    if not missing:
        source = "// Generated by tools/recover_art.py. Hat indices match catalog_generated.rs.\n"
        source += "pub const HAT_IMAGES: [&[u8]; " + str(len(catalog['hats'])) + "] = [\n"
        source += "\n".join('include_bytes!("../../../assets/hats/' + hat['id'] + '.png"),' for hat in catalog['hats'])
        source += "\n];\n"
        (ROOT / "crates/epic-client/src/art_generated.rs").write_text(source, encoding="utf-8")
    print(f"Recovered {len(extracted)} hat images; missing {len(missing)}:", missing)


if __name__ == "__main__":
    main()
