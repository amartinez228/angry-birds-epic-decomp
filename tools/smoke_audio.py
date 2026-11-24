"""Ask the Windows/macOS audio backend to accept every bundled music buffer.

Each asynchronous sound is stopped immediately; brief snippets may be audible.
API acceptance verifies the buffer/backend path, not speaker audibility or FMOD
mixing equivalence. macOS also checks looping and MusicPlayer control lifecycle.
"""
import json
import os
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]


def main():
    if os.name != 'nt' and sys.platform != 'darwin':
        raise RuntimeError('Audio backend check requires Windows or macOS')
    directory = ROOT/'analysis'/('smoke-audio-'+str(time.time_ns()))
    directory.mkdir(parents=True)
    options = {}
    if os.name == 'nt':
        startup = subprocess.STARTUPINFO()
        startup.dwFlags |= subprocess.STARTF_USESHOWWINDOW
        startup.wShowWindow = subprocess.SW_HIDE
        options['startupinfo'] = startup
    binary = ROOT/'target/release'/('epic-client.exe' if os.name == 'nt' else 'epic-client')
    result = subprocess.run([str(binary), '--check-audio'],
                            cwd=directory, capture_output=True, timeout=30, **options)
    output = result.stdout.decode(errors='replace')
    (directory/'backend.txt').write_text(output+result.stderr.decode(errors='replace'))
    expected = json.loads((ROOT/'content/music-runtime.json').read_text())['sounds']
    for sound in expected:
        for track in sound['tracks']:
            assert f'{sound["id"]} / {track}: accepted' in output, output
    assert result.returncode == 0 and not result.stderr, output
    if sys.platform == 'darwin':
        assert 'music controls: accepted' in output, output
    assert not (directory/'local.data').exists()
    print('PASS: native backend accepted all nine original music buffers; no save written.')
    if sys.platform == 'darwin':
        print('PASS: NSSound duration/playback/loop flags, mute/unmute, track changes, silent capture and drop cleanup.')
    print('Evidence:', directory)


if __name__ == '__main__':
    main()
