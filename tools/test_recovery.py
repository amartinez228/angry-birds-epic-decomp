"""Regression checks against the supplied game and malformed container inputs."""
import json
import math
from pathlib import Path
import struct
import unittest

from recover_content import ROOT, fields, load_tables, one, signed_integer
from extract_unity import objects
from link_native import link
from recover_art import Extractor
from recover_characters import Scene, bone_animation, pose_matrix, transform_point
from recover_animations import clip, rig
from recover_pacing import field_names, decode_component
from recover_motion import decode as decode_motion
from recover_projectiles import provider as decode_provider, descendants
from recover_equipment import decode as decode_equipment
from native_field_layout import layouts
from build_projectile_runtime import inverse_rigid
from unity_mesh import mesh as decode_mesh
from recover_scenery import renderer as decode_renderer, scene_paths
from build_scenery_runtime import batches as scenery_batches
from recover_audio import sound_manager, clip as decode_audio_clip, Decoder as AudioDecoder
from fsb_audio import bank as decode_fsb, ogg as repack_ogg, setup_table as vorbis_setups
from recover_stats import decode_bird
from recover_loot import entry as decode_loot_entry


class RecoveryTests(unittest.TestCase):
    def test_leech_native_callback_bindings_and_field_layouts(self):
        import hashlib
        report = json.loads((ROOT/'analysis/native/leech-healing-evidence.json').read_text())
        native = (ROOT/'analysis/libil2cpp-x86.so').read_bytes()
        meta = (ROOT/'analysis/global-metadata.dat').read_bytes()
        self.assertEqual(hashlib.sha256(native).hexdigest(), report['native_sha256'])
        self.assertEqual(hashlib.sha256(meta).hexdigest(), report['metadata_sha256'])
        linked = json.loads((ROOT/'analysis/native-methods.json').read_text())
        self.assertEqual(report['disassembly_hash_format'], 'UTF-8 text with LF line endings')
        expected = {36277:0x1490bb8, 36280:0x14912be, 36525:0xeb4cd3, 40966:0x50a1af}
        for entry in report['methods']:
            row = linked['methods'][entry['metadata_index']]
            for key in ['class', 'method', 'address']:
                self.assertEqual(row[key], entry[key])
            self.assertEqual(row['address'], expected[entry['metadata_index']])
            text = (ROOT/'analysis/native'/entry['disassembly']).read_text(encoding='utf-8')
            self.assertEqual(hashlib.sha256(text.encode()).hexdigest(), entry['sha256'])
        stored = json.loads((ROOT/'analysis/native'/report['field_layouts']).read_text())
        self.assertEqual(layouts([36277, 36513]), stored)
        fields_by_method = {row['method_index']:{f['name']:f['offset'] for f in row['fields']}
                            for row in stored['layouts']}
        self.assertEqual(fields_by_method[36277]['m_Percent'], 0x8c)
        self.assertEqual(fields_by_method[36513]['ActionsOnDamageDealt'], 0x70)
        methods_at = struct.unpack_from('<I', meta, 48)[0]
        for name, entry in report['interface_slots'].items():
            row = linked['methods'][entry['metadata_index']]
            self.assertEqual(row['class'], 'ABH.GameDatas.Interfaces.ICombatant')
            self.assertEqual(row['method'], name)
            slot = struct.unpack_from('<H', meta, methods_at+entry['metadata_index']*56+52)[0]
            self.assertEqual(slot, entry['slot'])

    def test_weakest_healing_native_methods_fields_and_interface_slots(self):
        import hashlib
        report = json.loads((ROOT/'analysis/native/weakest-healing-evidence.json').read_text())
        native = (ROOT/'analysis/libil2cpp-x86.so').read_bytes()
        meta = (ROOT/'analysis/global-metadata.dat').read_bytes()
        self.assertEqual(hashlib.sha256(native).hexdigest(), report['native_sha256'])
        self.assertEqual(hashlib.sha256(meta).hexdigest(), report['metadata_sha256'])
        linked = json.loads((ROOT/'analysis/native-methods.json').read_text())
        self.assertEqual(report['disassembly_hash_format'], 'UTF-8 text with LF line endings')
        expected = {36262:0x148ed8e, 36263:0x148edc7, 36267:0x148f46f,
                    36269:0x148fc8f, 36525:0xeb4cd3, 40966:0x50a1af}
        for entry in report['methods']:
            row = linked['methods'][entry['metadata_index']]
            for key in ['class', 'method', 'address']:
                self.assertEqual(row[key], entry[key])
            self.assertEqual(row['address'], expected[entry['metadata_index']])
            text = (ROOT/'analysis/native'/entry['disassembly']).read_text(encoding='utf-8')
            self.assertEqual(hashlib.sha256(text.encode()).hexdigest(), entry['sha256'])
        stored = json.loads((ROOT/'analysis/native'/report['field_layouts']).read_text())
        self.assertEqual(layouts([36263, 36267, 36269, 36513]), stored)
        fields_by_method = {row['method_index']:{f['name']:f['offset'] for f in row['fields']}
                            for row in stored['layouts']}
        self.assertEqual(fields_by_method[36263]['m_Percent'], 0x8c)
        self.assertEqual(fields_by_method[36269]['healTarget'], 8)
        self.assertEqual(fields_by_method[36513]['ActionsOnDamageDealt'], 0x70)
        methods_at = struct.unpack_from('<I', meta, 48)[0]
        for name, entry in report['interface_slots'].items():
            row = linked['methods'][entry['metadata_index']]
            self.assertEqual(row['class'], 'ABH.GameDatas.Interfaces.ICombatant')
            self.assertEqual(row['method'], name)
            slot = struct.unpack_from('<H', meta, methods_at+entry['metadata_index']*56+52)[0]
            self.assertEqual(slot, entry['slot'])

    def test_healing_reduction_evidence_binds_native_handler_and_original_enums(self):
        import hashlib
        report = json.loads((ROOT/'analysis/native/healing-reduction-evidence.json').read_text())
        native = (ROOT/'analysis/libil2cpp-x86.so').read_bytes()
        meta = (ROOT/'analysis/global-metadata.dat').read_bytes()
        self.assertEqual(hashlib.sha256(native).hexdigest(), report['native_sha256'])
        self.assertEqual(hashlib.sha256(meta).hexdigest(), report['metadata_sha256'])
        linked = json.loads((ROOT/'analysis/native-methods.json').read_text())
        phoff = struct.unpack_from('<I', native, 28)[0]
        phsize, phcount = struct.unpack_from('<HH', native, 42)
        segments = [struct.unpack_from('<8I', native, phoff+i*phsize) for i in range(phcount)]
        def offset(address):
            for kind, start, virtual, _, length, *_ in segments:
                if kind == 1 and virtual <= address < virtual+length:
                    return start+address-virtual
            self.fail('Address outside ELF')
        for entry in report['methods']:
            row = linked['methods'][entry['metadata_index']]
            for key in ['class', 'method', 'address']:
                self.assertEqual(row[key], entry[key])
            self.assertEqual(report['disassembly_hash_format'], 'UTF-8 text with LF line endings')
            text = (ROOT/'analysis/native'/entry['disassembly']).read_text(encoding='utf-8')
            self.assertEqual(hashlib.sha256(text.encode('utf-8')).hexdigest(), entry['sha256'])
        constant = report['percent_constant']
        self.assertEqual(struct.unpack_from('<f', native, offset(linked['global_offset_table']+constant['got_offset']))[0], 100.)
        count, pointer = struct.unpack_from('<II', native, linked['metadata_registration_file_offset']+7*8)
        slots = {struct.unpack_from('<I', native, offset(pointer)+i*4)[0]: i for i in range(count)}
        binding = report['registration']
        destination = slots[linked['global_offset_table']+binding['got_offset']]
        pairs_at, pairs_size = struct.unpack_from('<II', meta, 200)
        usages = dict(struct.unpack_from('<II', meta, at) for at in range(pairs_at, pairs_at+pairs_size, 8))
        self.assertEqual(usages[destination], (3 << 29) | 41071)
        self.assertEqual(binding['metadata_method_index'], 41071)
        section = lambda number: struct.unpack_from('<II', meta, 8+number*8)
        strings, _ = section(2)
        def name(index):
            return meta[strings+index:meta.index(b'\0', strings+index)].decode()
        types_at, types_size = section(19)
        fields_at, _ = section(11)
        defaults_at, defaults_size = section(7)
        blob, _ = section(8)
        defaults = {field: value for field, _, value in
                    (struct.unpack_from('<iii', meta, at) for at in range(defaults_at, defaults_at+defaults_size, 12))}
        recovered = {}
        for at in range(types_at, types_at+types_size, 104):
            enum = name(struct.unpack_from('<I', meta, at)[0])
            if enum not in report['enums']:
                continue
            start = struct.unpack_from('<i', meta, at+48)[0]
            count = struct.unpack_from('<H', meta, at+84)[0]
            recovered[enum] = {}
            for index in range(start, start+count):
                field = name(struct.unpack_from('<I', meta, fields_at+index*16)[0])
                if field in report['enums'][enum]:
                    recovered[enum][field] = struct.unpack_from('<i', meta, blob+defaults[index])[0]
        self.assertEqual(recovered, report['enums'])

    def test_native_rounding_constants_and_method_bindings_match_original_binary(self):
        import hashlib
        report = json.loads((ROOT/'analysis/native/combat-rounding-evidence.json').read_text())
        native = (ROOT/'analysis/libil2cpp-x86.so').read_bytes()
        metadata = (ROOT/'analysis/global-metadata.dat').read_bytes()
        self.assertEqual(hashlib.sha256(native).hexdigest(), report['native_sha256'])
        self.assertEqual(hashlib.sha256(metadata).hexdigest(), report['metadata_sha256'])
        linked = json.loads((ROOT/'analysis/native-methods.json').read_text())
        phoff = struct.unpack_from('<I',native,28)[0]
        phsize, phcount = struct.unpack_from('<HH',native,42)
        segments = [struct.unpack_from('<8I',native,phoff+i*phsize) for i in range(phcount)]
        def offset(address):
            for kind,start,virtual,_,length,*_ in segments:
                if kind == 1 and virtual <= address and address+8 <= virtual+length:
                    return start+address-virtual
            self.fail('Constant outside file-backed ELF segment')
        for location, expected in report['tie_constants'].items():
            address = linked['global_offset_table']-int(location.split('-')[1],16)
            self.assertEqual(struct.unpack_from('<d',native,offset(address))[0],expected)
        expected = {19597:('UnityEngine.Mathf','RoundToInt',0x139b0e7),
                    40966:('ABH.Services.Logic.BattleService','HealCurrentTurn',0x50a1af),
                    40967:('ABH.Services.Logic.BattleService','NormalizeDamage',0x509d43)}
        for method in report['methods']:
            row = next(r for r in linked['methods'] if r['metadata_index']==method['metadata_index'])
            self.assertEqual((row['class'],row['method'],row['address']),expected[method['metadata_index']])
            self.assertEqual(report['disassembly_hash_format'], 'UTF-8 text with LF line endings')
            text = (ROOT/'analysis/native'/method['disassembly']).read_text(encoding='utf-8')
            self.assertEqual(hashlib.sha256(text.encode('utf-8')).hexdigest(),method['sha256'])

    def test_original_resource_catalog_and_starting_recipe_delta_are_preserved(self):
        tables, _ = load_tables()
        data = json.loads((ROOT/'content/resources.json').read_text(encoding='utf-8'))
        source_tables = ['BasicItemBalancingData','CraftingItemBalancingData','ConsumableItemBalancingData',
                         'CraftingRecipeBalancingData','EventItemBalancingData']
        expected = {one(row,1).decode():(table,signed_integer(row,2)) for table in source_tables for row in tables[table]}
        self.assertEqual(len(expected), 617)
        self.assertEqual({row['id']:(row['source_table'],row['item_type']) for row in data['definitions']}, expected)
        self.assertTrue(all(row['raw_fields'] and len(row['row_sha256']) == 64 for row in data['definitions']))
        self.assertEqual(data['initial_inventory']['lucky_coin'], dict(value=10,level_delta=0))
        self.assertEqual(data['initial_inventory']['recipe_vial'], dict(value=2,level_delta=0))
        self.assertEqual(data['initial_inventory']['recipe_weapon_red_lance_01'], dict(value=1,level_delta=1))
        self.assertEqual(data['initial_inventory']['experience'], dict(value=1,level_delta=0))

    def test_original_campaign_scoring_coefficients_and_strategy_bindings(self):
        tables, _ = load_tables()
        report = json.loads((ROOT/'content/scoring.json').read_text())
        self.assertEqual(report['settings'],dict(score_per_star=15000,full_birds=30000,full_pigs=30000,
            loss_per_turn_percent=5,minimum_bird_percent=50,minimum_pig_percent=25,per_strength=2000,per_bird=10000))
        self.assertEqual(len(report['battles']),167)
        self.assertEqual(sum(row['strategy']==0 for row in report['battles']),109)
        self.assertEqual(sum(row['strategy']==1 for row in report['battles']),58)
        original={one(row,1).decode():row for row in tables['BattleBalancingData']}
        for row in report['battles']:
            self.assertEqual((row['strategy'],row['bonus']),
                (one(original[row['id']],12,0),signed_integer(original[row['id']],13)))
        campaign=json.loads((ROOT/'content/campaign.json').read_text())
        self.assertEqual(report['pigs'],[dict(id=pig['id'],strength=pig['strength']) for pig in campaign['pigs']])
        offsets={field['name']:field['offset'] for field in layouts([34820])['layouts'][0]['fields']}
        self.assertEqual(offsets['m_CurrentWaveTurn'],0x24)
        self.assertEqual(offsets['<m_AccumulatedStrengthPoints>k__BackingField'],0x3c)

    def test_original_mastery_costs_class_links_and_star_unlock_gate(self):
        tables, _ = load_tables()
        report = json.loads((ROOT/'content/mastery.json').read_text())
        self.assertEqual(len(report['costs']),100)
        self.assertEqual(len(report['classes']),34)
        self.assertEqual(len(report['items']),47)
        self.assertEqual([row['cost'] for row in report['costs'][:4]],[14,28,48,66])
        self.assertEqual(report['costs'][-1]['cost'],0)
        self.assertEqual({row['id']:row['cost'] for row in report['costs']},
                         {one(raw,1).decode():signed_integer(raw,2) for raw in tables['ExperienceMasteryBalancingData']})
        offer = next(raw for raw in tables['BuyableShopOfferBalancingData'] if one(raw,6,b'') == b'offer_star_reward_02')
        roots = [one(value,1).decode() for field,wire,value in fields(offer) if field == 2 and wire == 2]
        self.assertIn('unlock_mastery_badge',roots)
        requirement = next(value for field,wire,value in fields(offer)
                           if field == 28 and wire == 2 and one(value,2,b'') == b'star_collection')
        self.assertEqual(one(requirement,1),2)
        self.assertEqual(struct.unpack('<f',one(requirement,3))[0],100.)
        self.assertEqual(report['unlock']['stars'],100)
        original = {one(raw,1).decode():raw for raw in tables['ClassItemBalancingData']}
        self.assertEqual({row['id'] for row in report['classes']},
                         {hat['class_id'] for hat in json.loads((ROOT/'content/catalog.json').read_text())['hats']})
        for row in report['classes']:
            self.assertEqual(row['mastery_item'],one(original[row['id']],14).decode())
            self.assertEqual(row['restricted_bird'],one(original[row['id']],7).decode())

    def test_original_revive_requirements_match_the_source_resource_costs(self):
        tables, _ = load_tables()
        recovered = json.loads((ROOT/'content/revival.json').read_text())
        self.assertEqual({row['id']:(row['resource'],row['amount']) for row in recovered['requirements']},
            {'ReviveSingleBirdsRequirement':('lucky_coin',5),
             'ReviveBirdsRequirement':('lucky_coin',10), 'ReviveBirdsPvpRequirement':('lucky_coin',15)})
        for row in recovered['requirements']:
            original = next(raw for raw in tables['GameConstantsBalancingData'] if one(raw,1).decode() == row['id'])
            requirement = one(original,4)
            self.assertEqual(one(requirement,1),1)
            self.assertEqual(one(requirement,2).decode(),row['resource'])
            self.assertEqual(struct.unpack('<f',one(requirement,3))[0],row['amount'])

    def test_original_loot_graphs_cover_campaign_defeat_roots_and_xp_bands(self):
        tables, _ = load_tables()
        data = json.loads((ROOT/'content/loot.json').read_text())
        self.assertEqual(len(data['tables']), 2044)
        self.assertEqual(sum(len(row['entries']) for row in data['tables']), 9761)
        self.assertEqual(len(data['campaign_reachable_tables']), 26)
        self.assertEqual(data['campaign_unsupported_wheel_tables'], [])
        original = next(row for row in tables['LootTableBalancingData'] if one(row, 1) == b'loot_pig3_defeated_exp')
        raw = next(row for field, _, row in fields(original) if field == 2)
        decoded = decode_loot_entry(raw)
        self.assertEqual((decoded['id'],decoded['level_min'],decoded['level_max'],decoded['base_value'],decoded['span'],decoded['probability']), ('experience',1,11,1,0,1.))
        self.assertEqual(len(data['xp_scaling']), 28)
        by_id = {row['id']:row for row in data['tables']}
        direct = [(pig['id'], root['id'], root['amount']) for pig in data['pigs']
                  for root in pig['roots'] if root['id'] not in by_id]
        self.assertCountEqual(direct, [('pig_prince_porky_secondencounter','unlock_reroll_tutorial',1),
                                     ('pig_prince_porky_secondencounter','friendship_essence',1),
                                     ('pig_minion_phat_loot','gold',50)])
        self.assertEqual(len(data['battles']), 167)
        self.assertEqual(sum(any(root['id'] == 'experience' for root in row['bonus']) for row in data['battles']), 112)
        self.assertIn({'id':'experience','amount':5}, data['battles'][0]['bonus'])
        self.assertEqual([p['id'] for p in data['pigs']], [p['id'] for p in json.loads((ROOT/'content/campaign.json').read_text())['pigs']])

    def test_original_experience_rows_are_per_level_costs_with_complete_ids(self):
        tables, _ = load_tables()
        rows = {one(row, 1).decode():one(row, 2) for row in tables['ExperienceLevelBalancingData']}
        data = json.loads((ROOT/'content/progression.json').read_text())
        self.assertEqual(len(rows), 99)
        self.assertEqual([rows[f'Level_{i:02}'] for i in range(1, 6)], [35, 53, 74, 96, 115])
        self.assertEqual(sum(rows.values()), 123520)
        self.assertEqual(data['terminal_level'], 100)
        self.assertEqual({r['id']:r['next_level_cost'] for r in data['levels']}, rows)
        self.assertTrue(all(r['raw_fields'] for r in data['levels']))

    def test_campaign_wheel_roots_match_original_battle_maps(self):
        tables, _ = load_tables()
        data = json.loads((ROOT/'content/loot.json').read_text())
        battles = {one(row, 1).decode():row for row in tables['BattleBalancingData']}
        for battle in data['battles']:
            expected = [dict(id=one(payload, 1).decode(), amount=signed_integer(payload, 2))
                        for number, wire, payload in fields(battles[battle['id']]) if number == 4 and wire == 2]
            self.assertEqual(battle['wheel'], expected)
        self.assertEqual(data['battles'][0]['wheel'], [{'id':'battle_southbeach_01','amount':1}])
        wheel = next(row for row in data['tables'] if row['id'] == 'battle_southbeach_01')
        self.assertEqual(wheel['kind'], 4)
        self.assertEqual(wheel['entries'][0]['id'], 'bird_weapon_red_sword_introwheel')

    def test_original_bird_coefficients_starting_hands_and_mastery_rows(self):
        tables, _ = load_tables()
        raw = next(row for row in tables['BirdBalancingData'] if one(row, 1) == b'bird_red')
        bird = decode_bird(raw)
        self.assertEqual((bird['base_health'], bird['base_attack'], bird['per_level_health_percent'], bird['per_level_attack_percent']), (36, 7, 20, 20))
        data = json.loads((ROOT/'content/stats.json').read_text())
        self.assertEqual((len(data['birds']), len(data['mastery']), len(data['enchantments'])), (47, 100, 121))
        red = data['primary_birds'][0]
        inventory = next(row for row in tables['InventoryBalancingData'] if one(row, 1).decode() == red['inventory_id'])
        entries = [one(row, 1).decode() for field, _, row in fields(inventory) if field == 2]
        gear = json.loads((ROOT/'content/equipment.json').read_text())['equipment']
        self.assertEqual(gear[red['main_hand']]['id'], 'bird_weapon_red_sword_0star')
        self.assertEqual(gear[red['off_hand']]['id'], 'bird_offhand_red_shield_start')
        self.assertTrue(all(gear[red[hand]]['id'] in entries for hand in ['main_hand','off_hand']))
        self.assertEqual([row['stat_bonus_percent'] for row in data['mastery'][:3]], [0, 2, 4])
        self.assertEqual(data['ancient_equipment_boost_percent'], 10.)
        for level in range(11):
            self.assertEqual({row['stats_boost_percent'] for row in data['enchantments'] if row['level'] == level}, {level*5.})

    def test_native_growth_and_rounding_literals_are_verified_from_elf(self):
        native = (ROOT/'analysis/libil2cpp-x86.so').read_bytes()
        report = json.loads((ROOT/'analysis/native-methods.json').read_text())
        phoff = struct.unpack_from('<I', native, 28)[0]
        stride, count = struct.unpack_from('<HH', native, 42)
        segments = [struct.unpack_from('<8I', native, phoff+i*stride) for i in range(count)]
        for delta, expected in [(-0x64fc2c,100.), (-0x64fc28,1.), (-0x64fc1c,-1.), (-0x64fc20,-0.5), (-0x6cefe4,0.5)]:
            address = report['global_offset_table']+delta
            segment = next(s for s in segments if s[0] == 1 and s[2] <= address < s[2]+s[4])
            value = struct.unpack_from('<f', native, segment[1]+address-segment[2])[0]
            self.assertEqual(value, expected)

    def test_native_level_stat_invalidation_refills_current_health_indirectly(self):
        native = (ROOT/'analysis/libil2cpp-x86.so').read_bytes()
        linked = json.loads((ROOT/'analysis/native-methods.json').read_text())['methods']
        def method(index):
            return next(row for row in linked if row['metadata_index'] == index and
                        row['class'] == 'ABH.GameDatas.Battle.BaseCombatant`1<ABH.GameDatas.BirdGameData>')
        modified = method(34607)
        self.assertEqual(modified['address'], 0x1603997)
        # Verified file-backed x86 method: ApplyBuffsOnHealth's result is written
        # to stored current HP before caching maximum HP. A getter-only trace
        # must not incorrectly imply that level-up preserves wounded HP.
        at = modified['file_offset'] + (0x1603ab4 - modified['address'])
        self.assertEqual(native[at:at+5], b'\xe8'+struct.pack('<i', 0x50772f-0x1603ab9))
        self.assertEqual(native[at+15:at+20], bytes.fromhex('f3 0f 11 46 60'))
        dirty = method(34632)
        code = native[dirty['file_offset']:dirty['file_offset']+62]
        self.assertIn(bytes.fromhex('c6 40 50 01 c6 40 44 01'), code)

    def test_original_audio_packets_decode_to_exact_declared_frame_count(self):
        extractor = Extractor()
        entry = next(e for e in extractor.inventory if e['class_id'] == 83 and e.get('name') == 'TitleTheme')
        info = decode_audio_clip(extractor.data(entry))
        resource = extractor.archives[entry['archive']].read(entry['source']+'.resource')
        sample = decode_fsb(resource)
        self.assertEqual((sample['sample_rate'], sample['sample_count'], sample['channels']), (44100, 3953664, 1))
        self.assertEqual(info['resource_size'], len(resource))
        data = repack_ogg(sample, vorbis_setups())
        frames, channels, rate, pcm = AudioDecoder().decode(data)
        self.assertEqual((frames, channels, rate, len(pcm)), (3953664, 1, 44100, 7907328))
        for end in [0, 60, len(resource)//2, len(resource)-1]:
            with self.assertRaises(ValueError):
                decode_fsb(resource[:end])
        corrupt = bytearray(resource)
        struct.pack_into('<I', corrupt, 24, 0)
        with self.assertRaises(ValueError):
            decode_fsb(corrupt)

    def test_original_sound_parameters_use_presence_and_priority_resource_links(self):
        scene = Scene(Extractor())
        manager = sound_manager(scene.file('level1')[0][111][1])
        self.assertEqual((len(manager['sounds']), len(manager['providers'])), (460, 5))
        basic = next(s for s in manager['sounds'] if s['id'] == 'Music_Combat_Basic')
        self.assertEqual(basic['asset_names'], ['Battle_01', 'Battle_02', 'Battle_03', 'Battle_04'])
        self.assertTrue(basic['looping'] and basic['primary_music'])
        self.assertEqual(basic['fade_time'], 1.)
        self.assertIn((0, 0.), basic['parameters'])
        data = json.loads((ROOT/'content/audio.json').read_text())
        self.assertEqual(len(data['clips']), 622)
        self.assertEqual(len(data['missing_bindings']), 7)
        by_hash = {clip['sha256']:clip for clip in data['clips']}
        for sound in data['sounds']:
            for digest in sound['clips']:
                self.assertIn(digest, by_hash)
        recovered = next(s for s in data['sounds'] if s['id'] == basic['id'])
        self.assertEqual([by_hash[d]['name'] for d in recovered['clips']], basic['asset_names'])

    def test_scene_ids_bind_to_original_build_settings_indices(self):
        extractor = Extractor()
        original = extractor.archives['com.rovio.gold.apk'].read('assets/bin/Data/globalgamemanagers')
        settings = next(original[at:at+size] for _, kind, at, size in objects(original) if kind == 141)
        paths, end = scene_paths(settings)
        self.assertEqual((len(paths), end), (257, 20720))
        data = json.loads((ROOT/'content/scenery.json').read_text())
        wanted = {e['background_asset_id'] for e in json.loads((ROOT/'content/campaign.json').read_text())['encounters']}
        self.assertEqual({s['id'] for s in data['scenes']}, wanted)
        for scene in data['scenes']:
            self.assertEqual(paths[scene['build_index']], scene['path'])
            self.assertEqual(scene['path'].rsplit('/', 1)[-1], scene['id']+'.unity')

    def test_original_sky_mesh_and_static_batch_indices_are_recovered(self):
        scene = Scene(Extractor())
        raw = scene.file('sharedassets37.assets')[0][28][1]
        sky = decode_mesh(raw)
        self.assertEqual((sky['name'], sky['vertex_count']), ('Sky_SouthBeach', 4))
        self.assertEqual(list(sky['submeshes'][0]['indices']), [0, 1, 2, 3, 2, 1])
        for end in [0, 4, len(raw)//2, len(raw)-1]:
            with self.assertRaises((ValueError, struct.error, IndexError)):
                decode_mesh(raw[:end])
        renderer = decode_renderer(scene.file('level223')[0][327][1])
        self.assertEqual(renderer['static_batch'], (33, 1))
        data = json.loads((ROOT/'content/scenery.json').read_text())
        beach = next(s for s in data['scenes'] if s['id'] == 'Battleground_SouthBeach_01')
        draws, _ = scenery_batches(beach, data, {key:i for i, key in enumerate(sorted(data['textures']))})
        shadow = next(d for d in draws if d['path_id'] == 327)
        layer = next(l for l in beach['layers'] if l['path_id'] == 327)
        original = data['meshes'][layer['mesh_key']]
        index = original['submeshes'][33]['indices'][0]
        # Combined static vertices are already world space: don't apply the
        # individual object's -532/+81 translation a second time.
        self.assertEqual(shadow['vertices'][0][:2], original['positions'][index][:2])

    def test_collateral_stun_preserves_independent_chances_and_retained_targets(self):
        report = layouts([36233])
        offsets = {item['name']: item['offset'] for item in report['layouts'][0]['fields']}
        self.assertEqual([offsets[name] for name in ['m_ChanceToStunMain', 'm_ChanceToStunExtras', 'm_StunDuration', 'm_AdditionalTargets']], [0xa4, 0xa8, 0xac, 0xb4])
        skills = json.loads((ROOT / 'content/catalog.json').read_text(encoding='utf-8'))['skills']
        variants = [skill for skill in skills if skill['template'] == 'AttackWithCollateralDamageAndStun']
        self.assertEqual(len(variants), 3)
        for skill in variants:
            self.assertEqual((skill['parameters']['chance'], skill['parameters']['collateral_stun_chance'], skill['parameters']['stun_duration']), (100., 0., 1.))

    def test_collateral_callback_fields_bind_source_and_primary_separately(self):
        report = layouts([36226, 36231])
        skill = {item['name']: item for item in report['layouts'][0]['fields']}
        callback = {item['name']: item for item in report['layouts'][1]['fields']}
        self.assertEqual(skill['m_CollateralDamageMod']['offset'], 0x94)
        self.assertEqual(skill['m_AdditionalEnemiesAffected']['offset'], 0x9c)
        self.assertEqual((callback['source']['offset'], callback['target']['offset']), (8, 12))
        catalog = json.loads((ROOT / 'content/catalog.json').read_text(encoding='utf-8'))['skills']
        spies = next(skill for skill in catalog if skill['id'] == 'bird_attack_blues_spies')
        ninja = next(skill for skill in catalog if skill['id'] == 'pig_attack_ninja_bowman')
        self.assertEqual(spies['parameters']['collateral_damage_in_percent'], 35.)
        self.assertEqual(ninja['parameters']['additional_enemies_affected'], 2.)

    def test_projectile_geometry_and_actor_attachment_pointers(self):
        report = json.loads((ROOT / 'content/projectile-runtime.json').read_text(encoding='utf-8'))
        self.assertEqual((report['projectiles'], report['static_sprites']), (52, 47))
        arrow = next(item for item in report['geometry'] if item['projectile'] == 'Projectile_NinjaPig_Arrow')
        self.assertAlmostEqual(arrow['vertices'][0][0], 61.88972436, places=5)
        self.assertAlmostEqual(arrow['vertices'][0][1], -21.12436059, places=5)
        self.assertEqual([item[2:] for item in arrow['vertices']], [[0.,1.],[1.,1.],[1.,0.],[0.,0.]])
        ninja = next(item for item in report['attachments'] if item['asset'] == 'NinjaPig')
        self.assertEqual((ninja['controller_path_id'], ninja['main_hand'], ninja['center']), (101, 'Root/MainHand', 'Root/Center'))
        self.assertEqual(len(report['attachments']), 22)
        self.assertEqual(sum(item['center'] is not None for item in report['attachments']), 21)
        with self.assertRaises(ValueError):
            inverse_rigid([2.,0.,0.,0.,0.,1.,0.,0.,0.,0.,1.,0.,0.,0.,0.,1.])

    def test_native_attack_iterator_layout_distinguishes_illusion_and_static_fields(self):
        report = layouts([36525, 36516])
        iterator = {item['name']: item for item in report['layouts'][0]['fields']}
        attack = {item['name']: item for item in report['layouts'][1]['fields']}
        self.assertEqual(iterator['illusion']['offset'], 0x6c)
        self.assertFalse(iterator['illusion']['static'])
        self.assertEqual(iterator['<duration>__5']['offset'], 0x70)
        self.assertEqual(iterator['<WaitSlices>__0']['offset'], 0x90)
        self.assertTrue(iterator['<>f__am$cache0']['static'])
        self.assertEqual((attack['m_Stopped']['offset'], attack['m_Stopped']['type_kind']), (0x3c, 2))
        self.assertEqual((attack['m_FallBackTime']['offset'], attack['m_FallBackTime']['type_kind']), (0x48, 12))
        with self.assertRaises(ValueError):
            layouts([-1])

    def test_original_equipment_fields_repeated_quality_and_signed_offsets(self):
        tables, _ = load_tables()
        exported = json.loads((ROOT / 'content/equipment.json').read_text(encoding='utf-8'))
        decoded = [decode_equipment(row) for row in tables['EquipmentBalancingData']]
        self.assertEqual(decoded, exported['equipment'])
        self.assertEqual(len(decoded), 312)
        self.assertEqual(sum(item['item_type'] == 3 for item in decoded), 214)
        sword = next(item for item in decoded if item['id'] == 'bird_weapon_red_sword_01')
        self.assertEqual(sword['stat_per_quality_percent'], [0, 10, 20, 30])
        self.assertEqual((sword['base_stat'], sword['stat_per_level'], sword['asset_level_offset']), (16, 25, 3))
        self.assertEqual(sorted(item['asset_level_offset'] for item in decoded if item['asset_level_offset'] < 0), [-10, -9, -6, -3])
        bowman = next(item for item in exported['pig_loadouts'] if item['pig_id'] == 'pig_ninja_bowman')
        self.assertEqual(decoded[bowman['main_hand']]['id'], 'pig_weapon_ninja_asian_bow_01')
        self.assertEqual(len(exported['pig_loadouts']), 140)
        first = tables['EquipmentBalancingData'][0]
        for malformed in (first + b'\x58\x02', first + b'\xd0\x01\x00'):
            with self.assertRaises(ValueError):
                decode_equipment(malformed)

    def test_original_projectile_provider_resource_and_descendant_binding(self):
        exported = json.loads((ROOT / 'content/projectiles.json').read_text(encoding='utf-8'))
        extractor = Extractor()
        data = extractor.data(exported['provider_source'])
        provider = decode_provider(data)
        self.assertEqual(len(provider['entries']), 546)
        self.assertEqual(len(exported['projectiles']), 52)
        self.assertTrue(all(len(item['motion_components']) == 1 for item in exported['projectiles']))
        arrow = next(item for item in exported['projectiles'] if item['id'] == 'Projectile_NinjaPig_Arrow')
        self.assertEqual(arrow['path'], 'Prefabs/4_Characters/4_Projectiles/Projectile_NinjaPig_Arrow')
        self.assertEqual(arrow['resource_pointer'], [985, 2])
        self.assertEqual(arrow['source'], '0c519e025cd69694fb27e08d80960e5a')
        scene = Scene(extractor)
        hierarchy = descendants(scene, arrow['source'], (0, arrow['root_path_id']))
        self.assertEqual(hierarchy, arrow['hierarchy'])
        self.assertEqual([item['name'] for item in hierarchy], ['Projectile_NinjaPig_Arrow', 'Projectile', 'Sprite', 'Trail'])
        self.assertEqual(arrow['motion_components'][0]['source']['path_id'], 13)
        self.assertEqual(arrow['motion_components'][0]['duration'], 0.25)
        sprites = [sprite for item in exported['projectiles'] for sprite in item['sprites']]
        self.assertEqual(sum(item['status'] == 'extracted' for item in sprites), 47)
        self.assertEqual(sum(item['status'] == 'unsupported_atlas_type' for item in sprites), 3)
        image = (ROOT / arrow['sprites'][0]['image']).read_bytes()
        self.assertEqual(image[:8], b'\x89PNG\r\n\x1a\n')
        self.assertEqual(struct.unpack_from('>II', image, 16), (136, 28))
        self.assertEqual(arrow['sprites'][0]['sprite_name'], 'MainHand_NinjaBowman_Projectile')
        self.assertEqual(arrow['sprites'][0]['rect'], [277, 145, 136, 28])
        for malformed in (data[:-1], data + b'\0\0\0\0'):
            with self.assertRaises(ValueError):
                decode_provider(malformed)

    def test_original_projectile_motion_curves_and_fixed_duration(self):
        exported = json.loads((ROOT / 'content/motion.json').read_text(encoding='utf-8'))
        self.assertEqual(len(exported['components']), 671)
        arrow = next(item for item in exported['components']
                     if item['source']['source'].endswith('/0c519e025cd69694fb27e08d80960e5a'))
        self.assertEqual((arrow['object_name'], arrow['source']['path_id']), ('Projectile', 13))
        data = Extractor().data(arrow['source'])
        decoded = decode_motion(data)
        self.assertEqual((decoded['timing'], decoded['duration'], decoded['speed']), (0, 0.25, 0.))
        self.assertEqual([item['axis'] for item in decoded['axes']], [0, 1])
        self.assertEqual([key['time'] for key in decoded['axes'][0]['curve']['keys']], [0., 1.])
        self.assertEqual([key['value'] for key in decoded['axes'][0]['curve']['keys']], [0., 1.])
        for malformed in (data[:-1], data + b'\0\0\0\0', data[:92] + struct.pack('<i', 2) + data[96:]):
            with self.assertRaises((ValueError, struct.error)):
                decode_motion(malformed)

    def test_pacing_uses_original_scene_values_and_consumes_exact_component(self):
        exported = json.loads((ROOT / 'content/pacing.json').read_text(encoding='utf-8'))
        names, metadata_hash = field_names()
        extractor = Extractor()
        source = exported['source']
        data = extractor.data(source)
        _, values = decode_component(data, names)
        self.assertEqual(exported['metadata_sha256'], metadata_hash)
        self.assertEqual(values, exported['values'])
        self.assertEqual(len(values), 40)
        self.assertEqual(values['m_FallBackTimeWaitForSkillImpact'], 1.5)
        self.assertEqual(values['m_DelayForAllMultiAttacks'], 0.5)
        self.assertEqual(values['m_TimeForShowDamageAndReturnToBasePosInSec'], 0.75)
        for malformed in (data[:-1], data + b'\0\0\0\0', data[:32] + struct.pack('<f', math.nan) + data[36:]):
            with self.assertRaises((ValueError, struct.error)):
                decode_component(malformed, names)

    def test_rejects_truncated_and_invalid_protobuf(self):
        for data in (b"\x80", b"\x0a\x04ab", b"\x0d\x00", b"\x00", b"\x0b"):
            with self.subTest(data=data), self.assertRaises(ValueError):
                fields(data)

    def test_duplicate_singular_fields_are_rejected(self):
        with self.assertRaises(ValueError):
            one(b"\x08\x01\x08\x02", 1)

    def test_negative_one_duration_is_preserved_as_signed_int32(self):
        self.assertEqual(signed_integer(b"\x30" + b"\xff" * 9 + b"\x01", 6), -1)
        self.assertEqual(signed_integer(b"\x30\x03", 6), 3)

    def test_original_campaign_fixed_waves_and_enemy_counts(self):
        campaign = json.loads((ROOT / "content/campaign.json").read_text(encoding="utf-8"))
        self.assertEqual(len(campaign['encounters']), 167)
        self.assertEqual(sum(len(e['waves']) for e in campaign['encounters']), 291)
        first = campaign['encounters'][0]
        self.assertEqual(first['battle_id'], 'battle_001')
        self.assertEqual(first['max_birds'], 1)
        enemies = [campaign['pigs'][s['pig']]['id'] for s in first['waves'][0]['spawns']]
        self.assertEqual(enemies, ['pig_minion_rogue_bird1_1hit', 'pig_minion_stickpig_bird1_1hit'])

    def test_original_enemy_combo_chains_and_target_rules(self):
        campaign = json.loads((ROOT / 'content/campaign.json').read_text(encoding='utf-8'))
        catalog = json.loads((ROOT / 'content/catalog.json').read_text(encoding='utf-8'))
        skills = catalog['skills']
        captain = next(pig for pig in campaign['pigs'] if pig['id'] == 'pig_knight_guard_captain_bird1')
        self.assertEqual(captain['combos'][0]['weight'], 100.)
        self.assertEqual([skills[i]['id'] for i in captain['combos'][0]['skills']],
                         ['pig_support_knight_guard_captain'] + ['pig_attack_knight_guard_captain'] * 3)
        boss = next(pig for pig in campaign['pigs'] if pig['id'] == 'pig_moustache_pirate_captain_boss')
        self.assertEqual([combo['weight'] for combo in boss['combos']], [30., 70.])
        shaman = next(skill for skill in skills if skill['id'] == 'pig_support_shaman_shaman')
        self.assertEqual((shaman['target_type'], shaman['targeting'], shaman['target_self']), (2, 1, True))

    def test_original_container_counts_and_known_knight_values(self):
        tables, _ = load_tables()
        self.assertEqual(len(tables), 51)
        self.assertEqual(sum(map(len, tables.values())), 14551)
        self.assertEqual(len(tables["ClassSkinBalancingData"]), 116)
        self.assertEqual(len(tables["SkillBalancingData"]), 792)
        knight = next(row for row in tables["SkillBalancingData"]
                      if one(row, 1) == b"bird_attack_red_knight")
        parameters = {one(value, 1): struct.unpack("<f", one(value, 2))[0]
                      for field, kind, value in fields(knight) if field == 4 and kind == 2}
        self.assertEqual(parameters[b"damage_in_percent"], 115.0)
        self.assertEqual(one(knight, 5), b"SimpleAttackWithTauntSkill")

    def test_generated_catalog_has_complete_original_art(self):
        catalog = json.loads((ROOT / "content/catalog.json").read_text(encoding="utf-8"))
        manifest = json.loads((ROOT / "content/art-manifest.json").read_text(encoding="utf-8"))
        self.assertEqual(catalog["missing_localization_keys"], [])
        self.assertEqual(manifest["missing"], [])
        self.assertEqual({hat["id"] for hat in catalog["hats"]}, {entry["skin_id"] for entry in manifest["extracted"]})
        self.assertEqual(len({hat["class_id"] for hat in catalog["hats"]}), 34)
        for hat in catalog["hats"]:
            image = ROOT / "assets/hats" / (hat["id"] + ".png")
            self.assertTrue(image.read_bytes().startswith(b"\x89PNG\r\n\x1a\n"), hat["id"])

    def test_serialized_file_size_mismatch_is_rejected(self):
        data = struct.pack(">4I", 40, 99999, 17, 4096) + b"\0" * 48
        with self.assertRaisesRegex(ValueError, "size mismatch"):
            objects(data)

    def test_native_generic_binding_and_literal_slots(self):
        rows, _, got, literals = link()
        self.assertEqual(len(rows), 57393 + 24752)
        self.assertEqual(rows[38813]['method'], 'Init')
        self.assertTrue(rows[38813]['class'].endswith('ThornSkill'))
        self.assertEqual(rows[38813]['address'], 0x6bef2f)
        generic = next(row for row in rows
                       if row.get('analysis_id') == '34610-generic-1953')
        self.assertEqual(generic['method'], 'get_ModifiedAttack')
        self.assertEqual(generic['address'], 0x1603b55)
        self.assertEqual(generic['generic_class_arguments'],
                         ['ABH.GameDatas.BirdGameData'])
        # All logical generic instances retain distinct identities, even when
        # IL2CPP shares one native implementation between instantiations.
        instances = rows[57393:]
        self.assertEqual(len({row['analysis_id'] for row in instances}), len(instances))
        self.assertLess(len({row['address'] for row in instances}), len(instances))
        self.assertEqual(got, 0x1f11f44)
        self.assertTrue({'invoker', 'first_target', 'cleanse_target'} <= set(literals.values()))

    def test_recovered_character_models_cover_all_campaign_actors(self):
        data = json.loads((ROOT / 'content/characters.json').read_text(encoding='utf-8'))
        campaign = json.loads((ROOT / 'content/campaign.json').read_text(encoding='utf-8'))
        expected = {'RedBird', 'YellowBird', 'WhiteBird', 'BlackBird', 'BlueBirds'}
        expected.update(pig['asset_id'] for pig in campaign['pigs'])
        self.assertEqual(data['missing'], [])
        self.assertEqual({model['asset_id'] for model in data['models']}, expected)
        self.assertEqual(len(data['models']), 22)
        self.assertEqual(len(data['hats']), 116)
        self.assertEqual(len(data['textures']), 47)
        for model in data['models']:
            self.assertTrue(model['quads'])
            for quad in model['quads']:
                self.assertEqual(len(quad['vertices']) % 3, 0)
                self.assertTrue(all(math.isfinite(value) for vertex in quad['vertices'] for value in vertex))
                self.assertTrue(all(0 <= v[2] <= 1 and 0 <= v[3] <= 1 for v in quad['vertices']))
        for texture in data['textures']:
            self.assertTrue((ROOT / 'assets/characters' / (texture['name'] + '.png')).read_bytes().startswith(b'\x89PNG'))

    def test_original_knight_pivot_reconstructs_prefab_headgear_vertices(self):
        scene = Scene(Extractor())
        source = '7da99302a35b0fb408ed27b207d1f51b'
        animation = bone_animation(scene.file(source)[0][87][1])
        bone = next(bone for bone in animation['bones'] if bone['name'] == 'Headgear')
        self.assertEqual(bone['sprite'], (0, 79))
        matrix = pose_matrix(scene, source, bone['sprite'])
        self.assertEqual(transform_point(matrix, (0., 0., 0.)), [26., 54.])
        data = json.loads((ROOT / 'content/characters.json').read_text(encoding='utf-8'))
        hat = data['hats'][0]
        self.assertEqual(hat['id'], 'skin_knight')
        width, height = hat['size']
        px, py = hat['pivot']
        # Golden original quad: UL, LL, LR, UR. This catches the otherwise
        # plausible but wrong interpretation of pivot offsets as normalized UVs.
        expected = [(-width*px, height*(1-py), 0.), (-width*px, -height*py, 0.),
                    (width*(1-px), -height*py, 0.), (width*(1-px), height*(1-py), 0.)]
        for actual, target in zip(animation['vertices'][56:60], expected):
            for a, b in zip(actual, target): self.assertAlmostEqual(a, b, places=4)

    def test_red_idle_curves_and_native_speed_metadata_match_original(self):
        scene = Scene(Extractor())
        source, _, data = scene.resolve('7da99302a35b0fb408ed27b207d1f51b', (2, 1), 74)
        recovered = clip(data)
        self.assertEqual(source, '980bae8c2d4f100468f3ea58a88a91c4')
        self.assertEqual(recovered['name'], 'Idle')
        self.assertEqual({kind: len(curves) for kind, curves in recovered['curves'].items()},
                         {'rotation': 20, 'euler': 0, 'position': 20, 'scale': 39, 'float': 0})
        self.assertEqual(recovered['max_key_time'], 36.)
        self.assertEqual(recovered['curves']['position'][0]['keys'][0]['out_slope'][2], 'Infinity')
        skeleton = rig(scene, '7da99302a35b0fb408ed27b207d1f51b', 87)
        self.assertEqual(skeleton['clip_metadata']['serialized_offset'], 223932)
        records = {record['name']: record for record in skeleton['clip_metadata']['records']}
        self.assertEqual(records['Idle']['fps'], 24.)
        self.assertEqual(records['Blink']['fps'], 16.)
        self.assertEqual(recovered['max_key_time'] / records['Idle']['fps'], 1.5)

    def test_original_unordered_animation_keys_are_preserved_and_reported(self):
        scene = Scene(Extractor())
        data = scene.file('f6da59515878ce542bc7f1aaa22ed4d6')[0][1][1]
        recovered = clip(data)
        unordered = [record for curves in recovered['curves'].values() for record in curves if not record['time_ordered']]
        self.assertEqual(len(unordered), 4)
        self.assertTrue(any(a['time'] > b['time'] for record in unordered
                            for a, b in zip(record['keys'], record['keys'][1:])))
        manifest = json.loads((ROOT / 'content/animations.json').read_text(encoding='utf-8'))
        rigs = json.loads((ROOT / 'content/rigs.json').read_text(encoding='utf-8'))
        self.assertEqual(manifest['failures'], [])
        self.assertEqual(len(manifest['actors']), 22)
        self.assertEqual(sum(len(actor['clips']) for actor in manifest['actors']), 344)
        self.assertEqual(sum(len(skeleton['nodes']) for skeleton in rigs), 1072)

    def test_animation_reader_rejects_truncated_clip(self):
        with self.assertRaises(ValueError):
            clip(b'\x04\0\0\0Idle')

    def test_unity_events_and_smoothmoves_attack_impact_match_original_frames(self):
        scene = Scene(Extractor())
        skeleton = rig(scene, '7da99302a35b0fb408ed27b207d1f51b', 87)
        source = 'cc60f95234921174d8d3cdc746208c34'
        recovered = clip(scene.file(source)[0][1][1])
        self.assertEqual(recovered['unparsed_tail_bytes'], 0)
        self.assertEqual(recovered['name'], 'Action_Attack_1')
        self.assertEqual([event['time'] for event in recovered['events']], [0.,3.,4.,6.,7.,9.,10.,14.])
        self.assertEqual([event['int_parameter'] for event in recovered['events']], list(range(16,24)))
        impact = skeleton['trigger_frames']['frames'][21]
        self.assertEqual(impact['clip_index'], 5)
        self.assertEqual(impact['frame'], 9)
        cues = [bone for bone in impact['bones'] if 0 in bone['events']]
        self.assertEqual([(bone['node'], bone['tag']) for bone in cues], [(1, 'Impact')])
        self.assertEqual(impact['frame']/24., 0.375)

    def test_all_original_animation_event_tables_are_fully_read_and_bound(self):
        manifest = json.loads((ROOT / 'content/animations.json').read_text(encoding='utf-8'))
        self.assertEqual(manifest['failures'], [])
        self.assertEqual(sum(clip['event_count'] for actor in manifest['actors'] for clip in actor['clips']), 2352)
        for actor in manifest['actors']:
            for summary in actor['clips']:
                data = json.loads((ROOT / 'analysis/animations' / summary['file']).read_text(encoding='utf-8'))
                self.assertEqual(data['unparsed_tail_bytes'], 0)
                self.assertEqual(len(data['smoothmoves_frames']), len(data['events']))
                self.assertEqual([frame['frame'] for frame in data['smoothmoves_frames']],
                                 [event['time'] for event in data['events']])


if __name__ == "__main__":
    unittest.main()
