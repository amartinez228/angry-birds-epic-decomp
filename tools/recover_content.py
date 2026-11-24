"""Decode the game's bundled protobuf container without executing target code."""
from collections import Counter
import gzip
import hashlib
import json
from pathlib import Path
import struct
import re

ROOT = Path(__file__).resolve().parents[1]


def varint(data, at):
    value = 0
    for shift in range(0, 70, 7):
        if at >= len(data):
            raise ValueError("Truncated protobuf varint")
        byte = data[at]
        at += 1
        value |= (byte & 127) << shift
        if not byte & 128:
            return value, at
    raise ValueError("Oversized protobuf varint")


def fields(data):
    at = 0
    result = []
    while at < len(data):
        key, at = varint(data, at)
        number, kind = key >> 3, key & 7
        if number == 0:
            raise ValueError("Zero protobuf field number")
        if kind == 0:
            value, at = varint(data, at)
        elif kind in (1, 5):
            width = 8 if kind == 1 else 4
            if at + width > len(data):
                raise ValueError("Truncated fixed protobuf field")
            value = data[at:at + width]
            at += width
        elif kind == 2:
            length, at = varint(data, at)
            if at + length > len(data):
                raise ValueError("Truncated protobuf bytes")
            value = data[at:at + length]
            at += length
        else:
            raise ValueError(f"Unsupported wire kind {kind}")
        result.append((number, kind, value))
    return result


def one(data, number, default=None):
    found = [value for field, _, value in fields(data) if field == number]
    if len(found) > 1:
        raise ValueError(f"Expected singular field {number}")
    return found[0] if found else default


def signed_integer(row, field, default=0):
    value = one(row, field, default)
    if not isinstance(value, int):
        raise ValueError("Expected signed protobuf integer")
    if value >= (1 << 63):
        value -= 1 << 64
    if not -(1 << 31) <= value < (1 << 31):
        raise ValueError("Signed protobuf integer outside int32 range")
    return value


def describe(data, depth=0):
    output = []
    for number, kind, value in fields(data):
        item = {"field": number, "wire": kind}
        if isinstance(value, int):
            item["value"] = value
        elif kind == 5:
            item["float"] = struct.unpack("<f", value)[0]
            item["hex"] = value.hex()
        else:
            try:
                text = value.decode("utf-8")
                if any(ord(c) < 32 and c not in '\r\n\t' for c in text):
                    raise ValueError("Not display text")
                item["text"] = text
            except (UnicodeError, ValueError):
                if kind == 2 and depth < 8:
                    try:
                        item["message"] = describe(value, depth + 1)
                    except ValueError:
                        item["hex"] = value.hex()
                else:
                    item["hex"] = value.hex()
        output.append(item)
    return output


def load_tables():
    unity = ROOT / "analysis/unity"
    inventory = json.loads((unity / "inventory.json").read_text(encoding="utf-8"))
    asset = next(x for x in inventory["assets"] if x.get("name") == "SerializedBalancingDataContainer")
    data = gzip.decompress((unity / asset["payload_file"]).read_bytes())
    tables = {}
    for number, kind, entry in fields(data):
        if number == 2 and kind == 2:  # container version
            continue
        if number != 1 or kind != 2:
            raise ValueError("Unexpected balancing container shape")
        name = one(entry, 1).decode("utf-8").rsplit('.', 1)[-1]
        payload = one(entry, 2)
        if name in tables:
            raise ValueError("Duplicate balancing table")
        payload_fields = fields(payload)
        if any(field != 1 or wire != 2 for field, wire, _ in payload_fields):
            raise ValueError("Unexpected table-list shape")
        tables[name] = [value for _, _, value in payload_fields]
    return tables, asset


