"""Recover stackable item identities and original starting inventory values.

Subtype effects, recipe crafting, consumable use and event behavior are separate
runtime work. Keep raw fields and hashes so those systems can be reconstructed.
"""
import hashlib
import json
import re

from recover_content import ROOT, describe, fields, load_tables, one, signed_integer

TABLES = ['BasicItemBalancingData', 'CraftingItemBalancingData',
          'ConsumableItemBalancingData', 'CraftingRecipeBalancingData', 'EventItemBalancingData']


def recover():
    tables, _ = load_tables()
    localization = json.loads((ROOT/'content/localization.en.json').read_text(encoding='utf-8'))
    definitions = []
    for table in TABLES:
        for row in tables[table]:
            identifier = one(row, 1).decode()
            loca = one(row, 4, b'').decode()
            name = re.sub(r'<[^>]*>|\[[^\]]*\]', '', localization.get(loca+'_name', localization.get(loca, ''))).strip()
            definitions.append(dict(id=identifier, item_type=signed_integer(row, 2),
                name=name, loca_id=loca, source_table=table,
                raw_fields=describe(row), row_sha256=hashlib.sha256(row).hexdigest()))
    definitions.sort(key=lambda item:item['id'])
    if len({item['id'] for item in definitions}) != len(definitions):
        raise ValueError('Ambiguous resource identity')
    by_id = {item['id']:item for item in definitions}
    inventory = next(row for row in tables['InventoryBalancingData'] if one(row, 1) == b'player_inventory')
    roots = [(one(row, 1).decode(), signed_integer(row, 2)) for field, wire, row in fields(inventory) if field == 2 and wire == 2]
    if roots != [('loot_starting_inventory', 1)]:
        raise ValueError('Starting inventory roots changed')
    start = next(row for row in tables['LootTableBalancingData'] if one(row, 1) == b'loot_starting_inventory')
    if one(start, 3) != 2:
        raise ValueError('Starting inventory must be deterministic inventory table')
    initial = {}
    for field, wire, entry in fields(start):
        if field != 2:
            continue
        if wire != 2 or signed_integer(entry, 6) != 0:
            raise ValueError('Unsupported initial inventory randomness')
        identifier = one(entry, 1).decode()
        amount = signed_integer(entry, 5)
        if identifier not in by_id or amount < 0:
            raise ValueError('Unknown/negative initial resource')
        delta = signed_integer(entry, 7)
        if identifier not in initial:
            initial[identifier] = dict(value=0, level_delta=delta)
        # Native duplicate loot merges values, retaining its first record's level.
        initial[identifier]['value'] += amount
    result = dict(source_sha256=hashlib.sha256((ROOT/'analysis/unity/balancing.pb').read_bytes()).hexdigest(),
        definitions=definitions, initial_inventory=initial,
        inventory_row_sha256=hashlib.sha256(inventory).hexdigest(), initial_loot_row_sha256=hashlib.sha256(start).hexdigest(),
        limitations=['Value storage only; subtype effects, resource caps, crafting/consumable/event behavior remain incomplete',
            'These recovered starting values are not yet added to live profiles. Recipe level delta is retained; player creation passes its player level into GenerateLoot',
            'Experience and gold remain owned by the dedicated profile fields; initial XP=1 is retained as evidence but is not newly granted to existing saves'])
    (ROOT/'content/resources.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    print('Recovered', len(definitions), 'resource definitions and', len(initial), 'starting values')


if __name__ == '__main__':
    recover()
