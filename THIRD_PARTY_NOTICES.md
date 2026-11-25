# Local reconstruction inputs and tools

The user supplied [DarkTerraYT/EpicWeb](https://github.com/DarkTerraYT/EpicWeb)
as the final visual reference. The selected original NGUI artwork under
`assets/ui/` comes from its `Build/EpicWeb.data` at commit
`d6ff01fcd9497a95abc40be955957a3447b55227` (data SHA256
`0606bf5e355b335bee30bb4001b8a978720729122ac280af380c24183ad6506f`).
It is original game artwork, not newly authored or generated art; no blanket
open-source license is asserted over it or inferred from GitHub hosting.
`content/reference-ui.json` retains the full extraction identities, pixel
rectangles, borders and image hashes. The runtime atlas copies these recovered
pixels without resampling. The reference package identifies product version
3.0.1 and Unity 6000.3.4f1; it is separate from the original APK evidence below.

`tools/recover_reference_ui.py` uses [UnityPy](https://github.com/K0lb3/UnityPy)
1.25.4 and its preparation-time dependencies to read/decode that reference
package. UnityPy is MIT-licensed; the package is installed separately and is
not vendored or linked into the Rust runtime. The local NGUI atlas reader,
selection, provenance checks and runtime skin code are separate project code.
`tools/recover_reference_layouts.py` uses the same separately installed reader
for the pinned bundle's original menu hierarchies. Their identities, transforms,
camera projection, component hashes and selected serialized layout-controller
bytes are retained in `content/reference-layouts.json` as reconstruction
evidence, under the same original-game-material distinction above.
The eleven battle HUD sprites in `assets/ui/battle_atlas.png` are
unscaled pixel copies from the same pinned package's `BattleElements` atlas.
`content/battle-hud.json` preserves source object and pixel hashes, crop bounds,
runtime packing, selected widget identities, anchor evidence and enter-clip
key values. `tools/recover_battle_hud.py` uses the same preparation-time reader.
The health-frame/fill follow-up also records the original `HealthBar_Small`
prefab's widget, transform and controller identities and hashes, with validated
external links to that atlas. Recovered image pixels are not resampled.
`assets/ui/motion_atlas.png` contains 33 selected widget/sprite entries from the
same reference's GenericElements, GenericElements_Additional and BattleElements
atlases, including pause controls/board/paper and standard/boss health artwork.
`content/ui-motion.json` retains widget and atlas identities, image hashes,
authored placements and 19 clips' selected scalar channels with original keys
and tangents. `tools/recover_ui_motion.py` uses the same separate UnityPy reader.
These remain original game artwork and animation evidence, not newly authored
art or material placed under a blanket open-source license.
The motion manifest also retains the original health-spacer prefab/controller
bytes and hashes as unresolved evidence; no native count/spacing behavior is
asserted from that data alone.

The six original wheel sprites in `assets/ui/reward_atlas.png` also come from
that pinned BattleElements atlas. `tools/recover_reward_wheel.py` uses the same
separate preparation reader; `content/reward-wheel.json` preserves sprite/pixel
hashes and selected level11 transform/widget evidence. These are original game
pixels, with the same rights distinction above.

The six result-star sprites in `assets/ui/victory_atlas.png` are original
BattleElements artwork from the same pinned reference. `content/victory-stars.json`
retains the three widget/transform identities, sprite rectangles/pixel hashes
and selected channels with serialized original clips. The preparation helper
`tools/recover_victory_stars.py` uses the same separately installed UnityPy;
these pixels and animation evidence retain the original-game-material status.
The selected channels now also include original victory-title translation,
nonuniform scale/alpha and the independent score-alpha reveal.

`content/reward-motion.json` retains four additional original clips from the
same pinned reference, including serialized bytes/hashes, selected scale/alpha
channels and original event records. `tools/recover_reward_motion.py` uses the
same separate UnityPy reader. These retain the original animation evidence status;
this does not assert native controller or sound/particle callback equivalence.

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
