# Local reconstruction inputs and tools

The game images, font, localization, and balancing content are extracted from
the user's supplied Angry Birds Epic package, `com.rovio.gold` version
3.0.27463.4821. They are original game material, not new artwork made for this
project. `content/catalog.json` and `content/art-manifest.json` preserve the
catalog and atlas identities used for conversion. Raw container provenance is
retained in `analysis/content/manifest.json`.
`content/characters.json` records actor source hashes, component IDs, rigid
sprite geometry, part transforms and equipped headgear placement data. Original
character images are converted to PNG under `assets/characters/`.

The asset conversion helper vendors ETC texture decoding code from
[K0lb3/texture2ddecoder](https://github.com/K0lb3/texture2ddecoder), under its
MIT license. Copyright (c) 2020 K0lb3. The full license and the additional
endianness header notice are preserved in `tools/vendor/texture2ddecoder/`.
`bridge.cpp` is a local wrapper. This helper runs during asset preparation;
it is not linked into the Rust executable.

The metadata inspector uses IL2CPP v23 layout information from
[Il2CppDumper](https://github.com/Perfare/Il2CppDumper/blob/master/Il2CppDumper/Il2Cpp/MetadataClass.cs).
REA's workflow and section validation approach informed the investigation.
REA's runtime has not been executed; the local v23 reader is separate code.

Unity 5.6 object, external-reference, transform and material serialization
layouts were checked against the primary format-reader implementation in
[Perfare/AssetStudio](https://github.com/Perfare/AssetStudio/tree/master/AssetStudio/Classes).
`tools/recover_characters.py` is a local reader; it does not vendor AssetStudio.
SmoothMoves serialization was reconstructed from the supplied game's metadata
field order and checked against its saved arrays, pointers and prefab vertices.
The animation curve reader uses the Unity 5.6 layouts documented by
[AssetStudio's AnimationClip reader](https://github.com/Perfare/AssetStudio/blob/master/AssetStudio/Classes/AnimationClip.cs).
Clip playback metadata is independently matched to the supplied actor clip
lists and bone IDs; its speed assignment is traced in the original native code.
The projectile binding reader checks ResourceManager's string/pointer container
layout against [AssetStudio's ResourceManager reader](https://github.com/Perfare/AssetStudio/blob/master/AssetStudio/Classes/ResourceManager.cs).
Provider and sprite fields are read from the supplied game's own declarations;
`content/projectiles.json` retains their pointers, hashes and extracted artwork.
The static scenery readers check BuildSettings, Mesh, Renderer and Material
layouts against the corresponding AssetStudio readers. They are separate local
implementations. `content/scenery.json` and `content/scenery-runtime.json`
preserve scene-index bindings, source hashes, geometry and explicit omissions;
converted scenery textures are original game material under `assets/scenery/`.

AudioClip serialization was checked against AssetStudio's AudioClip reader.
`tools/fsb_audio.py` is a local FSB5 reader/Ogg packager informed by
[HearthSim/python-fsb5](https://github.com/HearthSim/python-fsb5) and the
[Xiph Vorbis I specification](https://xiph.org/vorbis/doc/Vorbis_I_spec.html).
The Vorbis setup lookup data in `tools/vendor/python-fsb5/vorbis_headers.py`
is from python-fsb5, MIT license, Copyright (c) 2016 Simon Pinfold; its full
license is preserved alongside the table. The table is parsed as literal data.
The independent preparation decoder `tools/vendor/stb/stb_vorbis.c` is
[stb_vorbis](https://github.com/nothings/stb/blob/master/stb_vorbis.c) v1.25,
Copyright (c) 2017 Sean Barrett, used under its MIT option. Both offered licenses
are preserved at the end of the source file. `audio_bridge.cpp` is a local
conversion wrapper. Neither helper is linked into the Rust game. Original
compressed audio and decoded PCM music are original game material; source and
converted digests are retained in `content/audio.json`.

Rust runtime dependencies and their versions are recorded in `Cargo.lock`.
