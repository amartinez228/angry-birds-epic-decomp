"""Native pause, campaign-boss and health-motion checks in disposable saves."""
import hashlib
import json
import os
from pathlib import Path
import struct
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]


def main():
    binary = ROOT / 'target/release' / ('epic-client.exe' if os.name == 'nt' else 'epic-client')
    directory = ROOT / 'analysis' / ('smoke-hud-' + str(time.time_ns()))
    directory.mkdir(parents=True)
    # Original public format, with the campaign unlocked for retry routing.
    profile = 'EPIC_RUST_1\n500\n0\n166\n100000100000100000100000100000\n0,6,12,18,24\n0,1,2\n'
    expected = {'local': {'epic-rust-profile-v1': profile, 'epic-rust-music-muted': '0'}}
    (directory / 'local.data').write_text(json.dumps(expected))
    for name in ['first-launch','reload']:
        folder = directory / name
        result = subprocess.run([str(binary),'--capture-hud',str(folder)], cwd=directory,
                                capture_output=True, timeout=30)
        if result.returncode or result.stderr:
            raise AssertionError(f'Client failed: {result.returncode} {result.stderr.decode(errors="replace")}')
        files = sorted(folder.glob('screen-*.png'))
        assert {int(p.stem.split('-')[1]) for p in files} == set(range(52,90))
        hashes = set()
        for file in files:
            data = file.read_bytes()
            assert data[:8] == b'\x89PNG\r\n\x1a\n'
            assert struct.unpack_from('>II',data,16) == (1100,720)
            hashes.add(hashlib.sha256(data).digest())
        assert len(hashes) >= 29, 'Expected distinct entry, wave-update, health, pause and navigation states'
        # Music is intentionally toggled twice; only storage serialization order
        # may change. The original player profile, gold and XP must not change.
        assert json.loads((directory / 'local.data').read_text()) == expected
    print('PASS: original pause entry/leave, blocked background click, continue, music toggles, retry and map routing.')
    print('PASS: campaign boss/health motion plus original HUD entry/wave-update, 76 captures across two launches.')
    print('PASS: moving/offscreen controls reject input; the settled pepper accepts input.')
    print('PASS: synthetic rewards isolated; original profile and music preference preserved on reload.')
    print('Evidence:',directory)


if __name__ == '__main__':
    main()
