# Continuing this project

This is an unfinished Rust reconstruction of Angry Birds Epic build
com.rovio.gold 3.0.27463.4821. Read README.md, RECONSTRUCTION.json and
THIRD_PARTY_NOTICES.md before working. The overall recreation is not complete;
Windows x86_64 was verified in the previous handoff. The current resource
source also builds and runs on macOS arm64, including recovered original music.

## Build and play

Install Rust with a working native linker/toolchain. From this directory:

```powershell
cargo test --workspace --locked
cargo clippy --workspace --all-targets --locked -- -D warnings
cargo build -p epic-client --release --locked
```

On Windows, launch `target/release/epic-client.exe` from the directory where you
want its `local.data` save to live. Save format is EPIC_RUST_9. Saves and build
outputs are deliberately not committed. Cargo.lock and the runtime assets are
committed; Git LFS is not required for this snapshot. On the original machine,
dependencies are cached and the commands also work with `--offline`.

On macOS, the same Cargo commands work. Run `./target/release/epic-client`
from this directory, or use its absolute path from a separate save directory.
The executable stores `local.data` in its working directory. A distributable
macOS app bundle is not yet implemented. Music uses the native NSSound backend.

The existing Desktop launcher/package is separate from this checkout. Run
`powershell.exe -NoProfile -ExecutionPolicy Bypass -File tools/package_desktop.ps1`
after building to create/update that Windows Desktop package. It preserves saves
and backs up replaced files. Do not commit that package or its previous-builds.

## Where work stopped

- Current baseline: 168 Rust tests, Clippy and macOS arm64 release build pass.
  The audio follow-up adds native Mac music: all nine buffers pass NSSound
  decoding/playback/loop checks, with mute/unmute, track changes, silent captures
  and object cleanup verified through `python3 tools/smoke_audio.py`. It writes
  no play save; brief snippets can be audible. Speaker audibility and original
  mixer equivalence are not established by API acceptance.
  Native UI/save checks cover v9 resources, exact v8 backup and changed-stack
  persistence in addition to the existing shop/combat/gear/revival checks
  (1,012 captures across 22 launches, including player projectiles, class effects
  and Stone Guard/Frost Savage normal-versus-bonus damage).
  Claims save the tutorial sword, vial and seashell
  once, with unchanged loadouts and read-only reopening.
  The previous Windows baseline had 139 Rust tests and 38 recovery tests;
  original-input Python recovery tests cannot run on this source-only checkout.
- Owned equipment and loadouts persist. Birds now capture both owned hands at
  battle entry, including item levels, for stats, attack clips, melee/ranged
  timing and supported static projectiles. Level/mastery refresh and queued
  snapshots retain those copies even if Camp changes equipment. The next battle
  uses the updated selection. Native capture verifies Bomb's level-four bomb
  selects Attack_3 and Bomb_02, and the Blues' starter bow launches Bow_01.
  Full actor weapon-art swaps, skill overrides, repeated/multiple-target launches
  and animated/missing projectile visuals remain unfinished. No save bump.
- Cleric/Moon Priest attacks now heal living allies using configured dealt-damage
  percentages; Bard rolls its 15% one-turn stun; Thunderbird's area damage only
  applies vulnerability to the selected surviving target. Current integer
  damage/HP caps, knockout exclusions and source-faction effect clock apply.
  These rules come from recovered configuration/descriptions; their callback
  bodies are absent from the supplied native disassembly. Exact native order,
  overkill/rounding and RNG interactions remain unverified. See the dedicated
  class_attack_tests.rs regressions. No save format change.
- Conditional damage now uses shared bird/pig logic: Stone Guard's two hits get
  their configured 150% multiplier against curses; Frost Savage gets its 150%
  multiplier against stun. Multiple curses do not multiply the bonus again.
  Cleanse/expiry disable the bonus, and ordinary defense/retaliation still apply.
  Tests include a Bard stun followed by a Frost Savage attack through real
  party actions. Wet/goo/ink and other missing condition types retain base
  damage. Native callback/affliction classification/rounding need comparison
  with original execution. Save v9 and profile data remain unchanged.
