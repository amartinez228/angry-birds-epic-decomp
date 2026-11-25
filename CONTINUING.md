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

- Authored battle-HUD entrances and wave-update motion are live. The pause
  button enters diagonally from the top-left; the pepper enters from below;
  the wave tracker enters from above. Their original Hermite overshoots are
  sampled, and pause/pepper hitboxes follow the artwork. Pointer input waits
  for the entrance to settle. New battles/retries restart it; paused game time
  freezes all HUD channels. `BattleProgress_Update` plays once per displayed
  wave change, including its original drop/return and 0.75-to-1 scale. An actual
  combat/presentation regression verifies it starts after the defeated actor
  finishes and the next wave is published. Native callback choreography is
  still unverified; leave curves are retained but not played on scene exit.
  The shared motion manifest now has 19 clips/79 channels/242 keys (33 sprite
  entries unchanged). `unresolved_health_spacer` retains prefab/controller
  bytes, object identities and hashes; native count/spacing bodies are absent,
  so no spacer rule was invented. Runtime: `battle_hud::HudMotion`/`HudPose`.
  Native evidence: `analysis/smoke-hud-1795576222890343000` and
  `analysis/smoke-client-1795576264371283000` (both ignored by Git).
- Pause/options, campaign-boss frames and authored health motion are live.
  `content/ui-motion.json` and `tools/recover_ui_motion.py` preserve 33 sprite
  entries, 19 clips, 79 scalar curves and 242 keys with source identities and
  Hermite/step tangents. `ui_motion.rs` renders the 1024x1024 shared atlas and
  samples curves; `pause.rs` uses original sidebar/board/control positions and
  enter/leave overshoot/alpha; `health_display.rs` owns per-combatant motion.
  Continue/retry/map/music controls work. Escape opens/closes pause. A separate
  battle clock freezes presentation, idle poses, projectiles and health motion
  throughout pause transitions without a resume jump. The pause scene's former
  news board shows local battle help; online news/SFX toggling are not restored.
  Retry uses the current profile and existing fresh-battle rules.
  Original standard/boss show/damage/heal/hide curves control expansion, damage
  shake, heal lift, flash and fade/revive. Resting scales are 0.5/0.75. Original
  boss frame is 218x64 with fill at x+10; level is a provisional badge label.
  Largest campaign size_type=3 pigs (11 IDs) select that frame as an explicit
  provisional policy, not a verified native SpawnHealthBars branch. World-event
  segmented/chunk bars still require missing event battle models.
  Exact health-controller sequencing is NOT established: current fill/trail
  scheduling uses original pacing 0.125/0.4/0.25 seconds, but coroutine ordering,
  interruption/visibility/following/spacers and initiative text need native
  bodies. Original ELF/cache is absent. Relevant indexed methods: 32116
  SpawnHealthBars, 43875 SetModel, 43892 ChangeHealthBar.MoveNext, 43904
  ChangeValueOverTime.MoveNext, 43916 ChangeBarAfterDelay.MoveNext, 43922
  SetHealthBarSpacer.MoveNext. Preserve the Unity6/Unity5.6 evidence distinction.
  `tools/smoke_hud.py` runs 38 isolated capture states twice, exercising real
  pause clicks/blocked background click, music toggles, continue/retry/map,
  boss and health show/damage/heal/KO/revive, without changing the play profile.
  The added states cover HUD entry, moved input bounds and wave transitions.
- Standard health bars now replace bird/pig parchment HP boxes. Recovered
  `HealthBar_Small` widgets use a 164x32 centered body at (0,-2) and 152x20 fill
  at (0,0), retaining original geometry and atlas/sprite links. Two new sprite
  crops share the battle atlas (11 sprites total). Recovery/generation stays in
  `tools/recover_battle_hud.py`; provenance in `content/battle-hud.json`.
  Numbers/names use outlined text. All enemy actors draw before health/status
  overlays, keeping bars readable in six-enemy layouts. HP uses presentation
  snapshots, clamped fill and safe zero/invalid maxima; two new geometry/range
  regressions cover this. The current actor-relative placement remains adapted;
  original visibility/following, change trails/spacers and boss segments remain
  unfinished. No core gameplay-rule/save-format change.
  Two added captures preview six enemies with zero/one-point/partial/full HP;
  synthetic defeat rewards are consumed by disposable profiles. Automated
  captures ignore live mouse/keyboard input. `tools/smoke_client.py` also accepts
  `--read-only-fixture PATH` and optional `--migrate-first` for isolated reload
  diagnostics, retaining the original input file. The follow-up above adds
  pause/options and authored health motion; remaining native controller/camera
  behavior still needs recovery.
