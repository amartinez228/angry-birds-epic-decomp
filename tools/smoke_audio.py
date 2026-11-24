"""Ask the real Windows audio backend to accept every bundled music buffer.

Each asynchronous sound is stopped immediately. API acceptance verifies the
buffer/backend path, not that speakers are audible or FMOD mixing is matched.
"""
import json
import os
from pathlib import Path
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]


def main():
    if os.name != 'nt':
        raise RuntimeError('Initial audio backend check requires Windows')
    directory = ROOT/'analysis'/('smoke-audio-'+str(time.time_ns()))
    directory.mkdir(parents=True)
    startup = subprocess.STARTUPINFO()
    startup.dwFlags |= subprocess.STARTF_USESHOWWINDOW
    startup.wShowWindow = subprocess.SW_HIDE
    result = subprocess.run([str(ROOT/'target/release/epic-client.exe'), '--check-audio'],
                            cwd=directory, capture_output=True, timeout=30, startupinfo=startup)
    output = result.stdout.decode(errors='replace')
    (directory/'backend.txt').write_text(output+result.stderr.decode(errors='replace'))
    expected = json.loads((ROOT/'content/music-runtime.json').read_text())['sounds']
    for sound in expected:
        for track in sound['tracks']:
            assert f'{sound["id"]} / {track}: accepted' in output, output
    assert result.returncode == 0 and not result.stderr, output
    assert not (directory/'local.data').exists()
    print('PASS: Windows backend accepted all nine original music buffers; no save written.')
    print('Evidence:', directory)


if __name__ == '__main__':
    main()
