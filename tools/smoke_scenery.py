"""Render every original campaign background in the real native client."""
import hashlib
import json
import os
from pathlib import Path
import struct
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]


def main():
    directory = ROOT/'analysis'/('smoke-scenery-'+str(time.time_ns()))
    directory.mkdir(parents=True)
    options = {}
    if os.name == 'nt':
        startup = subprocess.STARTUPINFO()
        startup.dwFlags |= subprocess.STARTF_USESHOWWINDOW
        startup.wShowWindow = subprocess.SW_HIDE
        options['startupinfo'] = startup
    result = subprocess.run([str(ROOT/'target/release/epic-client.exe'), '--capture-scenery', str(directory)],
                            cwd=directory, capture_output=True, timeout=60, **options)
    if result.returncode or result.stderr:
        raise AssertionError(f'Client failed: {result.returncode} {result.stderr.decode(errors="replace")}')
    expected = {scene['id'] for scene in json.loads((ROOT/'content/scenery-runtime.json').read_text())['scenes']}
    images = list(directory.glob('*.png'))
    assert {p.stem for p in images} == expected
    hashes = set()
    for path in images:
        image = path.read_bytes()
        assert image.startswith(b'\x89PNG\r\n\x1a\n')
        assert struct.unpack_from('>II', image, 16) == (1100, 720)
        hashes.add(hashlib.sha256(image).hexdigest())
    assert len(hashes) == 60, 'Expected distinct original scene rest poses'
    assert not (directory/'local.data').exists(), 'Scenery capture must not write a play save'
    print('PASS: all 60 campaign scenery IDs rendered as distinct native captures; no play save written.')
    print('Evidence:', directory)


if __name__ == '__main__':
    main()
