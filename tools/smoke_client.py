"""Exercise the real native UI and save migration in a fresh isolated folder."""
import argparse
import difflib
import hashlib
import json
import os
from pathlib import Path
import struct
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--read-only-fixture', type=Path,
                        help='Copy this local.data into isolation and verify two read-only launches')
    parser.add_argument('--migrate-first', action='store_true',
                        help='Exercise the Camp Red-selection migration action before isolated reload checks')
    args = parser.parse_args()
    if args.migrate_first and not args.read_only_fixture:
        parser.error('--migrate-first requires --read-only-fixture')
    binary = ROOT / "target/release" / ("epic-client.exe" if os.name == "nt" else "epic-client")
    directory = ROOT / "analysis" / ("smoke-client-" + str(time.time_ns()))
    directory.mkdir(parents=True)
    old = "EPIC_RUST_1\n500\n0\n0\n100000100000100000100000100000\n0,6,12,18,24\n0,1,2\n"
    (directory / "local.data").write_text(json.dumps({"local": {"epic-rust-profile-v1": old}}), encoding="utf-8")
    options = {}
    if os.name == "nt":
        startup = subprocess.STARTUPINFO()
        startup.dwFlags |= subprocess.STARTF_USESHOWWINDOW
        startup.wShowWindow = subprocess.SW_HIDE
        options["startupinfo"] = startup

    def run(folder, exercise=False, migration=False, revival=False, party_revival=False, score=False, mastery=False, equipment=False):
        args = [str(binary), "--capture-ui", str(folder)]
        if exercise:
            args.append("--exercise-save")
        if migration:
            args.append('--exercise-migration')
        if revival:
            args.append('--exercise-revival')
        if party_revival:
            args.append('--exercise-party-revival')
        if score:
            args.append('--exercise-score')
        if mastery:
            args.append('--exercise-mastery')
        if equipment:
            args.append('--exercise-equipment')
        result = subprocess.run(args, cwd=directory, capture_output=True, timeout=25, **options)
        if result.returncode or result.stderr:
            raise AssertionError(f"Client failed: {result.returncode} {result.stderr.decode(errors='replace')}")
        images = sorted(folder.glob("screen-*.png"))
        assert len(images) == 52
        hashes = set()
        for image in images:
            data = image.read_bytes()
            assert data.startswith(b"\x89PNG\r\n\x1a\n")
            assert struct.unpack_from(">II", data, 16) == (1100, 720)
            hashes.add(hashlib.sha256(data).digest())
        assert len(hashes) == 52, "Expected distinct battle, inventory, wheel, projectile, class-effect, pepper and health HUD screens"

    if args.read_only_fixture:
        fixture = args.read_only_fixture.read_bytes()
        (directory / 'local.data').write_bytes(fixture)
        if args.migrate_first:
            run(directory / 'fixture-migration', migration=True)
            fixture = (directory / 'local.data').read_bytes()
        (directory / 'before-read-only.data').write_bytes(fixture)
        for index in range(2):
            run(directory / f'read-only-{index}')
            actual = (directory / 'local.data').read_bytes()
            difference = '\n'.join(difflib.unified_diff(
                fixture.decode().splitlines(), actual.decode().splitlines(),
                fromfile='before', tofile='after'))
            assert actual == fixture, 'Read-only launch changed save:\n' + difference
        print('PASS: two read-only launches, 104 captures, unchanged save. Evidence:', directory)
        return

    run(directory / "first-launch", exercise=True)
    saved = (directory / "local.data").read_bytes()
    local = json.loads(saved)["local"]
    profile = local["epic-rust-profile-v1"].splitlines()
    assert profile[0] == "EPIC_RUST_9"
    resources = dict((row.split(':')[0], tuple(map(int, row.split(':')[1:]))) for row in profile[13].split(','))
    assert len(resources) == 23
    assert resources['resource_wood'] == (6, 1)
    assert resources['recipe_vial'] == (2, 1)
    assert resources['recipe_weapon_red_lance_01'] == (1, 2)
    assert 'gold' not in resources and 'experience' not in resources
    assert profile[8] == '0'
    assert profile[9] == '-'
    assert profile[10] == '-'
    assert profile[1] == "350"
    assert profile[2] == '7', 'Original pig XP plus five-point clear bonus should persist after real UI attack'
    assert profile[3] == '1'
    assert profile[4] == "hotspot_002_battleground"
    assert profile[6].split(",")[0] == "skin_eliteknight"
    assert local["epic-rust-profile-backup-v1"] == old
    assert local['epic-rust-music-muted'] == '1', 'Music preference should persist after using the real button'
    run(directory / "second-launch")
    assert (directory / "local.data").read_bytes() == saved, "Read-only second launch changed the save"
    # Verify the previous public Desktop format as well, preserving its exact
    # original bytes while converting total XP to native residual progression.
    legacy = profile[:8]
    legacy[0] = 'EPIC_RUST_3'
    legacy.pop(3)
    legacy[2] = '250'
    previous = '\n'.join(legacy)+'\n'
    (directory/'local.data').write_text(json.dumps({'local':{'epic-rust-profile-v1':previous, 'epic-rust-music-muted':'1'}}))
    run(directory/'v3-migration', migration=True)
    latest = json.loads((directory/'local.data').read_bytes())['local']
    migrated = latest['epic-rust-profile-v1'].splitlines()
    assert latest['epic-rust-profile-backup-v3'] == previous
    assert latest['epic-rust-music-muted'] == '1'
    assert migrated[:4] == ['EPIC_RUST_9', '350', '37', '3']
    assert migrated[4:] == profile[4:], 'Migration changed campaign, ownership, hats or party'
    run(directory/'single-bird-revival', revival=True)
    revived_save = (directory/'local.data').read_bytes()
    revived_local = json.loads(revived_save)['local']
    revived = revived_local['epic-rust-profile-v1'].splitlines()
    assert revived[1] == '345', 'Single-bird revive must charge exactly five gold'
    assert revived[:1]+revived[2:] == migrated[:1]+migrated[2:], 'Revival changed unrelated progression'
    assert revived_local['epic-rust-profile-backup-v3'] == previous
    run(directory/'revival-reload')
    assert (directory/'local.data').read_bytes() == revived_save, 'Reopening charged for revival again'
    # Current public Desktop format: v4 has no full-party revive entitlement.
    old_v4 = revived[:8]
    old_v4[0] = 'EPIC_RUST_4'
    old_v4 = '\n'.join(old_v4)+'\n'
    fixture_local = dict(revived_local)
    fixture_local['epic-rust-profile-v1'] = old_v4
    (directory/'local.data').write_text(json.dumps({'local':fixture_local}))
    run(directory/'free-party-revival', party_revival=True)
    free_save = (directory/'local.data').read_bytes()
    free_local = json.loads(free_save)['local']
    free = free_local['epic-rust-profile-v1'].splitlines()
    assert free_local['epic-rust-profile-backup-v4'] == old_v4
    assert free[0] == 'EPIC_RUST_9' and free[1] == '345' and free[8] == '1'
    assert free[2:8] == revived[2:8], 'Free party revival changed progression'
    run(directory/'free-party-reload')
    assert (directory/'local.data').read_bytes() == free_save
    run(directory/'paid-party-revival', party_revival=True)
    paid_save = (directory/'local.data').read_bytes()
    paid_local = json.loads(paid_save)['local']
    paid = paid_local['epic-rust-profile-v1'].splitlines()
    assert paid[1] == '335' and paid[8] == '1', 'Later full-party revival must charge ten gold'
    assert paid[2:] == free[2:]
    assert paid_local['epic-rust-profile-backup-v4'] == old_v4
    run(directory/'paid-party-reload')
    assert (directory/'local.data').read_bytes() == paid_save
    old_v5=paid[:9]
    old_v5[0]='EPIC_RUST_5'
    old_v5='\n'.join(old_v5)+'\n'
    scored_fixture=dict(paid_local)
    scored_fixture['epic-rust-profile-v1']=old_v5
    (directory/'local.data').write_text(json.dumps({'local':scored_fixture}))
    run(directory/'score-and-stars',score=True)
    score_save=(directory/'local.data').read_bytes()
    score_local=json.loads(score_save)['local']
    scored=score_local['epic-rust-profile-v1'].splitlines()
    assert score_local['epic-rust-profile-backup-v5']==old_v5
    assert scored[:4]==['EPIC_RUST_9','535','42','3']
    assert scored[4]=='hotspot_003_battleground'
    assert scored[8]=='1' and scored[9]=='hotspot_002_battleground=3'
    assert scored[5:8]==paid[5:8]
    assert len(scored[11].split(',')) == 11, 'Victory wheel must add a separately owned sword'
    assert scored[12] == profile[12], 'Wheel gear must not replace the chosen loadout'
    score_resources = dict((row.split(':')[0], tuple(map(int, row.split(':')[1:]))) for row in scored[13].split(','))
    assert scored[11].split(',')[-1] == 'bird_weapon_red_sword_introwheel:3:0:0:0'
    assert score_resources['ingredient_vial'] == (9, 1)
    assert score_resources['resource_seashell'] == (5, 1)
    run(directory/'score-reload')
    assert (directory/'local.data').read_bytes()==score_save, 'Reopening duplicated victory gold, XP or stars'
    old_v6=scored[:10]
    old_v6[0]='EPIC_RUST_6'
    old_v6='\n'.join(old_v6)+'\n'
    mastery_fixture=dict(score_local)
    mastery_fixture['epic-rust-profile-v1']=old_v6
    (directory/'local.data').write_text(json.dumps({'local':mastery_fixture}))
    run(directory/'v6-migration',migration=True)
    mastery_local=json.loads((directory/'local.data').read_bytes())['local']
    assert mastery_local['epic-rust-profile-backup-v6']==old_v6
    mastery_profile=mastery_local['epic-rust-profile-v1'].splitlines()
    assert mastery_profile[:11]==scored[:11]
    assert mastery_profile[11:] == profile[11:], 'Legacy v6 initializes absent gear/resources from starters'
    encounters=json.loads((ROOT/'content/campaign.json').read_text())['encounters']
    mastery_profile[4]=encounters[33]['id']
    mastery_profile[9]=','.join(f'{row["id"]}=3' for row in encounters[:33])+f',{encounters[33]["id"]}=1'
    mastery_profile[10]='class_knight=1:13'
    mastery_local['epic-rust-profile-v1']='\n'.join(mastery_profile)+'\n'
    (directory/'local.data').write_text(json.dumps({'local':mastery_local}))
    run(directory/'mastery-rank-up',mastery=True)
    mastery_save=(directory/'local.data').read_bytes()
    ranked_local=json.loads(mastery_save)['local']
    ranked=ranked_local['epic-rust-profile-v1'].splitlines()
    assert ranked[:4]==['EPIC_RUST_9','535','47','3']
    assert ranked[4:10]==mastery_profile[4:10]
    assert ranked[10]=='class_knight=2:0'
    assert ranked_local['epic-rust-profile-backup-v6']==old_v6
    run(directory/'mastery-reload')
    assert (directory/'local.data').read_bytes()==mastery_save, 'Reopening duplicated mastery rewards'
    # v7 public Desktop save gains the ten original starter instances, with
    # its exact previous representation backed up before any changed write.
    old_v7=ranked[:11]
    old_v7[0]='EPIC_RUST_7'
    old_v7='\n'.join(old_v7)+'\n'
    gear_local=dict(ranked_local)
    gear_local['epic-rust-profile-v1']=old_v7
    (directory/'local.data').write_text(json.dumps({'local':gear_local}))
    run(directory/'v7-inventory-migration',migration=True)
    migrated_gear_save=(directory/'local.data').read_bytes()
    gear_local=json.loads(migrated_gear_save)['local']
    assert gear_local['epic-rust-profile-backup-v7']==old_v7
    gear_profile=gear_local['epic-rust-profile-v1'].splitlines()
    assert gear_profile==ranked
    assert len(gear_profile[11].split(','))==10
    assert gear_profile[12]=='0,1,2,3,4,5,6,7,8,9'
    run(directory/'v7-inventory-reload')
    actual_reload = (directory/'local.data').read_bytes()
    if actual_reload != migrated_gear_save:
        (directory/'before-v7-reload.data').write_bytes(migrated_gear_save)
        raise AssertionError('Read-only v7 reload changed save; before-v7-reload.data retains the expected bytes')
    # Seed a distinct owned copy, then use the actual Equipment screen button.
    # Acquisition isn't implemented yet; this isolated fixture never touches
    # the player's Desktop save or gifts equipment during normal play.
    starter_id=gear_profile[11].split(',')[0].split(':')[0]
    gear_profile[11]+=f',{starter_id}:2:0:1:0'
    gear_local['epic-rust-profile-v1']='\n'.join(gear_profile)+'\n'
    (directory/'local.data').write_text(json.dumps({'local':gear_local}))
    run(directory/'equip-owned-gear',equipment=True)
    equipped_save=(directory/'local.data').read_bytes()
    equipped_local=json.loads(equipped_save)['local']
    equipped=equipped_local['epic-rust-profile-v1'].splitlines()
    assert equipped[:12]==gear_profile[:12], 'Equipping changed ownership or unrelated progress'
    assert equipped[12]=='10,1,2,3,4,5,6,7,8,9'
    assert equipped_local['epic-rust-profile-backup-v7']==old_v7
    run(directory/'equipment-reload')
    assert (directory/'local.data').read_bytes()==equipped_save, 'Reopening changed equipped gear or rewards'
    # v8 migration preserves owned/equipped gear and backs up its exact source.
    old_v8 = equipped[:13]
    old_v8[0] = 'EPIC_RUST_8'
    old_v8 = '\n'.join(old_v8) + '\n'
    equipped_local['epic-rust-profile-v1'] = old_v8
    (directory/'local.data').write_text(json.dumps({'local':equipped_local}))
    run(directory/'v8-resource-migration', migration=True)
    resource_save = (directory/'local.data').read_bytes()
    resource_local = json.loads(resource_save)['local']
    assert resource_local['epic-rust-profile-backup-v8'] == old_v8
    assert resource_local['epic-rust-profile-v1'].splitlines() == equipped
    run(directory/'v8-resource-reload')
    assert (directory/'local.data').read_bytes() == resource_save
    # A changed saved stack remains changed on both read-only and later writes.
    stored = resource_local['epic-rust-profile-v1'].splitlines()
    stored[13] = stored[13].replace('resource_wood:6:1', 'resource_wood:15:1')
    resource_local['epic-rust-profile-v1'] = '\n'.join(stored) + '\n'
    (directory/'local.data').write_text(json.dumps({'local':resource_local}))
    used_save = (directory/'local.data').read_bytes()
    run(directory/'resource-values-reload')
    assert (directory/'local.data').read_bytes() == used_save, 'Reopening reseeded resources'
    run(directory/'resource-values-save', migration=True)
    persisted = json.loads((directory/'local.data').read_bytes())['local']
    assert persisted['epic-rust-profile-v1'].splitlines() == stored
    assert persisted['epic-rust-profile-backup-v8'] == old_v8
    print("PASS: v8 exact backup, v9 resource migration, recipe values/levels and persisted changed stacks without reseeding.")
    print("PASS: purchase through UI, original skin equipped, gold deducted, v1/v3/v4/v5/v6 backups retained, v9 saved and reloaded.")
    print("PASS: music muted through the UI; saved preference survives a read-only second launch.")
    print("PASS: original defeat XP and once-only battle-clear bonus saved as 7 XP; reopening does not duplicate rewards.")
    print("PASS: v3 level-three progress migrated with 37 / 74 XP; exact prior save retained.")
    print("PASS: single-bird revive through the real UI, full HP and original recovery animation, exactly five gold saved, read-only reload without another charge.")
    print("PASS: free first full-party revive, persisted entitlement, later ten-gold revive, exact v4 migration backup and read-only reloads.")
    print("PASS: original 24,000-point victory, three stars claimed through UI, v5 migration and read-only reload without duplicate gold/XP/stars.")
    print("PASS: v6 mastery migration preserves stars/revive entitlement; real attack after 100 stars ranks Knight up, updates HP and saves shared class progress exactly once.")
    print("PASS: 1144 captures across twenty-two launches, including class effects, pepper states and six-enemy health HUD edge cases.")
    print("PASS: original tutorial wheel sword, vial and seashell saved with unchanged loadout; read-only reload does not duplicate victory rewards.")
    print("PASS: exact v7 backup, ten original starter instances, real Equipment button saves a separately owned copy, read-only reload preserves loadout and progress.")
    print("Evidence:", directory)


if __name__ == "__main__":
    main()