- The preceding battle-HUD artwork pass added original pepper body/fill/
  stem and ready burst at bottom-center (66 units from bottom), and original
  wave-track/bird/wheel artwork at top-center (50 from top). Nine-point anchor
  enum inference matches all direct battle-root controllers' saved coordinates
  at 1280x720, including corner/edge examples. Original enter clips end at zero
  child offset, overriding the saved offscreen positions. That pass used the
  settled state; the follow-up above adds entry/wave-update playback. Exit
  choreography remains pending. Original pepper geometry
  and 0.9 scale retained; clickable pepper replaces the separate rage button.
  Stage heading/log are narrower, leaving the center scenery open. Wave-track
  width/icon movement is adapted; exact native choreography, gold variant,
  drag gestures, remaining HUD and camera framing remain unfinished.
  `content/battle-hud.json` retains anchors, widget hashes, enter-clip key values,
  atlas identities and image hashes; `tools/recover_battle_hud.py --bundle`
  reproduces from the pinned bundle. Its stdlib `--check` needs no source input.
  New runtime: `crates/epic-client/src/battle_hud.rs` plus generated data and
  `assets/ui/battle_atlas.png`. No core gameplay-rule or save-format change.
- The reference-layout recovery now records 518 transforms in
  `content/reference-layouts.json`: world-map menu 268, camp menu 38 and battle
  menu 212. Reproduce with `tools/recover_reference_layouts.py --bundle` and the
  pinned UnityFS `data.unity3d`; `--check` and `tools/test_reference_layouts.py`
  run without UnityPy or original inputs. Saved hierarchy, active state,
  transforms, script identities, camera projections and object hashes are
  retained, plus raw layout-controller bytes. All three preview cameras use
  orthographic size 360. Battle nodes include `1_Pause` at (-585,305),
  `2_BattleProgress` at (0,310) and `5_RageOMeter` at (0,-294), in local Unity
  coordinates. Decode LayoutControl/LockToScreenSize/ContainerControl and
  animation updates before treating these as final screen pixels. Current
  gameplay, screen positions and save format are unchanged by this recovery.
- The user supplied https://github.com/DarkTerraYT/EpicWeb as the final visual
  target. Prioritize original UI layouts/art, map/camp/battle HUD and camera
  framing toward that reference alongside the gameplay reconstruction.
  The first pass skins current controls with 17 recovered original NGUI sprites:
  glossy buttons, parchment panels, currency/XP/stars/locks and XP-bar artwork.
  Positions, route layout and camera remain provisional. No gameplay/save change.
- Current baseline: 183 Rust tests, Clippy and macOS arm64 release build pass.
  The health-HUD build passes all 22 native UI/save launches (1,144 captures),
  including zero/one-point/partial/full HP in six-enemy previews and
  half-full/ready/clicked/settled pepper states. Partial pepper input
  is rejected; full pepper input spends rage and performs the action. Four
  source-only hierarchy tests and all three UI/layout/HUD manifest checks pass.
  Camp, inventory and battle captures were visually reviewed, including the
  new bottom pepper, top wave tracker and standard health bars. Final evidence:
  `analysis/smoke-client-1795576264371283000` (ignored by Git). The dedicated
  pause/boss/motion suite adds 76 captures across two launches (24 launches and
  1,220 captures total). Unit regressions check original key values/steps, curve
  finiteness, damage/heal/death/revive, interrupted fill, popup anchors and
  paused-clock continuity. `recover_ui_motion.py --check` is source-only.
  `python3 tools/recover_reference_ui.py --check` verifies all prepared images,
  hashes and generated Rust without UnityPy or the downloaded input. Repeating
  extraction needs the pinned `EpicWeb.data` and UnityPy 1.25.4 in a separate
  environment. The input hash, commit and object identities are recorded in
  `content/reference-ui.json`. Analysis/downloads are ignored by Git; the
  temporary Python environment and `/private/tmp` download are disposable.
  The prepared PNGs and runtime atlas are committed inputs. All UI sprites
  share one texture with extruded edge padding to prevent filtering seams.
  Text uses one cached glyph size, scaled for each label and primed at the
  current display DPI before drawing to prevent font-atlas corruption.
  EpicWeb's Unity 6000.3.4f1 package is separate reference evidence, not a silent
  replacement for the original Unity 5.6 APK or its gameplay balancing.
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

The full remaining scope and next steps are in RECONSTRUCTION.json. The current
rough planning estimate is 35–40% of the full recreation, with low confidence;
this is not measured native decompilation coverage. The first artwork pass
does not establish original layout or gameplay parity. Remaining skills,
progression, crafting, game modes and original presentation are substantial.

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