- Base wheel reward delivery is live through Spin & collect rewards. All 167
  imported roots use eight slots, with stars determining the wrapped slot count
  and pending XP settled before choosing equipment level. Equipment copies,
  resource stacks and wheel gold persist; claims fail atomically on capacity
  errors. Replays earn a new wheel but reopening never repeats a claimed win.
  Bonus-wheel modifiers, rerolls, additional story loot, chest opening,
  equipment perks/source/scrap, resource subtype effects/caps, crafting and
  original wheel artwork/choreography remain unfinished. Chest markers are
  stored without executing their effects. Save format remains v9.
- `content/resources.json` preserves 617 resource definitions and 24 merged
  starting values, including recipe level deltas. `tools/build_resource_runtime.py`
  generates Rust definitions from this committed manifest and localization;
  `--check` verifies that generated data is current, without original inputs.
  Profiles now store the 23 non-XP starting entries and expose Materials,
  Consumables, Recipes and Other under Camp > Inventory. Pre-v9 saves gain
  level-one starting entries once; XP/gold and selected gear remain unchanged.
  Existing v9 quantities (including an empty inventory) are never reseeded.
  Stored story/unlock entries do not yet execute native subtype effects.
- Keep the requested easier gold and all 116 bundled player hats purchasable
  with earned gold. Current overrides are documented in RECONSTRUCTION.json.
- Work resumed at the user's request on November 23, 2026.
- Crafting investigation: the committed recipe rows retain ResultLoot, but do
  not include the equipment/consumable material-cost and quality rules. Only
  recipe generation/addition bodies are in the selected native disassembly;
  crafting execution still needs original inputs. Do not invent costs or
  interpret CraftingItemBalancingData.ValueOfBaseItem as a complete recipe cost.

The full remaining scope and next steps are in RECONSTRUCTION.json. A rough
previous scope estimate was 30–35%; it is not a measured completion statistic.

## Helper work

`docs/helper-tasks/` contains the original and follow-up audio task briefs.
`helper-work/audio-cues/HANDOFF.txt` is an incomplete helper report, not verified
implementation. Review found that its claimed missing `Character_Red_Attack_1`
exists and has three valid recovered clips. No resolver, cue map or tests were
delivered with that report. Follow-up outputs belong in
`helper-work/audio-cues-v2/`, if the helper produces them. Review any new work
against original evidence before integrating it.

## Recovery inputs and evidence

The repository includes runtime assets, content manifests, tools, selected
native disassembly/field reports, the linked method index and metadata report.
Extracted game material remains identified in THIRD_PARTY_NOTICES.md; no blanket
open-source license is asserted over it.

The following local-only inputs/caches are excluded from Git and must be kept
separately to continue static recovery or run all recovery/UI evidence checks:

- `original/`: supplied game archives and unpacked original inputs.
- `analysis/global-metadata.dat`, `analysis/libil2cpp-x86.so`, extracted Unity
  data and other large analysis caches. Keep the original machine's complete
  `analysis/` directory if possible. Tool paths/formats are documented in README.
- Screenshot/capture history and local decoder/tool binaries.

Ordinary Rust compilation uses the committed prepared data/assets. Recovery
tests require the original inputs above and Python; they are not expected to
pass on a source-only checkout without those inputs:

```powershell
python -m unittest discover -s tools -p test_recovery.py -v
python tools/smoke_client.py
```

Original metadata: IL2CPP v23, Unity 5.6.3p3. REA did not support this metadata
version directly; use the project's verified v23 reader rather than assuming
REA can parse it. Do not execute the extracted native game library.

## Put this local repository on GitHub

Create an empty repository in your GitHub account (without an initial README).
Then substitute its actual URL below and run:

```powershell
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
git push -u origin main
```

Keep the repository private unless you have decided what extracted game material
you intend to share. Original archives and local saves remain outside Git even
for a private repository. GitHub authentication is performed by your Git tools;
do not paste access tokens into source files or chat.
