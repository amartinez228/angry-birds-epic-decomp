"""Recover original bird growth, starting hands, mastery and gear modifiers.

Coefficients are bound to native getter/formula evidence, not treated as flat
per-level increments. Runtime XP, recruitment and inventory remain separate work.
"""
import hashlib
import json
import struct

from recover_content import ROOT, fields, load_tables, one, signed_integer


def decode_bird(row):
    text = {1:'id', 2:'asset_id', 3:'loca_id', 4:'inventory_id', 10:'rage_skill_id', 12:'pvp_rage_skill_id'}
    integers = {5:'base_health', 6:'base_attack', 7:'per_level_health_percent',
                8:'per_level_attack_percent', 9:'size_type', 11:'sort_priority'}
    for field, wire, _ in fields(row):
        if wire != (2 if field in text else 0 if field in integers else -1):
            raise ValueError('Unsupported BirdBalancingData field/wire')
    return dict(**{name:one(row, field, b'').decode() for field, name in text.items()},
                **{name:signed_integer(row, field) for field, name in integers.items()},
                row_sha256=hashlib.sha256(row).hexdigest())


def recover():
    tables, _ = load_tables()
    birds = [decode_bird(row) for row in tables['BirdBalancingData']]
    equipment = json.loads((ROOT/'content/equipment.json').read_text())['equipment']
    item_indices = {item['id']:i for i, item in enumerate(equipment)}
    inventories = {one(row, 1).decode():row for row in tables['InventoryBalancingData']}
    primary_ids = ['bird_red', 'bird_yellow', 'bird_white', 'bird_black', 'bird_blue']
    primary = []
    for identifier in primary_ids:
        matches = [bird for bird in birds if bird['id'] == identifier]
        if len(matches) != 1:
            raise ValueError('Ambiguous primary bird')
        bird = dict(matches[0])
        inventory = inventories[bird['inventory_id']]
        hands = {}
        entries = []
        for field, wire, row in fields(inventory):
            if field != 2:
                continue
            if wire != 2:
                raise ValueError('Unexpected inventory content wire')
            item_id, amount = one(row, 1).decode(), one(row, 2, 0)
            entries.append(dict(id=item_id, amount=amount))
            if item_id not in item_indices:
                continue
            index = item_indices[item_id]
            hand = 'main_hand' if equipment[index]['item_type'] == 3 else 'off_hand'
            if hand in hands or amount != 1 or equipment[index]['restricted_bird_id'] != identifier:
                raise ValueError('Ambiguous/restricted starting equipment')
            hands[hand] = index
        if set(hands) != {'main_hand', 'off_hand'}:
            raise ValueError('Incomplete primary bird loadout')
        bird.update(**hands, inventory_initial_level=signed_integer(inventory, 3),
                    inventory_entries=entries, inventory_row_sha256=hashlib.sha256(inventory).hexdigest())
        primary.append(bird)
    mastery = []
    for row in tables['ExperienceMasteryBalancingData']:
        identifier = one(row, 1).decode()
        rank = int(identifier.removeprefix('Level_'))
        if identifier != f'Level_{rank:02}' or rank < 1:
            raise ValueError('Invalid mastery rank ID')
        mastery.append(dict(id=identifier, rank=rank, experience=signed_integer(row, 2),
                            old_experience=signed_integer(row, 3), ancient_experience=signed_integer(row, 4),
                            stat_bonus_percent=signed_integer(row, 5), row_sha256=hashlib.sha256(row).hexdigest()))
    mastery.sort(key=lambda item:item['rank'])
    if [item['rank'] for item in mastery] != list(range(1, 101)):
        raise ValueError('Incomplete mastery table')
    enchantments = []
    for row in tables['EnchantingBalancingData']:
        enchantments.append(dict(id=one(row, 1).decode(), level=signed_integer(row, 16),
            level_range=signed_integer(row, 17), stats_boost_percent=struct.unpack('<f', one(row, 2, b'\0'*4))[0],
            row_sha256=hashlib.sha256(row).hexdigest()))
    boosts = {}
    for item in enchantments:
        values = boosts.setdefault(item['level'], set())
        values.add(item['stats_boost_percent'])
    if sorted(boosts) != list(range(11)) or any(len(values) != 1 for values in boosts.values()):
        raise ValueError('Enchantment boosts vary by level range; runtime selector needs extension')
    ancient_rows = [row for row in tables['GameConstantsBalancingData'] if one(row, 1) == b'AncientEquipmentStatsBoost']
    if len(ancient_rows) != 1:
        raise ValueError('Ambiguous ancient equipment boost')
    ancient = struct.unpack('<f', one(ancient_rows[0], 3))[0]
    result = dict(source_sha256=hashlib.sha256((ROOT/'analysis/unity/balancing.pb').read_bytes()).hexdigest(),
        birds=birds, primary_birds=primary, mastery=mastery, enchantments=enchantments,
        ancient_equipment_boost_percent=ancient, ancient_row_sha256=hashlib.sha256(ancient_rows[0]).hexdigest(),
        limitations=['Native float stat getters recovered; integer battle model currently rounds final base stats',
            'Live profiles use saved class mastery and original level-one starter hands; owned gear/other loot/crafting/recruitment and XP boosters remain unfinished'])
    (ROOT/'content/stats.json').write_text(json.dumps(result, indent=2)+'\n', encoding='utf-8')
    lines = ['// Generated by tools/recover_stats.py.', 'pub const BIRDS: &[BirdDefinition; 5] = &[']
    for bird in primary:
        lines.append('    BirdDefinition {')
        for field in ['id', 'base_health', 'base_attack', 'per_level_health_percent', 'per_level_attack_percent',
                      'main_hand', 'off_hand', 'inventory_initial_level']:
            lines.append(f'        {field}: {json.dumps(bird[field])},')
        lines.append('    },')
    lines.extend(['];', 'pub const MASTERY_BONUSES: &[i32] = &['+', '.join(str(item['stat_bonus_percent']) for item in mastery)+'];',
                  'pub const ENCHANTMENT_BONUSES: &[f32] = &['+', '.join(str(next(iter(boosts[level]))) for level in range(11))+'];',
                  f'pub const ANCIENT_EQUIPMENT_BONUS: f32 = {ancient};', ''])
    (ROOT/'crates/epic-core/src/stats_generated.rs').write_text('\n'.join(lines), encoding='utf-8')
    print('Recovered',len(birds),'bird rows;',len(primary),'starting loadouts;',len(mastery),'mastery ranks;',len(enchantments),'enchantment rows')


if __name__ == '__main__':
    recover()
