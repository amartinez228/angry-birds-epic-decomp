"""Bind original SoundManager/provider/resource references and recover audio.

Every original AudioClip's external range is checked against its FSB metadata.
Vorbis packets are repackaged without re-encoding. A separate stb decoder
validates frame counts and makes PCM WAV inputs for the native audio backend.
"""
import ctypes
from collections import Counter
import hashlib
import json
import math
import struct
import wave

from extract_unity import Reader, objects
from fsb_audio import bank, ogg, setup_table
from recover_art import Extractor, ROOT
from recover_characters import Scene, count, external_names
from recover_projectiles import game_object, provider


def clip(data):
    reader = Reader(data)
    name = reader.string()
    load_type, channels, rate, bits = reader.unpack('<4i')
    length = reader.unpack('<f')[0]
    tracker = reader.read(1)[0]
    reader.align()
    subsound = reader.integer()
    flags = reader.unpack('<3B')
    reader.align()
    source = reader.string()
    offset, size, compression = reader.unpack('<QQi')
    if reader.pos != len(data) or tracker or subsound or compression != 1 or not source:
        raise ValueError('Unsupported original AudioClip layout')
    if not all(f in (0, 1) for f in flags) or not 1 <= channels <= 8 or rate <= 0 or bits != 16:
        raise ValueError('Invalid AudioClip format/flags')
    if not math.isfinite(length) or length <= 0:
        raise ValueError('Invalid AudioClip duration')
    return dict(name=name, load_type=load_type, channels=channels, sample_rate=rate, bits_per_sample=bits,
                duration=length, subsound=subsound, preload=bool(flags[0]), load_in_background=bool(flags[1]),
                legacy_3d=bool(flags[2]), resource=source, resource_offset=offset, resource_size=size,
                compression=compression)


def sound_manager(data):
    reader = Reader(data, 28)
    reader.string()
    sounds = []
    for _ in range(count(reader, 10000)):
        identifier = reader.string()
        assets = [reader.string() for _ in range(count(reader, 1000))]
        channel, muted, volume = reader.unpack('<iif')
        parameters = [reader.unpack('<if') for _ in range(count(reader, 100))]
        priority = reader.integer()
        source = reader.unpack('<iq')
        if muted not in (0, 1) or not math.isfinite(volume) or not 0 <= volume <= 1:
            raise ValueError('Invalid Sound settings')
        if any(kind not in range(5) or not math.isfinite(value) for kind, value in parameters):
            raise ValueError('Invalid SoundParameter')
        # Sound.Init uses parameter presence, including when Value is zero.
        kinds = {kind for kind, _ in parameters}
        fade = next((value for kind, value in reversed(parameters) if kind == 3), 0.)
        sounds.append(dict(id=identifier, asset_names=assets, channel=channel, muted=bool(muted),
            volume=volume, parameters=parameters, asset_priority=priority, source=source,
            looping=0 in kinds, one_shot=1 in kinds, primary_music=2 in kinds,
            secondary_music=4 in kinds, fade_time=fade))
    default_source = reader.unpack('<iq')
    providers = []
    for _ in range(count(reader, 100)):
        providers.append(dict(priority=reader.integer(), pointer=reader.unpack('<iq')))
    if reader.pos != len(data):
        raise ValueError('Unsupported SoundManager suffix')
    return dict(sounds=sounds, default_source=default_source, providers=providers)


class Decoder:
    def __init__(self):
        self.dll = ctypes.CDLL(str(ROOT/'analysis/unity/audio_decode.dll'))
        self.dll.epic_vorbis_decode.argtypes = [ctypes.c_void_p, ctypes.c_int, ctypes.POINTER(ctypes.c_int),
                                              ctypes.POINTER(ctypes.c_int), ctypes.POINTER(ctypes.c_void_p)]
        self.dll.epic_vorbis_decode.restype = ctypes.c_int
        self.dll.epic_vorbis_free.argtypes = [ctypes.c_void_p]

    def decode(self, data):
        channels, rate, pointer = ctypes.c_int(), ctypes.c_int(), ctypes.c_void_p()
        frames = self.dll.epic_vorbis_decode(data, len(data), ctypes.byref(channels), ctypes.byref(rate), ctypes.byref(pointer))
        try:
            if frames <= 0 or not pointer.value or not 1 <= channels.value <= 8 or rate.value <= 0:
                raise ValueError('Independent Vorbis decoder rejected recovered Ogg')
            return frames, channels.value, rate.value, ctypes.string_at(pointer, frames*channels.value*2)
        finally:
            if pointer.value:
                self.dll.epic_vorbis_free(pointer)