def export_catalog(tables):
    """Field mapping matches the metadata property declarations and wire values.

    Prices are intentional reconstruction overrides. Native skill execution is
    not recovered by decoding its configuration; preserve templates/parameters.
    """
    text = lambda row, field: one(row, field, b"").decode("utf-8")
    number = lambda row, field: struct.unpack("<f", one(row, field, b"\0" * 4))[0]
    unity = ROOT / "analysis/unity"
    inventory = json.loads((unity / "inventory.json").read_text(encoding="utf-8"))
    asset = next(x for x in inventory["assets"] if x.get("name") == "EnglishLocaBalancingData")
    localization = {text(row, 1): text(row, 2) for _, _, row in fields((unity / asset["payload_file"]).read_bytes())}
    newer = next(x for x in inventory["assets"] if x.get("name") == "English" and x.get("payload_size", 0) > 10000)
    language_data = gzip.decompress((unity / newer["payload_file"]).read_bytes())
    localization.update({text(row, 1): text(row, 2) for field, kind, row in fields(language_data) if field == 2 and kind == 2})
    (ROOT / "content").mkdir(exist_ok=True)
    (ROOT / "content/localization.en.json").write_text(json.dumps(localization, ensure_ascii=False, indent=2), encoding="utf-8")
    classes = {text(row, 1): row for row in tables["ClassItemBalancingData"]}
    skill_rows = {text(row, 1): row for row in tables["SkillBalancingData"]}
    bird_ids = ["bird_red", "bird_yellow", "bird_white", "bird_black", "bird_blue"]

    def clean(value):
        return re.sub(r"\[(?:[0-9a-fA-F]{6}|-)\]", "", value)

    def bird_for(class_id, seen=()):
        if class_id in seen:
            raise ValueError("Cyclic replacement class")
        row = classes[class_id]
        bird = text(row, 7)
        if bird in bird_ids:
            return bird_ids.index(bird)
        return bird_for(text(row, 11), (*seen, class_id))

    skills, hats, missing_names = [], [], []
    skill_indices = {}

    def skill_for(skill_id):
        if skill_id in skill_indices:
            return skill_indices[skill_id]
        row = skill_rows[skill_id]
        parameters = {}
        for field, kind, payload in fields(row):
            if field == 4 and kind == 2:
                key, value = text(payload, 1), number(payload, 2)
                if key in parameters:
                    raise ValueError("Duplicate skill parameter")
                parameters[key] = value
        index = len(skills)
        skill_indices[skill_id] = index
        skills.append({"id": skill_id, "name": clean(localization.get(text(row, 3) + "_name", text(row, 2))),
                       "description": clean(localization.get(text(row, 3) + "_desc", "")),
                       "template": text(row, 5), "duration": signed_integer(row, 6), "parameters": parameters,
                       "target_type": one(row, 7, 0), "targeting": one(row, 9, 0),
                       "target_self": bool(one(row, 11, 0))})
        return index

    starters = ["skin_knight", "skin_mage", "skin_cleric", "skin_pirate", "skin_tricksters"]
    for row in tables["ClassSkinBalancingData"]:
        skin_id, class_id = text(row, 1), text(row, 2)
        class_row = classes[class_id]
        skill_ids = [value.decode() for field, kind, value in fields(class_row) if field == 6 and kind == 2]
        if len(skill_ids) != 2:
            raise ValueError("Expected attack and support skill for player class")
        key = text(row, 4) + "_name"
        name = localization.get(key)
        if name is None:
            missing_names.append(key)
            name = text(row, 3).replace("Headgear_", "").replace("_", " ")
        hp, damage = number(row, 6), number(row, 7)
        price = 0 if skin_id in starters else int(100 + max(hp, damage) * 5)
        hats.append({"id": skin_id, "name": clean(name), "class_id": class_id,
                     "asset_id": text(row, 3), "bird": bird_for(class_id), "price": price,
                     "bonus_hp_percent": hp, "bonus_damage_percent": damage,
                     "attack": skill_for(skill_ids[0]), "support": skill_for(skill_ids[1]),
                     "passive_skill_id": text(row, 11)})
    if len(set(h["id"] for h in hats)) != len(hats):
        raise ValueError("Duplicate hat IDs")
    for skill_id in skill_rows:
        skill_for(skill_id)
    result = {"source_container_sha256": hashlib.sha256((unity / "balancing.pb").read_bytes()).hexdigest(),
              "price_policy": "Gold-only overrides: starting classes free; others 100 + 5 * max(skin bonus percentages)",
              "hats": hats, "skills": skills, "missing_localization_keys": missing_names}
    content = ROOT / "content"
    content.mkdir(exist_ok=True)
    (content / "catalog.json").write_text(json.dumps(result, indent=2, ensure_ascii=False), encoding="utf-8")
    quote = lambda value: json.dumps(value, ensure_ascii=False)
    source = ["// Generated by tools/recover_content.py from the supplied game. Do not edit.",
              "// Prices are modified; skill behavior implementation is separate from configuration.",
              f"pub static SKILLS: [SkillDefinition; {len(skills)}] = ["]
    for skill in skills:
        parameters = ", ".join(f"({quote(k)}, f32::from_bits(0x{struct.unpack('<I', struct.pack('<f', v))[0]:08x}))" for k, v in skill["parameters"].items())
        source.append("SkillDefinition { " + f"id: {quote(skill['id'])}, name: {quote(skill['name'])}, template: {quote(skill['template'])}, duration: {skill['duration']}, parameters: &[{parameters}], target_type: {skill['target_type']}, targeting: {skill['targeting']}, target_self: {str(skill['target_self']).lower()}" + " },")
    source.extend(["];", f"pub const HATS: [Hat; {len(hats)}] = ["])
    for hat in hats:
        source.append("Hat { " + f"id: {quote(hat['id'])}, name: {quote(hat['name'])}, bird: {hat['bird']}, price: {hat['price']}, "
                      + f"class_id: {quote(hat['class_id'])}, asset_id: {quote(hat['asset_id'])}, bonus_hp_percent: {hat['bonus_hp_percent']!r}, "
                      + f"bonus_damage_percent: {hat['bonus_damage_percent']!r}, attack: {hat['attack']}, support: {hat['support']}, passive_skill_id: {quote(hat['passive_skill_id'])}" + " },")
    source.extend(["];", "pub const STARTER_HATS: [usize; 5] = [" + ",".join(str(next(i for i, h in enumerate(hats) if h['id'] == skin_id)) for skin_id in starters) + "];"])
    source.append("pub const RAGE_SKILLS: [usize; 5] = [" + ",".join(str(skill_indices[text(next(row for row in tables['BirdBalancingData'] if text(row, 1) == bird_id), 10)]) for bird_id in bird_ids) + "];")
    (ROOT / "crates/epic-core/src/catalog_generated.rs").write_text("\n".join(source) + "\n", encoding="utf-8")
    print(f"Exported {len(hats)} hats, {len(set(h['class_id'] for h in hats))} classes, {len(skills)} skills. Missing localized names: {missing_names}")
    return result