def recover():
    extractor = Extractor()
    scene = Scene(extractor)
    scripts = [entry for entry in extractor.inventory if entry['class_id'] == 115 and entry.get('name') == 'SoundManager']
    if len(scripts) != 1:
        raise ValueError('Expected unique SoundManager script')
    script = scripts[0]
    matches = []
    for entry in extractor.inventory:
        if entry['class_id'] != 114 or entry['size'] < 28:
            continue
        data = extractor.data(entry)
        pointer = struct.unpack_from('<iq', data, 16)
        if pointer[1] != script['path_id']:
            continue
        resolved = scene.resolve(entry['source'].split('/')[-1], pointer, 115)
        if resolved[0] == script['source'].split('/')[-1]:
            matches.append((entry, data))
    if len(matches) != 1:
        raise ValueError('Expected unique shipped SoundManager component')
    entry, manager_data = matches[0]
    manager_id = entry['path_id']
    source = entry['source'].split('/')[-1]
    manager = sound_manager(manager_data)
    managers = extractor.archives['com.rovio.gold.apk'].read('assets/bin/Data/globalgamemanagers')
    references = external_names(managers)
    containers = [managers[at:at+size] for _, kind, at, size in objects(managers) if kind == 147]
    if len(containers) != 1:
        raise ValueError('Expected unique ResourceManager')
    reader = Reader(containers[0])
    resources = {}
    for _ in range(count(reader, 100000)):
        path, pointer = reader.string(), reader.unpack('<iq')
        resources.setdefault(path, []).append(pointer)
    providers = []
    for item in manager['providers']:
        target, pid, data = scene.resolve(source, item['pointer'], 114)
        decoded = provider(data)
        name = game_object(scene, target, struct.unpack_from('<iq', data))[2]
        if decoded['path_addition']:
            raise ValueError('Unsupported audio provider prefix')
        bindings = []
        for asset in decoded['entries']:
            pointers = resources.get(asset['path'].lower(), [])
            if asset['loading_type'] != 0 or asset['asset_link'][1] or len(pointers) != 1:
                raise ValueError('Unsupported or ambiguous audio loading route')
            file_id, path_id = pointers[0]
            if not 1 <= file_id <= len(references):
                raise ValueError('Invalid audio external file reference')
            clip_source = references[file_id-1]
            raw = scene.resolve(clip_source, (0, path_id), 83)[2]
            bindings.append(dict(**asset, source=clip_source, path_id=path_id,
                                 clip_name=clip(raw)['name'], clip_sha256=hashlib.sha256(raw).hexdigest()))
        providers.append(dict(priority=item['priority'], source=target, path_id=pid, name=name,
                              sha256=hashlib.sha256(data).hexdigest(), bindings=bindings))
    music_ids = {(sound['asset_priority'], name) for sound in manager['sounds']
                 if sound['primary_music'] or sound['secondary_music'] for name in sound['asset_names']}
    music_refs = {(binding['source'], binding['path_id']) for p in providers for binding in p['bindings']
                  if (p['priority'], binding['id']) in music_ids}
    table, decoder = setup_table(), Decoder()
    clips = []
    for entry in extractor.inventory:
        if entry['class_id'] != 83:
            continue
        data = extractor.data(entry)
        info = clip(data)
        names = [name for name in extractor.archives[entry['archive']].namelist()
                 if name.rsplit('/', 1)[-1] == info['resource'].replace('\\', '/').rsplit('/', 1)[-1]]
        if len(names) != 1:
            raise ValueError('AudioClip resource path absent or ambiguous')
        resource = extractor.archives[entry['archive']].read(names[0])
        offset, size = info['resource_offset'], info['resource_size']
        if offset+size > len(resource):
            raise ValueError('AudioClip resource range outside archive member')
        payload = resource[offset:offset+size]
        sample = bank(payload)
        if (sample['channels'], sample['sample_rate']) != (info['channels'], info['sample_rate']):
            raise ValueError('AudioClip and FSB format differ')
        if abs(info['duration']*info['sample_rate']-sample['sample_count']) > 2:
            raise ValueError('AudioClip and FSB duration differ')
        compressed = ogg(sample, table)
        frames, channels, rate, pcm = decoder.decode(compressed)
        if (frames, channels, rate) != (sample['sample_count'], sample['channels'], sample['sample_rate']):
            raise ValueError(f'Independent decoder frame count differs: {info["name"]}: {frames} vs {sample["sample_count"]}')
        digest = hashlib.sha256(data).hexdigest()
        path = f'assets/audio/{digest[:24]}.ogg'
        (ROOT/path).parent.mkdir(parents=True, exist_ok=True)
        (ROOT/path).write_bytes(compressed)
        # Preserve PCM only for music/output jingles used by the first backend.
        music = (entry['source'].split('/')[-1], entry['path_id']) in music_refs
        wav_path = None
        if music:
            wav_path = path[:-4]+'.wav'
            with wave.open(str(ROOT/wav_path), 'wb') as output:
                output.setnchannels(channels)
                output.setsampwidth(2)
                output.setframerate(rate)
                output.writeframes(pcm)
        clips.append(dict(**info, archive=entry['archive'], source=entry['source'].split('/')[-1], path_id=entry['path_id'],
                          sha256=digest, resource_member=names[0], bank_sha256=hashlib.sha256(payload).hexdigest(),
                          sample_count=frames, vorbis_crc32=sample['vorbis_crc32'], metadata=sample['metadata'],
                          packet_count=len(sample['packets']), ogg=path, ogg_sha256=hashlib.sha256(compressed).hexdigest(),
                          pcm_sha256=hashlib.sha256(pcm).hexdigest(), wav=wav_path))
    by_reference = {(item['source'], item['path_id']):item for item in clips}
    missing = []
    for sound in manager['sounds']:
        selected = [p for p in providers if p['priority'] == sound['asset_priority']]
        if len(selected) != 1:
            raise ValueError('Ambiguous sound asset priority')
        sound['clips'] = []
        for name in sound['asset_names'] or [sound['id']]:
            matches = [b for b in selected[0]['bindings'] if b['id'] == name]
            if len(matches) != 1:
                missing.append(dict(sound=sound['id'], asset=name, priority=sound['asset_priority']))
                continue
            binding = matches[0]
            recovered = by_reference[binding['source'], binding['path_id']]
            sound['clips'].append(recovered['sha256'])
    result = dict(manager=dict(source=source, path_id=manager_id,
                              sha256=hashlib.sha256(manager_data).hexdigest(), default_source=manager['default_source']),
                  sounds=manager['sounds'], providers=providers, clips=clips, missing_bindings=missing,
                  duplicate_sound_ids={key:value for key, value in Counter(s['id'] for s in manager['sounds']).items() if value > 1},
                  duplicate_lookup_behavior='First definition wins in native SoundManager.Initialize; all serialized rows retained',
                  setup_table_sha256=hashlib.sha256((ROOT/'tools/vendor/python-fsb5/vorbis_headers.py').read_bytes()).hexdigest(),
                  limitations=['No runtime sound-effect/cue routing yet; original mixer, fades and backend behavior unfinished',
                               'Vorbis samples independently decoded, but original FMOD sample equivalence and audible playback comparison unverified'])
    (ROOT/'content/audio.json').write_text(json.dumps(result, indent=2)+'\n', encoding='utf-8')
    print('Recovered', len(clips), 'clips,', len(manager['sounds']), 'sound IDs;', len(missing), 'unbound configured assets')


if __name__ == '__main__':
    recover()