def export_campaign(tables, catalog):
    text = lambda row, field: one(row, field, b"").decode("utf-8")
    repeated = lambda row, field: [value for number, kind, value in fields(row) if number == field and kind == 2]
    floating = lambda row, field, default=0.: struct.unpack("<f", one(row, field, struct.pack("<f", default)))[0]
    localization = json.loads((ROOT / "content/localization.en.json").read_text(encoding="utf-8"))
    battle_rows = {text(row, 1): row for row in tables["BattleBalancingData"]}
    participant_rows = {text(row, 1): row for row in tables["BattleParticipantTableBalancingData"]}
    pig_rows = {text(row, 1): row for row in tables["PigBalancingData"]}
    skills = {skill["id"]: index for index, skill in enumerate(catalog["skills"])}
    pigs, pig_indices, encounters = [], {}, []

    def pig_for(pig_id):
        if pig_id in pig_indices:
            return pig_indices[pig_id]
        row = pig_rows[pig_id]
        index = len(pigs)
        pig_indices[pig_id] = index
        skill_ids = [value.decode() for value in repeated(row, 9)]
        combos = [{"weight": floating(combo, 1),
                   "skills": [skills[name.decode()] for name in repeated(combo, 2)]}
                  for combo in repeated(row, 10)]
        if any(combo['weight'] < 0 or not combo['skills'] for combo in combos):
            raise ValueError("Invalid pig AI combo")
        pigs.append({"id": pig_id, "name": localization.get(text(row, 3) + "_name", pig_id),
                     "asset_id": text(row, 2), "inventory_id": text(row, 4),
                     "base_health": one(row, 5, 0), "base_attack": one(row, 6, 0),
                     "per_level_health": one(row, 7, 0), "per_level_attack": one(row, 8, 0),
                     "skills": [skills[name] for name in skill_ids], "combos": combos, "passive_skill_id": text(row, 16),
                     "size_type": one(row, 11, 0), "strength": one(row, 15, 0)})
        return index

    for hotspot in tables["HotspotBalancingData"]:
        hotspot_id = text(hotspot, 1)
        if not re.match(r"^hotspot_\d+(?:_\d+)?_(?:battleground|castle|piglab)$", hotspot_id):
            continue
        battle_ids = [value.decode() for value in repeated(hotspot, 3)]
        if not battle_ids:
            continue
        battle = battle_rows[battle_ids[0]]
        waves = []
        for table_id in repeated(battle, 3):
            participants = participant_rows[table_id.decode()]
            # Metadata enum constants: IgnoreStrength=0, Weighted=1, Probability=2.
            if one(participants, 2, 0) != 0:
                raise ValueError("First-visit campaign wave requires unsupported selection semantics")
            spawns = []
            for entry in repeated(participants, 4):
                chance, count = floating(entry, 3, 1.), floating(entry, 4, 1.)
                if chance != 1. or count < 1 or not count.is_integer():
                    raise ValueError("Expected guaranteed integer enemy counts in fixed campaign wave")
                level_difference = one(entry, 2, 0)
                if level_difference > 0x7FFFFFFF:
                    level_difference -= 1 << 64
                spawns.append({"pig": pig_for(text(entry, 1)), "amount": int(count), "level_difference": level_difference})
            if not spawns:
                raise ValueError("Empty campaign wave")
            waves.append({"id": table_id.decode(), "spawns": spawns,
                          "victory_condition_wire": describe(one(participants, 3)) if one(participants, 3) else []})
        zone_id = text(hotspot, 5)
        zone_name = localization.get(zone_id + "_name", localization.get(zone_id, zone_id.replace("zone_", "").replace("_", " ").title()))
        zone_name = re.sub(r"\[(?:[0-9a-fA-F]{6}|-)\]", "", zone_name)
        name = f"{zone_name} {one(hotspot, 6, 1)}"
        encounters.append({"id": hotspot_id, "name": name, "zone_id": zone_id, "battle_id": battle_ids[0],
                           "replay_battle_ids": battle_ids[1:], "base_level": one(battle, 2, 1),
                           "max_birds": one(battle, 16, 3), "background_asset_id": text(battle, 9),
                           "music_id": text(battle, 11), "progress_id": one(hotspot, 11, 0),
                           "order_id": one(hotspot, 12, 0), "waves": waves,
                           "enter_requirements_wire": [describe(value) for value in repeated(hotspot, 7)],
                           "battle_requirements_wire": [describe(value) for value in repeated(battle, 7)]})
    result = {"source": "Bundled Hotspot/Battle/BattleParticipant/Pig balancing tables",
              "selection": "First-visit main-island battle/castle/piglab nodes, in original serialized order",
              "limitations": ["Original branching requirements are preserved as data; route unlocking remains a sequential reconstruction.",
                              "Replay weighted variants, difficulty power-level balancing and custom victory conditions are not yet executed."],
              "pigs": pigs, "encounters": encounters}
    (ROOT / "content/campaign.json").write_text(json.dumps(result, indent=2, ensure_ascii=False), encoding="utf-8")
    quote = lambda value: json.dumps(value, ensure_ascii=False)
    source = ["// Generated from the original bundled first-visit main-island encounters.", f"pub static PIGS: [PigDefinition; {len(pigs)}] = ["]
    for pig in pigs:
        combos = ", ".join("AiCombo { " + f"weight: {combo['weight']!r}, skills: &{combo['skills']}" + " }" for combo in pig['combos'])
        source.append("PigDefinition { " + ", ".join([
            f"id: {quote(pig['id'])}", f"name: {quote(pig['name'])}", f"asset_id: {quote(pig['asset_id'])}",
            f"base_health: {pig['base_health']}", f"base_attack: {pig['base_attack']}",
            f"per_level_health: {pig['per_level_health']}", f"per_level_attack: {pig['per_level_attack']}",
            f"skills: &{pig['skills']}", f"combos: &[{combos}]", f"passive_skill_id: {quote(pig['passive_skill_id'])}"])+" },")
    source.extend(["];", f"pub static ENCOUNTERS: [Encounter; {len(encounters)}] = ["])
    for encounter in encounters:
        waves = []
        for wave in encounter["waves"]:
            spawns = ",".join("Spawn { " + f"pig: {entry['pig']}, amount: {entry['amount']}, level_difference: {entry['level_difference']}" + " }" for entry in wave['spawns'])
            waves.append("EncounterWave { " + f"id: {quote(wave['id'])}, spawns: &[{spawns}]" + " }")
        source.append("Encounter { " + ", ".join([
            f"id: {quote(encounter['id'])}", f"name: {quote(encounter['name'])}", f"battle_id: {quote(encounter['battle_id'])}",
            f"base_level: {encounter['base_level']}", f"max_birds: {encounter['max_birds']}",
            f"background_asset_id: {quote(encounter['background_asset_id'])}", f"music_id: {quote(encounter['music_id'])}",
            "waves: &[" + ",".join(waves) + "]"])+" },")
    source.extend(["];", f"pub const STAGE_NAMES: [&str; {len(encounters)}] = [" + ",".join(quote(encounter['name']) for encounter in encounters) + "];"])
    (ROOT / "crates/epic-core/src/campaign_generated.rs").write_text("\n".join(source) + "\n", encoding="utf-8")
    print(f"Exported {len(encounters)} original encounters, {sum(len(e['waves']) for e in encounters)} waves and {len(pigs)} pig definitions.")


def main():
    tables, asset = load_tables()
    output = ROOT / "analysis/content"
    output.mkdir(parents=True, exist_ok=True)
    counts = {}
    for name, rows in tables.items():
        counts[name] = len(rows)
        records = [{"index": index, "wire_fields": describe(row)} for index, row in enumerate(rows)]
        (output / f"{name}.json").write_text(json.dumps(records, indent=2), encoding="utf-8")
    (output / "manifest.json").write_text(json.dumps({"source": asset, "row_counts": counts}, indent=2), encoding="utf-8")
    print("Recovered tables:", counts)
    for name in ("ClassItemBalancingData", "ClassSkinBalancingData", "BirdBalancingData", "SkillBalancingData", "HotspotBalancingData"):
        print(name, "first row:", json.dumps(describe(tables[name][0])))
    catalog = export_catalog(tables)
    export_campaign(tables, catalog)


if __name__ == "__main__":
    main()
