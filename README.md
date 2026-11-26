# Epic Rust reconstruction

This is an unfinished standalone reconstruction prototype, not a complete port
of Angry Birds Epic. A Windows release executable has been built successfully.
The current source also builds and runs on macOS arm64. See the macOS commands
below. Recovered original music now plays on Windows and macOS.

The user's final visual reference is [DarkTerraYT/EpicWeb](https://github.com/DarkTerraYT/EpicWeb),
a WebGL build identifying its game version as 3.0.1. The first visual pass
recovers 17 original NGUI sprites from its pinned data package: glossy normal
and disabled buttons, nine parchment pieces, coin/XP/star/lock icons and XP-bar
art. These now skin the Rust controls, panels, battle labels and map indicators.
The game header uses the game name instead of development branding. Artwork is
packed without resampling into one GPU atlas, with extruded edge padding to
prevent filtering seams. Text uses one cached glyph size, primed at the display
DPI and scaled per label, to prevent font-atlas repacking from corrupting text.
This begins the visual transition: the current map route, camp arrangement,
remaining battle HUD placement, actor scale and camera framing remain provisional.
Matching those layouts to the reference is the next presentation priority.

`content/reference-ui.json` records the EpicWeb commit, downloaded data hash,
Unity version, source object identities, sprite rectangles/borders, output PNG
hashes and runtime atlas packing. The WebGL data was built with Unity 6000.3.4f1
and is kept separate from the original Unity 5.6 APK evidence. Its gameplay
tables/code are not silently substituted for the original reconstruction.
The compiled WebAssembly game has not been executed as part of asset recovery.
The downloaded package and analysis caches stay outside Git. Normal Rust builds
use only the committed PNGs and generated data, with no new runtime dependency.

Verify the prepared UI data without installing extraction tools:

```sh
python3 tools/recover_reference_ui.py --check
```

To repeat extraction, use a separate Python environment with UnityPy 1.25.4 and
pass the `EpicWeb.data` download identified by the manifest:

```sh
python tools/recover_reference_ui.py --data /path/to/EpicWeb.data
```

The importer checks the pinned package digest, atlas/material/texture identity,
serialized atlas tail, sprite bounds and selected borders before exporting.
These images remain original game material; see THIRD_PARTY_NOTICES.md.

The next recovery pass records 518 saved UI transforms from the reference's
world-map menu (268), camp menu (38) and battle menu (212) in
`content/reference-layouts.json`. It preserves parent/child links, active flags,
local positions/rotations/scales, component/script identities, camera projection
and source-object hashes. Layout-controller bytes are retained for further
decoding. All three preview cameras are orthographic with saved size 360.
These are saved scene coordinates: layout controllers and animations still
need evaluation before they can replace the Rust screen positions correctly.
This pass does not change the game's current screens or save format.

```sh
python3 tools/recover_reference_layouts.py --check
python3 -m unittest discover -s tools -p test_reference_layouts.py
```

To regenerate, use the same separate UnityPy environment and the `data.unity3d`
member of the pinned reference download:

```sh
python tools/recover_reference_layouts.py --bundle /path/to/data.unity3d
```

The tool checks the bundle SHA before reading it and rejects inconsistent or
cyclic transform hierarchies. Source-only checks need no original download.

The next visible battle pass uses the reference's top-center progress anchor
(50 units from the top) and bottom-center rage anchor (66 from the bottom).
The inferred nine-point anchor ordering reproduces the saved battle-menu
corner/edge positions on its authored 1280x720 canvas. The original enter clips
confirm that the offscreen saved child positions settle to zero; this pass
renders that settled state. The original pepper body/fill/stem and ready burst
replace the large center panel, and clicking a full pepper invokes the existing
rage action. Half-full and busy peppers reject input. Nine additional original
sprites supply the pepper and wave-track art. The stage heading and combat log
are narrower to keep these widgets clear. Track span and bird movement adapt
to the current imported wave counts; original transition/glow choreography,
drag gestures, gold pepper, remaining HUD, actor layout and camera are pending.
`content/battle-hud.json` preserves anchors, selected widgets, enter-clip keys,
art identities and atlas hashes. No gameplay-rule or save-format change.

```sh
python3 tools/recover_battle_hud.py --check
# Preparation only, in the separate UnityPy environment:
python tools/recover_battle_hud.py --bundle /path/to/data.unity3d
```

Birds and pigs now use the reference's standard health-bar frame and fill,
replacing the parchment HP boxes. The recovered `HealthBar_Small` prefab uses
centered 164x32 and 152x20 widgets, with the frame two units below the fill.
The importer verifies their original atlas/sprite bindings, dimensions and
pivots, retaining widget/transform/controller hashes in `content/battle-hud.json`.
These two additional images share the existing battle atlas (11 sprites total).
Displayed fill follows the combat presentation snapshot, including damage,
healing and revival, with empty/invalid maximum HP handled and excess HP capped
visually. Outlined numbers/names stay readable on the scenery. Enemy overlays
draw after all enemy actors so adjacent rigs cannot cover health text.
Bar positions are adapted to the current actor arrangement. Native visibility,
actor-following anchors, change trails, spacers and segmented boss bars remain
unfinished; original controller timing is not claimed.

Native captures include isolated six-enemy previews with zero, one-point,
partial and full HP, in addition to the real attack/healing/revival scenarios.
Synthetic preview rewards settle into a disposable profile. Automated captures
accept only scripted input, preventing desktop mouse/keyboard activity from
changing test saves or music preferences. To diagnose a particular save without
changing the supplied file, copy it into the isolated reload checks:

```sh
python3 tools/smoke_client.py --read-only-fixture /path/to/local.data
# For migration fixtures with Red in the first party slot, exercise the Camp selection first:
python3 tools/smoke_client.py --read-only-fixture /path/to/local.data --migrate-first
```

The battle pause button now uses its original round artwork at (55,55).
The pause scene's continue/retry/map controls occupy the recovered left sidebar,
with the music control anchored 50 units from the bottom. Its original board,
header and nine-piece paper panel show local battle help; remote news is not
reconstructed. Original pause entry/exit curves drive the sidebar overshoot and
overlay fade. Continue resumes, retry creates a fresh battle from the current
profile, and the map button returns to Adventure. Escape also opens/closes pause.
The battle clock freezes queued skills, projectiles, idle poses and health motion
through the popup's entry/exit, then resumes without adding the paused wall time.
The existing music backend remains independently controllable and persists mute.

`content/ui-motion.json` records 33 prepared sprite entries, 19 original clips,
79 scalar channels and 242 keys, including their original Hermite tangents and
stepped alpha keys. `tools/recover_ui_motion.py` checks the pinned bundle before
extracting source widget geometry, atlas bindings, placements and curves.
The runtime replays standard and campaign-boss show/damage/heal/hide motion:
small bars rest at 0.5 scale, boss bars at 0.75, with expansion to 1.0, damage
shake, healing lift, change indication and fade-out/revival. Boss frames retain
the authored 218x64 body and offset 152x20 fill. As an explicit provisional
presentation policy, the eleven campaign pigs with recovered `size_type=3`
receive that frame; the badge currently shows level. This does not establish the
original prefab-selection or badge-assignment branch. World-event segmented
boss bars need their separate battle models and remain unfinished.

The saved motion keys are reproduced, but **exact native health-controller
equivalence is not established**. Current fill/trail interpolation uses the
original 0.125/0.4/0.25-second pacing values with a provisional schedule. Native
coroutine order, overlapping-hit behavior, visibility/following, spacers and
initiative text still need comparison. The original ELF and the bodies for
`CharacterHealthBar.ChangeHealthBar`/`ChangeValueOverTime` are absent here.
Unity6 visual-reference evidence remains separate from Unity5.6 gameplay evidence.

The pause button, rage meter and wave tracker now play their original entrance
curves. Their control bounds move with the artwork; pause/pepper pointer input
is disabled until entry settles. Retry and new battles restart the entrance.
The wave tracker plays `BattleProgress_Update` when the displayed wave changes,
using its original movement and 0.75-to-1.0 scale curve. A real combat regression
checks that this waits for the defeated actor's clip before the next wave is
published. Entrance/wave motion uses the paused battle clock. Map/retry choices
now start the pause button, pepper and wave track's authored leave curves while
the pause panel closes. Navigation waits for both to finish, dispatches once,
and retains the final offscreen pose through the outgoing frame. Combat, health
motion, projectiles and idle poses stay frozen; background input remains blocked.
Continue resumes without a HUD exit. Interrupted entry/wave motion keeps its
initial position before converging to the authored leave endpoint; unanimated
scale is retained. This scheduling/continuity policy and wave-track span/trigger
integration are renderer adaptations, not verified native controller order.
Other scene-exit and victory/reward choreography remain unfinished.

The victory panel now shows the original left, center and right result stars,
including their desaturated variants. Saved outer/inner offsets and widget sizes
preserve the original arrangement at an adapted overall scale. The original
`BattleWon_Step1_Enter` star-group scale and `Star_Gained` scale/saturation curves
play after the defeated-actor presentation finishes. Each gain scales the parent
pivot, so the inner star moves with its authored hierarchy. Unearned stars stay
desaturated. The victory parchment and overall layout remain adapted. The renderer
schedules gains left-to-right from 0.75 seconds, 0.25 seconds apart; native
callback timing is unverified. Saturation blends the two original images, with
original material shader equivalence still unverified. Score counting, effects,
sounds and full victory/reward transitions remain unfinished.

The victory heading now also plays the original delayed movement, nonuniform
stretch/undershoot and alpha from `BattleWon_Step1_Enter`. Its text is centered
in the current parchment; source translation is scaled0.65 with the star layout.
The score line uses its independent original fade from0.75s to1s. Both follow
the same victory visibility clock, after defeated-actor playback. Numeric score
counting remains unfinished; the displayed value is the final computed score.
The scoped drawing transform restores model state after both title and wheel
rendering, including on unwinding.

`content/victory-stars.json` retains the six sprites, three widgets and their
transform evidence, plus eleven channels/48 keys and serialized source clips.
Normal builds use one prepared atlas and no new runtime dependency:

```sh
python3 tools/recover_victory_stars.py --check
# Separate UnityPy environment, pinned reference bundle:
python tools/recover_victory_stars.py --bundle /path/to/data.unity3d
```

The spacer follow-up preserves the original `HealthBar_Spacer` hierarchy and
controller bytes/hashes in `unresolved_health_spacer` within that manifest.
Its count/spacing rule remains unresolved because the relevant native bodies
are missing. No spacer count or HP threshold is invented from those bytes.

```sh
python3 tools/recover_ui_motion.py --check
python3 tools/smoke_hud.py
# Preparation only, using the same separate UnityPy environment:
python tools/recover_ui_motion.py --bundle /path/to/data.unity3d
```

In the Desktop package, double-click `Play Epic Rust.cmd` to launch the game.
The launcher keeps save data (`local.data`) beside the executable. The packaged
`Epic Rust.exe` can also be launched directly. Rust and Visual Studio are needed
only to rebuild the source, not to play the packaged Windows executable.

The Rust source includes a deterministic turn-based battle engine, three-bird
parties selected from five birds, wave battles, support actions, rage abilities,
progression, saving, single-bird revival, and a gold-only shop. The shop now includes **all 116 player
class skins in the bundled data**, covering 34 original class definitions,
including legacy variants. Each entry uses its original name and extracted hat
artwork. The UI also uses the original game font.

The native renderer now uses 22 recovered SmoothMoves actor prefabs: all five
birds and every actor asset referenced by the imported main-island encounters,
including the cage. Original textured triangles, part ordering, colors and
transform hierarchy replace the placeholder character shapes. All 116 equipped
hats use their recovered sizes and pivots, including rear pieces when present.
The 47 character atlases load on demand. Initially hidden sprite parts and
all actor material slots are retained so animation frames can reveal them.
`content/characters.json` retains the
source file hashes, component identities, geometry and headgear placements.
The renderer plays recovered idle, attack, support, rage, hit and defeat clips
during battles, including their sprite expression changes. Complete native
sequencing and inventory-dependent weapons/pig outfit variants remain unfinished;
weapons and other outfit parts currently use their prefab defaults. Most UI
presentation remains provisional. Character display scale fits the current UI
and does not yet reproduce the original camera layout.

Battles now select their original scenery by recovered background ID. All 60
background IDs used by the 167 imported encounters bind to the original
BuildSettings scene indices. `content/scenery.json` retains source/component
hashes, 514 decoded meshes, 167 materials, 64 textures, saved camera settings,
object visibility and static batch ranges. `tools/unity_mesh.py` validates mesh
buffers, submesh triangles and vertex channels; unsupported compressed/blend
shape geometry is rejected. Static batch vertices retain their world positions
instead of receiving each individual object's transform twice.
`tools/build_scenery_runtime.py` embeds 4,319 static draw batches in a 1.95 MB
`EPICSC01` pack. Original UVs, vertex/material colors and rest-pose depth order
render with the saved orthographic camera. Textures load per scene and are
released when switching scenery. Readable backdrops protect battle labels.
This is static scenery recovery: 33 renderers without serialized meshes, null
material slots, skinned scenery, CHMeshSprite generation, animation, particles,
native shaders and runtime camera adjustments still need reconstruction.
The current battle actor layout also remains provisional.

The Windows and macOS builds now play recovered original world-map, camp, battle,
victory and defeat music. Basic battles choose among their four original tracks;
special battles use `Battle_05`. The Music button or **M** toggles music, and the
preference is saved separately from campaign progress. Track selection uses
separate cosmetic randomness, so it cannot change battle outcomes. Muting stops
playback; unmuting currently restarts the selected track. Camp and the current
hat shop share camp music. This first backend uses Windows WinMM and embedded
PCM buffers. macOS uses Apple's [NSSound](https://developer.apple.com/documentation/appkit/nssound)
with the same embedded WAVE buffers, retaining its Cocoa sound/data objects
until replacement, mute or player shutdown. It creates no temporary audio files
and uses the existing saved mute preference. Native checks accepted all nine
buffers and verified positive decoded durations, playing state, original loop
flags, repeated requests, mute/unmute, track changes, silent capture and cleanup.
This verifies the native API path rather than speaker audibility or original
FMOD mixer equivalence. Linux/mobile/browser audio, original channel gains, secondary music,
crossfades, sound effects and exact screen/cue timing remain unfinished.

`tools/recover_audio.py` recovers all 622 bundled AudioClips and 460 serialized
sound definitions (459 unique IDs), with five audio providers and exact resource
pointers. `content/audio.json` retains the source hashes, channels, priorities,
parameter order, volume, fade and looping settings, plus seven unbound configured
asset references. Native code establishes presence-based sound flags, random
asset selection and first-definition lookup for the duplicated sound ID.
`tools/fsb_audio.py` validates FSB5 ranges/packets and repackages Vorbis packets
as Ogg without re-encoding; all 622 Ogg outputs independently decode to their
original channel/rate/frame counts. The conversion helper creates PCM music
inputs with stb_vorbis; it is separate from the Rust runtime. Decoder agreement
and Windows API acceptance do not establish audible or sample-exact equivalence
with the original FMOD mixer. Native UI/scenery capture modes stay silent.

Original animation recovery now covers 344 clip links across all 22 actors and
1,072 hierarchy nodes. `content/rigs.json` retains the node paths and authored
transforms; `content/animations.json` indexes the decoded curves under
`analysis/animations/`. The exports preserve 237,427 original keys, tangent
values (including stepped/infinite tangents), wrap/layer/blend metadata and
clip-specific playback speeds. Native `BoneAnimation.Awake` assigns the saved
`fps` to Unity's animation speed: for example, Red's 36-unit idle clip lasts
1.5 seconds at speed 24. A complete candidate metadata array is accepted only
when it uniquely matches the independent Unity clip list and bone references.
Some Pig Mage curves contain out-of-order keys; these are flagged and retained
in original order in the evidence JSON. `tools/build_animation_runtime.py`
packs all 344 clips, rigs and sprite changes into an embedded 13 MB runtime input with
stable time ordering for evaluation; `content/animation-runtime.json` records
the pack digest and this ordering choice. Rust evaluates original position,
scale and quaternion curves with Hermite tangents, stepped components,
quaternion normalization, clip speed, looping and hierarchical transforms.
Equipped hats follow their animated sprite nodes. A presentation queue replays
combat snapshots without changing the simulation or its random choices. Input
waits for queued actions and reactions; defeated actors finish before the next
wave replaces them. Complete native pacing, layered/mixed/additive
clips, per-curve extrapolation, unused muscle values, user event callbacks,
collider changes and audio/VFX remain unfinished. Interpolation and unordered-key
behavior still require comparison with the original Unity runtime.

Event recovery now reads all 344 clip objects through their final byte and
binds 2,352 Unity events to the serialized SmoothMoves trigger-frame table.
Exports retain per-bone hide/material/texture/pivot/depth/collider operations,
original geometry/UVs, atlas references and user cues with their clip times.
For example, Red's basic attack has an `Impact` cue at frame 9 / 24 = 0.375s.
Native code confirms that the event integer indexes this table. The attack
override clears a stop flag on `Impact`; its melee coroutine waits for that
flag or a pacing timeout before continuing toward damage. The renderer now
publishes melee damage at this cue. Complete projectile presentation, multiple-hit
cadence and support/rage timing remain provisional;
those non-melee actions currently publish at clip completion. The `EPICAN03`
runtime pack includes user cue times and executes sprite visibility,
material, texture/UV, pivot geometry and depth changes at the recovered frame
times. Animated parts are drawn in their updated depth order. Collider operations
and sound/VFX callbacks remain unimplemented.
The capture mode previews the original idle, blink, attack and defeat clips for
all actors, plus a live attack before and at Impact and after recovery.
Dynamic null material slots, such as the bird injected inside a cage, remain
unimplemented rather than being replaced with an unrelated texture.

`tools/recover_pacing.py` reads all 40 original scene pacing fields into
`content/pacing.json`, retaining source/component hashes. The melee wait now
uses the shipped 1.5-second timeout if its Impact cue is absent or late; the
constructor's 1-second default is not substituted. Other pacing fields are
retained for their remaining native use-site reconstruction.
`tools/recover_motion.py` decodes all 671 `CHMotionTween` components into
`content/motion.json`, consuming every serialized field and curve. These include
52 components named Projectile with fixed travel settings of 0.2, 0.25 or
0.3 seconds. Native motion also supports distance divided by speed and authored
per-axis curves. `tools/recover_projectiles.py` now binds all 52 original
projectile IDs from the native-selected provider through ResourceManager's
external pointers to their exact prefab hierarchy and one motion component
each. `content/projectiles.json` preserves all links and hashes. It also records
47 extracted original sprites under `assets/projectiles/`; unsupported atlas
types and other visual component types remain explicit. Weapon level variants,
skill selection and animated visuals still need further reconstruction.
`tools/build_projectile_runtime.py` now packs the 52 original curve/duration
definitions and 47 static quads for native Rust playback. It strips the prefab
root pose reset by native instantiation, preserving the child geometry, tint,
quad alignment and UVs. Main-hand/off-hand/body-center attachment paths are
bound from each original asset controller to recovered rig nodes.

Single-target attacks with recovered bird weapon or direct pig weapon projectiles now launch
their static sprite at the original Projectile cue, follow authored per-axis
Hermite curves (including the native X/Y progress swap for leftward travel),
and expire after the original duration. The Ninja Bowman arrow's 0.25-second
flight is verified in unit tests and rendered captures. Projectile travel does
not change the simulation's damage clock. Endpoints use the current battle
layout and target rest pose; original focus movement/camera,
skill overrides, repeated/multiple-target launches, trails/particles and animated
projectile visuals remain unfinished. Missing original art is not substituted.

Birds now capture both owned equipment copies when entering battle. The saved
weapon animation index selects their original attack clip, including off-hand
selection from the presence of `use_offhandanim`. The main hand's ranged flag
controls melee timing for birds as well as pigs. Supported single-target bird
weapons resolve their projectile through the native level/offset/variant formula
using the captured item's level, then launch its recovered static sprite at the
clip's Projectile cue. Bomb's level-four bomb uses `Action_Attack_3` and
`Projectile_BlackBird_Bomb_02`; the Blues' starter bow uses its original first
arrow. Both are verified before launch, during travel and after expiry in native
captures. Projectile travel retains the existing separate damage clock.
Queued snapshots and later level/mastery stat refreshes keep those captured
items even if Camp chooses different equipment. The next battle uses the new
selection. No save format change is needed. Full actor weapon-art swaps,
skill-specific projectile overrides, repeated launches and missing/animated
projectile visuals remain unfinished.

`tools/recover_equipment.py` imports all 312 original equipment definitions
and default loadouts for the 140 campaign pigs into `content/equipment.json`
and Rust data. Repeated quality bonuses, signed asset offsets, animation indices,
ranged flags, set links and raw perk payloads are preserved. The traced native
projectile resolver handles direct IDs, negative sentinel levels and numbered
variants using level plus offset (three levels per variant, nine main-hand or
eight off-hand variants). Empty configured projectile IDs resolve to no asset.
Enemy attack clips now use their configured weapon animation index, including
the original presence-based `use_offhandanim` flag. Native stat calculation is
now implemented separately as described below. Owned gear and selection now feed
battle stats; perks and visual equipment swaps remain unfinished.

`tools/recover_resources.py` retains 617 original basic, crafting, consumable,
recipe and event item definitions in `content/resources.json`, with original
English names where present, raw fields and source hashes. It also recovers
24 merged starting inventory values, including duplicate recipe entries and
the lance recipe's level delta. Save v9 now stores the 23 non-XP starting
entries. New profiles and pre-v9 migrations receive these at their original
level-one values without changing the existing XP/gold wallet. The lance recipe
starts at level two; the merged vial recipe count is two. Camp > Inventory shows
paginated Materials, Consumables, Recipes and Other, with recovered names and
recipe product labels. Stable IDs, quantities and first-deposit levels persist;
unknown/duplicate/invalid saved entries and quantity overflow are rejected.
Existing v9 stacks and empty inventories are never reseeded. Migrating a v8
profile preserves its exact source under `epic-rust-profile-backup-v8` on the
first changed save. Stored story/unlock entries do not execute native effects.
Base wheel rewards now deposit into this inventory. Subtype behavior/caps,
crafting and consumable use remain unfinished.
`python3 tools/build_resource_runtime.py --check` verifies the Rust
data against the committed manifest/localization without original game inputs.

`tools/recover_stats.py` recovers all 47 bird balancing rows, the five primary
birds' exact starting hands, 100 mastery ranks, 121 enchantment rows and the
ancient-equipment boost into `content/stats.json`. Native bird and pig character
growth uses a percentage of base per level, followed by ties-to-even rounding.
Equipment uses that growth too, then separate flat/percentage quality additions,
a minimum quality bonus, ancient boost and enchantment boost in native order.
Quality percentages clamp to the last configured entry. Mastery boosts the
combined character-plus-gear stat; hat bonuses apply afterward. Float getter
results are retained in the stat module.

Battles now use recovered bird growth and saved equipped gear, initially the
original level-one starter equipment,
replacing the hand-written bird health/attack arrays. Level-one Red has 120 HP
and 23 attack; Chuck has 60/34, Matilda 93/23, Bomb 96/37 and the Blues 76/37.
Camp shows these totals and equipped-hat bonuses. Current profiles still have
saved class mastery and a gear inventory containing the ten original starting
items. Camp opens an Equipment screen with bird filters, separate owned copies,
quality/enchantment/ancient values, slot selection and live health/attack totals.
Equipping never spends gold or merges duplicate items. Level/mastery refreshes
keep the chosen gear and the battle-start class skin. Equipment acquisition,
crafting, perks, set bonuses, original item names/artwork, non-gear inventory, other
mastery reward scopes and level-up loot remain unfinished. The current equipment
screen accepts gear explicitly restricted to one of the five player birds;
guest/unrestricted equipment compatibility still needs native verification. The current
integer combat model rounds final base stats; original fractional HP/damage
precision and all downstream rounding stages still need reconstruction.
Pig character growth now uses its traced percentage formula too. The 140
imported pigs have zero growth coefficients in this build; their equipment,
class/skin, difficulty and power-level additions remain separate unfinished stages.

Player progression now uses the original 99 per-level XP costs rather than
100 XP per level. XP carries after leveling, birds share the new player level,
and level 100 has no further XP row. The header displays current XP progress.
`content/progression.json` retains every row, its hash and original reward wire
data. The traced callback applies one level transition per XP event; complete
surplus-XP/UI event choreography still needs original-game comparison.

`tools/recover_loot.py` preserves all 2,044 original loot tables, 9,761 entries,
140 campaign pig defeat maps, 167 battle reward maps and 28 XP scaling rows in
`content/loot.json`. Rust evaluates native weighted/inventory/probability paths,
level bounds, nested tables, quantity/span rolls and duplicate resource merging.
All 26 tables reachable from imported pig defeat maps use supported paths;
wheel selection now uses the traced integer start plus consecutive wrapped slots.
Type 4 uses the supplied fixed start, and a forced-start override is available
for type 3. Nested wheels clear the parent override. Entry quantity/span draws
still run, including fixed quantities. Original battle wheel roots are retained.
Winning now offers **Spin & collect rewards**. The base wheel uses the original
first root, performance star count and level after pending XP settlement.
Type-4 tutorial wheels retain their fixed starting slot; ordinary wheels use a
dedicated deterministic RNG that cannot change combat choices. One to three
consecutive wrapped slots resolve through the recovered graph. Materials,
consumables, lucky coins and chest markers go into saved resource stacks; original
wheel gold goes to the gold wallet in addition to the existing easier battle
gold. The two tutorial equipment rewards become separate owned copies with
their rolled level/quality/ancient state and no enchantment. Chosen loadouts do
not change. The receipt screen now uses six recovered original wheel sprites:
wooden static halves, blurred spinning halves, cog, mirrored reward highlights
and active/inactive markers. Original pivots assemble the halves; the three
fixed markers sit 45 degrees apart. Selected wrapped slots land under those
markers. The screen still uses adapted placement, ordinal slot labels and a
provisional 1.4-second spin; the right-hand list shows the actual collected loot.
Original loot previews, controller timing and victory transitions remain unfinished.

`content/reward-wheel.json` records source sprite rectangles/pixel hashes,
38 selected scene transforms and component hashes/serialized widget bytes.
The six images share one extruded atlas with no new runtime dependency.
Regenerate with the pinned bundle and the same separate UnityPy environment:

```sh
python tools/recover_reward_wheel.py --bundle /path/to/data.unity3d
python3 tools/recover_reward_wheel.py --check
```

The wheel now plays original entrance and leave scale curves, including its
nonuniform overshoot. The whole wheel hierarchy scales together, including
rotated halves, markers, cog and labels. Original start/end-spin alpha channels
blend the blurred wheel over the static halves and fade the ordinal slot labels.
Renderer scheduling starts the provisional 1.4-second spin after entrance and
runs the end-spin fade during its final 0.375 seconds. Continue and navigation
input wait for settlement. Continue plays the shrink-out before returning to
Camp, dispatching once and blocking background clicks through completion.
These triggers are renderer policy; native controller scheduling is unverified.
The current receipt header/list and victory-panel leave remain adapted or pending.

`content/reward-motion.json` preserves four clips/16 channels/47 keys, serialized
source bytes/hashes and original events. Six header channels are evidence only;
sound/particle events are not dispatched. No new artwork or runtime dependency
is required:

```sh
python3 tools/recover_reward_motion.py --check
# Separate UnityPy environment, pinned reference bundle:
python tools/recover_reward_motion.py --bundle /path/to/data.unity3d
```

Claims update the profile and mark the battle claimed together. Unknown rewards,
quantity overflow or a full equipment inventory leave the whole profile, RNG
and unclaimed victory unchanged. Reopening cannot replay the payout; a new
victory in a replay legitimately earns another wheel. The existing v9 format
already stores these rewards, so no new save migration is needed.
Bonus-wheel substitution (`CheckForBonusLoot`), level-range placeholder routing
outside these imported roots, rerolls, additional story loot, chest-opening
effects, resource caps/subtype callbacks, equipment perks/source/scrap and the
original Unity RNG stream remain unfinished. Depositing a chest marker does
not yet open its original chest or execute its story effects.

The provisional flat 50-XP victory award has been replaced by original pig XP
drops. XP uses the recovered level-difference lookup and truncation; 112 campaign
battle rows add an unscaled clear bonus once when the final wave has no surviving
pigs. Each defeated pig is tracked once across waves; XP is saved after actions,
including before loss or retreat. The seeded starter battle earns 7 XP including
its five-point clear bonus. Unity's exact global RNG, same-action death coroutine
ordering, boosters and level-up loot/UI remain unfinished. Level-up updates all
battle birds' level, maximum HP and attack using their battle-start skins. The
native modified-health cache recalculation refills current HP; the recreation
also retains a separate knockout flag so refilled knocked-out birds cannot act.
Turn usage and timed effects survive the refresh, and updated stats reach the
renderer after the queued action. Exact visual timing, temporary-health/perk
stages and the complete knockout/revival lifecycle remain unfinished.
Original gold/mastery drops are sampled and retained in battle
records but are not deposited into a native inventory; easier victory gold remains
the requested override.

During an active battle, a knocked-out bird has a **Revive / 5 gold** button.
The five-coin cost comes from the original `ReviveSingleBirdsRequirement`;
the recreation pays it from the existing shared gold wallet. Revival restores
full HP, clears knockout, retains used turns and permits another paid revive
after a later knockout. Birds use their original `KnockedOut` and `KnockedOutEnd`
clips, with input held during recovery; a held knockout pose is cleared when the
bird returns. After a full-party defeat, the result screen offers a party revive.
The first is free; subsequent party revives cost ten gold, using the recovered
`FirstReviveUsed` rule and `ReviveBirdsRequirement`. Revival restores full HP,
resets both factions' turn-completion flags and continues the existing encounter.
Enemy damage, defeated pigs, delivered XP, wave and current round are retained.
Retained stuns advance through the normal turn loop so they cannot stall input.
`content/revival.json` also preserves the PvP cost. Original separate currency
inventory, PvP revival, complete initiative/perk/trigger behavior and the original
popup/countdown presentation remain unfinished.

Saves now use version 8 with separate level/residual XP, the original
first-party-revive usage flag, best stars by stable encounter ID and shared class
mastery ranks/residual points, separate owned gear instances and five two-hand
loadouts. Gear records use stable balancing IDs and keep level, quality, ancient
status and enchantment. Loading checks every equipped reference, bird and hand
slot. v1-v7 migration adds the same ten starter items previously used implicitly,
without changing their stats or awarding extra loot. An exact v7 backup is kept
before the first changed write. v6 migration preserves stars and initializes
previously unrecorded mastery to rank one. v5 migration
preserves its revive flag and starts unrecorded historical stars at zero rather
than inventing past battle results. v4 migration retains existing progress and grants
the previously unimplemented free party revive. v1-v3 migration
preserves the old level and at least its within-level percentage, rounding
up by less than one new XP when needed. XP banked at the old level-50 cap carries
forward. Gold, campaign IDs, hats, party and mute preference are preserved.
The original save is retained under a version-specific backup key before the
first profile action writes the migrated save; simply loading does not rewrite it.

`tools/recover_mastery.py` now retains all 100 original mastery costs, 34 player
class links, 47 mastery item scopes/fallback definitions and the 100-star unlock
offer in `content/mastery.json`. The core mastery evaluator checks the badge
gate, repeats rank transitions with residual carryover and clears surplus at
rank 100. Current-party recipient selection excludes knocked-out birds and uses
their captured battle class; all skins for a class share its mastery link.
The stat helper can apply a recovered mastery rank to character plus starter
equipment before the skin bonus. Once the collection reaches 100 stars, original
`mastery_current` drops apply once to participating birds' captured battle classes.
Class ranks and points persist since v7 and are shared by every skin of that class.
Rank increases update battle stats; Camp shows mastery progress and updated totals.
Drops received before unlocking are discarded rather than banked retroactively;
knocked-out birds receive none. Native legacy classes with no restricted owner
remain explicit. Other mastery scopes/fallback, complete native inventory/star-shop
claim flow, NPC guest ownership, exact cache/rank callbacks and rank-up presentation
remain unfinished.

Victories now use recovered campaign scoring: 109 imported encounters have fixed
thresholds and 58 use maximum-by-strength thresholds. Pig points use original
strength and a five-percent penalty per completed wave round, floored at 25%.
Surviving bird points use health ratio, floored at 50%; knocked-out birds contribute
no survivor points. Per-battle bonus points, native truncation order, strength-based
maximum caps and inclusive one/two/three-star thresholds are applied.
Victory results display score/stars; collecting a win saves only an encounter's
highest star count. The map shows per-encounter best stars and the collection total.
Replays and reopening cannot duplicate collection stars. The 100-star mastery
eligibility gate now controls live current-party mastery delivery. Summoning,
NPC/banners/PvP, full native death/initiative timing,
fractional health precision and collections outside imported encounters remain
unfinished. `content/scoring.json` retains coefficients, strategies and strengths.

Standard `AttackWithCollateralDamage` now runs its secondary hits after each
primary hit for birds and pigs, including Spies and Ninja Bowman. It chooses
random opposing targets without replacement, excludes the primary target, and
uses the attacker's modified attack times the configured collateral percentage.
Primary shielding, overkill and primary-hit retaliation do not cancel or scale
that callback. Secondary targets use the shared protection/vulnerability and
retaliation model. Native initiative/view eligibility is currently represented
by living fighters; exact native effect hooks, rage/rounding semantics and
collateral VFX still need reconstruction.

`AttackWithCollateralDamageAndStun` follows its different callback order:
secondary damage runs before the primary hit, retaining each selected target;
stun runs afterward with independent main/secondary chances and configured
duration. Repeated secondary entries retain separate rolls, including rolls at
zero chance. The callback respects the recovered primary participation/damage
gates and presence-based `alleffect`/`nodamage` exceptions. The three configured
stun variants are outside the imported main-island pig definitions; their
execution is verified directly in the engine. Native instance lifetime/target
list reuse, broader participation rules and remaining effect hooks are unfinished.

Combat presentation events now carry explicit living targets, including attacks
that deal zero damage. The melee timing decision rejects multiple targets and
uses recovered bird/pig main-hand ranged flags; it no longer treats a ranged weapon
as melee merely because its clip lacks a Projectile cue. Native coroutine field
offsets identify the half-length wait as the illusion path; normal ranged attacks
yield the attack animation length before continuing through impact actions.
`tools/native_field_layout.py 36525 36516` reproduces the declared native field
layout evidence, including separate static-field storage. Native
cached melee-state behavior, additional action hooks, off-hand length selection
and multihit pacing still need reconstruction and original-game comparison.

Starting classes are free; every other bundled hat is available for earned gold,
without event, date, or premium currency gates. Prices are intentionally changed.
Skin health/attack bonuses, attack percentages, hit counts, and area targeting
come from recovered data. Timed protection, poison, taunt, stun, weakness,
vulnerability, regeneration, attack buffs and retaliation share a common effect
model with source identities and separate cleanse/purge categories. Pirate,
Captain, Corsair and Tricksters support buffs and Lightning Bird's ordered attack
are implemented. Healing distinguishes caster, selected-target and individual
maximum health, selected-target bonuses and target-only cleansing from recovered
parameter presence. Many other special attack effects, support templates, and skin passives
remain unfinished. Unimplemented support actions report that they are unavailable
and do not consume a turn. Status timing and native execution semantics are not
yet fully reconstructed.

Three additional class attack rules now run from recovered configuration and
verified native healing/stun callbacks. Cleric's Healing Strike heals
positive-health allies in the source faction per hit for25% of normalized
damage (Moon Priest20%), including ordinary overkill. Healing caps at max HP
and does not clear knockout; a knocked-out bird with refilled positive HP can
receive healing while remaining unable to act. Bard's Heavy Metal uses the
separate one-turn duration and an inclusive random comparison; eligible rolls
consume RNG even at0/100%. Zero-damage targets require an explicit effect flag.
Wet-only attacks require WaterBomb, which is still unimplemented, so they skip
that callback without drawing. The seeded RNG is provisional, not Unity parity.
Thunderbird's selected-survivor vulnerability remains as described previously.
Healing now rounds through the traced service boundary per hit. Native
fractional base HP, optional healing triggers/perks, full trigger ordering, freeze/tentacle behavior and
Thunderbird callback equivalence remain unfinished.

Conditional attack damage now covers Stone Guard and Frost Savage, using their
recovered coefficients and descriptions. Stone Guard's Feral Assault applies
150% of its normal per-hit damage when the target has a curse in the current
effect model; multiple curses activate the multiplier once. Frost Savage's
Frost Strike applies its 150% multiplier only to stunned targets. Cleansing or
expiry removes eligibility, and positive effects do not qualify. Birds and pigs
share this calculation, with normal attack buffs, defenses, retaliation and
multihit stopping rules retained. A seeded Bard-to-Frost-Savage party sequence
checks the interaction through real battle actions. Wet, goo, ink and other
unimplemented conditions retain ordinary damage. Native callback order,
affliction classification and exact fractional rounding remain unverified;
this uses the existing integer combat and curse/stun model. Save format stays v9.

Thorn shields now capture a fixed amount from the caster's modified attack,
following the native `ThornSkill` coroutine's virtual call to
`ICombatant.get_ModifiedAttack`. This is distinct from Rogue-style reflection
of received damage. These reactive effects retain their configured durations;
full native timing and other reactive interactions remain under reconstruction.
Native source-faction duration events have been traced; exact event sequencing,
stacking rules, rounding and transitions between waves still require comparison.

The playable map now contains 167 original first-visit main-island encounters,
with 291 recovered waves and 140 linked pig definitions. Enemy groups, enemy
base health/attack, names, wave counts, and encounter party-size limits come from
the bundled game data. All first-visit waves in this import use guaranteed fixed
spawns. The map provides 14 pages, and battles support up to six enemies on screen.

Unlocking is currently sequential: original branching requirements are preserved
in `content/campaign.json` but are not yet executed. Replay weighted variants,
Chronicle Caves, power-level scaling, custom victory conditions and environmental
effects remain unfinished. Player XP/gear/mastery progression, remaining enemy AI and rage turn
timing remain provisional. Original animation playback, audio, crafting,
equipment, tutorials and remaining systems are also unfinished. This is an
incremental reconstruction, not the full original game.

Enemy AI now imports the original weighted skill combo chains and advances
through a chosen chain before choosing another. Charge skills retain a target,
show a countdown, and retarget if that target dies. Recovered damage percentages,
multi-hit counts and area attacks replace the old uniform pig attack. Supported
templates include weakness, poison, stun, purge, leech, shielding, attack buffs,
thorns and healing/cleansing. Weakest/strongest selection uses current health;
target-self flags and forced taunts are observed. The captured Brute encounter
shows the first of its three charging turns before its 300% attack.

Enemy summoning, special attacks without ordinary damage parameters, passives,
support feasibility and combo interrupts remain unfinished. Unsupported actions
are identified in the battle log. Damage-bearing special templates currently
execute their configured ordinary damage plus only the implemented effects.
The original Unity random stream, precise reaction order and all AI edge cases
have not been reproduced or verified against a running original game.

Rage actions now follow the recovered definitions and localized descriptions:
Red deals 500% attack to the living enemy with most health; Chuck launches five
primary attacks by randomly chosen living birds; Matilda heals living allies
for 35% of their maximum health and cleanses; Bomb deals 150% attack to all
living enemies; the Blues independently select random enemies for 200% damage,
stun and purge. The UI activates rage directly on the selected bird. Random
selection has an explicit seed for deterministic tests. Full native event order,
rage gain rules and interactions with unfinished status templates remain to be
verified against original execution.

Version 1 and 2 prototype saves migrate without losing gold, owned hats,
equipment, XP, progress count or party selection. New version 3 saves store
stable original hat and encounter IDs. Numeric old progress is retained as an
unlocked encounter count because the old invented stages have no exact original
equivalent. The first write after migration preserves the previous profile under
`epic-rust-profile-backup-v1` or `epic-rust-profile-backup-v2` in local storage.

## Build on macOS

From this directory with Rust and the Xcode command-line tools installed:

```sh
cargo test --workspace --locked
cargo clippy --workspace --all-targets --locked -- -D warnings
cargo run -p epic-client --release --locked
```

The native release executable is `target/release/epic-client`. Saves live in
`local.data` in the launch working directory. macOS arm64 compilation and native
UI/save checks and native music-backend checks pass; app-bundle packaging and a
full campaign playthrough remain unverified or unfinished. `python3 tools/smoke_client.py`
uses fresh isolated save directories and briefly opens native windows.
`python3 tools/smoke_audio.py` checks all nine music buffers and player controls
in an isolated folder without writing a save; brief audio snippets may be audible.

## Build on Windows

Install Rust with rustup and Visual Studio's **Desktop development with C++**
workload, including MSVC x64/x86 build tools and a Windows SDK. Having Visual
Studio installed without that workload does not provide `link.exe`.

From this folder:

```powershell
cargo test --workspace --locked
cargo run -p epic-client --release --locked
```

After the dependencies have been fetched, add `--offline` to avoid network use.
Native desktop is the initial build target. Android, iOS, and browser packaging
are not yet configured or tested. Browser storage also needs the quad-storage
JavaScript helpers. Cross-platform library support alone does not establish
that this project works on those devices.

## Local evidence

The supplied `angry-brids-epic.xapk` contains package `com.rovio.gold`, version
3.0.27463.4821. Its extracted APK and OBB are preserved in `original/`.
`analysis/global-metadata.dat` uses IL2CPP metadata version 23 and declares
6,970 types and 57,393 methods.

The original REA checkout is at `C:/Users/Adria/Downloads/rea` and its upstream
repository is <https://github.com/morluto/rea>. Its section validation and IL2CPP
workflow informed this investigation. Its CLI has not been executed: Node.js
was unavailable, and its supported metadata versions do not include v23. The
v23 reader here is a separate implementation based on the serialized layouts in
[Il2CppDumper](https://github.com/Perfare/Il2CppDumper/blob/master/Il2CppDumper/Il2Cpp/MetadataClass.cs).

Reproduce the static inventory using Python:

```powershell
python tools/inspect_game.py
```

Or use the Rust reader:

```powershell
cargo run -p epic-core --bin inspect-metadata -- analysis/global-metadata.dat ClassItem
```

Names and signatures establish declarations, not method behavior. Native method
bodies remain to be reconstructed. The Unity asset reader now inventories the
stripped Unity 5.6 serialized files, and the protobuf reader has recovered 51
balancing tables containing 14,551 rows. These include 1,852 battle definitions,
538 hotspots, 506 pig definitions, and 792 skill definitions. Raw field-number
exports are in `analysis/content/`; those files preserve configuration rather
than claiming every field's runtime semantics have been established.

`content/catalog.json` contains the normalized skin catalog and all 792 skill
configurations. Negative protobuf durations are preserved as signed values;
`-1` denotes a persistent/passive configuration, rather than an enormous unsigned
duration. Serialized skill parameter float bits are preserved in generated Rust.
`content/campaign.json` contains original encounter/pig links and source requirements.
`content/art-manifest.json` links all 116 converted images to original atlas
names and rectangles. Runtime assets are embedded in the executable.

Reproduce extraction from the preserved APK and OBB:

```powershell
python tools/extract_unity.py
python tools/recover_content.py
g++ -shared -O2 -static -o analysis/unity/texture_decode.dll tools/vendor/texture2ddecoder/etc.cpp tools/vendor/texture2ddecoder/bridge.cpp
python tools/recover_art.py
python tools/recover_equipment.py
python tools/recover_stats.py
python tools/recover_progression.py
python tools/recover_loot.py
python tools/recover_revival.py
python tools/recover_mastery.py
python tools/recover_scoring.py
python tools/recover_characters.py
python tools/recover_animations.py
python tools/build_animation_runtime.py
python tools/recover_scenery.py
python tools/build_scenery_runtime.py
g++ -shared -O2 -static -o analysis/unity/audio_decode.dll tools/vendor/stb/audio_bridge.cpp
python tools/recover_audio.py
python tools/build_music_runtime.py
cargo fmt --all
```

The ETC conversion helper requires a C++ compiler and is currently configured
for Windows. Python extraction and the game runtime do not execute target code.
The asset preparation tools are separate from the Rust runtime. See
`THIRD_PARTY_NOTICES.md` for input and helper provenance.

Read-only native linking is now available with the existing GNU objdump:

```powershell
python tools/link_native.py GenerateWaveWeighted
```

This binds IL2CPP v23 metadata method indices to the x86 binary's global native
method-pointer registration. The unique candidate must contain a complete array
of executable-segment pointers. `analysis/native-methods.json` retains both input
SHA256 digests and the 54,114-entry pointer-table identity. Selected disassembly
is written to `analysis/native/`; shared native addresses are labeled as aliases.
The reader also validates generic registrations and resolves 24,752 logical
generic method instances against 19,705 shared native pointers. This exposes
`BaseCombatant<BirdGameData>` stat getters omitted by the ordinary pointer array.
Nested type names and native string-literal usage slots are annotated; unsupported
generic type encodings remain explicitly unresolved.
These are static bindings and disassembly, not proof of behavior matching a
running original game. REA's CLI remains unavailable in this environment.
Extracted game files and generated evidence are local inputs, excluded by
`.gitignore`.

## Verification so far

Current victory-heading milestone on macOS arm64: 197 Rust tests, Clippy, release
build, all seven source-only UI/layout/HUD/motion/wheel/star/reward-motion checks and
four hierarchy regressions pass.
Tests also cover wrapped reward-slot alignment with all three markers.
Tests cover original nine-slice geometry, small panels and anchor offsets across
different viewport sizes, safe HP ranges and original health-frame geometry.
Native UI/save checks pass across 22 launches and 1,144 captures, including
zero/one-point/partial/full HP in six-enemy layouts, plus half-full, ready,
clicked and settled pepper states.
Clicking a partial pepper leaves rage unchanged; clicking a full pepper spends
rage and runs the existing attack through the real UI. Camp, inventory and
battle captures were also visually reviewed. This is not a claim of
pixel-equivalent layout or full visual parity with EpicWeb.
The dedicated pause/boss/motion/star/reward suite adds two launches and 148 captures, checking
authored motion keys, frozen pause time, rejected background input, continue,
music toggles, retry and map return without changing the fixture's profile.
Additional states check original HUD entrances/wave updates, rejected moving/
offscreen control input and successful settled input (1,292 captures/24 launches
across both native suites). Current evidence is under
`analysis/smoke-client-1795582832636326000` and
`analysis/smoke-hud-1795582804592414000` (ignored by Git). Spinning and landed
original-art wheel captures were visually reviewed.
Star states additionally cover one/two/three-star results, group entrance and
the gain overshoot of each star, title translation/stretch/undershoot and score
alpha reveal, without changing saved rewards. Those panels
and overshoots were visually reviewed.
Reward states cover entrance/blur/landing/shrink-out, rejected early Continue
and header clicks, and Camp navigation only after the wheel leaves. Entrance,
spin-crossfade and half-size exit captures were visually reviewed.
Exit states also verify that map/retry cannot route early, clicks stay blocked
after the popup closes, and retry starts fresh only after the HUD has left.

The preceding conditional-attack milestone passed 168 Rust tests, Clippy and
the release build pass. Eight new regressions cover curse categories, positive
effects, cleanse/purge/expiry, stun eligibility, defense and retaliation,
bird/pig consistency and the Bard-to-Frost-Savage combination. Native UI/save
checks produce 1,012 captures across 22 launches, including normal and boosted
Stone Guard/Frost Savage damage. Native behavior equivalence remains unverified.

The preceding class-attack milestone passed 160 Rust tests, Clippy and the
release build pass. Regression checks cover defense/overkill healing, HP caps,
knockout and retaliation behavior, deterministic Bard chance and one skipped
enemy phase, plus Thunderbird's selected-target-only vulnerability. Native
UI/save checks produce 924 captures across 22 launches, adding Cleric HP
before/after, Bard stun and Thunderbird vulnerability previews. Exact native
callback and rounding equivalence remains unverified.

The preceding equipment-presentation milestone passed 152 Rust tests,
Clippy and the release build pass. The native UI/save suite produces 836 captures
across 22 launches, including Bomb's level-cycled projectile and the Blues'
starter arrow before launch, in flight and after expiry. Those captures were
visually reviewed. Tests cover captured loadout/level/mastery refresh, equipped
attack clips, off-hand selection and ranged timing without a projectile cue.

The preceding base-wheel milestone on macOS arm64 passed 149 Rust tests, Clippy,
release build and the source-only resource-generation check pass. Native UI
checks extend the previous fixtures with exact v8 backup, v9 resource migration,
recipe quantities/levels, changed-stack persistence and read-only reopening.
The run produces 660 captures across 22 launches; inventory screens and the
spinning/landed reward wheel were visually reviewed. The original tutorial
wheel's sword, vial and seashell persist with the loadout unchanged and no
duplicate payout on reopening. Core tests cover every campaign wheel slot at
one/two/three stars, transactional capacity failures and end-level gear stats.
The macOS music follow-up also passes all 149 tests, Clippy and the release
build. `python3 tools/smoke_audio.py` verifies all nine embedded tracks through
NSSound plus mute/unmute, track changes, loop flags, silent mode and cleanup;
no play save is written. The newer equipment-presentation UI suite above also
retains silent capture mode while checking the existing save/gear/reward paths.
The historical Windows/recovery checks below describe the previous baseline;
the original APK/native binary are absent from this checkout, so the 38 original
recovery tests have not been rerun here.

- `cargo check -p epic-core --offline --locked`: passed.
- `cargo clippy --workspace --all-targets --offline --locked -- -D warnings`: passed.
- `cargo test --workspace --offline --locked`: all 139 tests passed, including native wheel start/wrap/forced behavior and quantity RNG, distinct gear instance ownership, cross-bird/slot rejection, loadout battle stats, malformed gear saves and v7/v8 migration, live mastery persistence/rank stat updates, 99-to-100-star gating, knockout/loss/idempotency and v6/v7 migration, native score formulas/thresholds, best-star replay collection, score retention across waves and v5/v6 star migration, mastery unlock gating/multiple-rank carryover/cap, current-party recipients, class links and stat composition, v4/v5 save migration and strict revive-flag validation, free/paid full-party revival, encounter/XP retention and stunned-party recovery, paid revival validation, repeat revival and all-five-bird recovery animations, mid-battle level stat refresh/HP refill with knockout/turn/effect retention and queued visible stats, original defeat loot and XP scaling, once-only final-wave XP bonuses, XP before loss, terminal-level behavior, wave replacement, original XP costs/carryover, legacy save migration, stats, combat, animation, scenery, audio and campaign checks.
- `cargo build -p epic-client --release --offline --locked`: passed.
- Rust sources formatted with `cargo fmt --all`.
- Python and compiled Rust metadata readers executed successfully on the supplied game.
- `python -m unittest discover -s tools -p test_recovery.py -v`: all 38 recovery tests passed, including original scoring coefficients, all campaign strategy/strength bindings and native counter offsets, mastery costs/class links and the 100-star unlock offer, the three original revive resource requirements, native stat-cache invalidation and indirect HP refill, original loot graph counts/direct resource roots, battle bonus maps and XP bands, all 99 original XP cost rows, native stat literals, audio decoding, scenery geometry, animation, projectile/equipment data and native bindings.
- `python tools/smoke_client.py`: purchase through the real UI, gold deduction, Elite Knight equipped, real attack finishing an isolated weakened wave, 7 original XP saved without a gold claim and read-only reload without duplicate XP; exact v1/v3/v4/v5/v6/v7 backups retained. A v3 profile with 250 total XP migrates to level three with 37 / 74 residual XP; campaign, ownership, gear/party choices and mute preference are retained. Also verifies a real single-bird revive button, five-gold deduction, full HP/recovery clip and read-only reload without another charge. Also verifies free-first and paid full-party revive buttons, entitlement persistence across reopening, ten-gold deduction and exact v4 backup. Also claims a 24,000-point/three-star victory through the UI, verifies v5 backup/migration and reopens without duplicated gold, XP or stars. Also verifies a real mastery rank-up after a 100-star fixture unlock, changed HP, shared class progress, exact v6 backup and read-only reload without duplicated mastery. Also migrates v7 to ten starter gear instances, equips a separately owned copy through the real Equipment button and verifies read-only reload without changing rewards or ownership. Runs in a fresh isolated directory.
- Native renderer: 414 captures across eighteen launches, including campaign/shop/camp, six-enemy battle, Brute charging, all 22 actor previews, live attack timing and original Ninja Bowman arrow launch/flight/expiry, the Equipment screen, plus v3/v4/v5/v6/v7-to-v8 migration, XP display, single/free-party/paid-party revival buttons and recovery poses. Representative captures visually inspected. Animation blending, full attachment behavior and original camera framing still require comparison.
- `python tools/smoke_scenery.py`: all 60 campaign backgrounds rendered as distinct 1100x720 native captures without writing a play save. Representative beach, cave, snow and castle scenes visually inspected. This checks static rendering, not original-game visual equivalence.
- `python tools/smoke_audio.py`: Windows WinMM accepted all nine embedded music WAVE buffers, each stopped immediately; no play save written. This verifies the API path, not speaker audibility or original mixer behavior.
- A full manual campaign playthrough and mobile behavior remain unverified.

For native render captures, run `Epic Rust.exe --capture-ui DIRECTORY` from an
isolated working directory. The optional `--exercise-save` flag is a test
scenario requiring a fresh v1 starter profile with 500 gold; it buys Elite Knight
through the real shop UI and finishes a weakened battle to verify XP persistence.
It writes only within the
selected working directory. `--exercise-migration` reselects Red through Camp
to commit a converted save without changing the seeded party. `--exercise-revival`
seeds one knocked-out bird and clicks its paid revive button.
`--exercise-party-revival` seeds a defeated party and clicks the full-party revive
button. `--exercise-score` finishes a weakened first battle and collects its
score/stars through the real UI. `--exercise-mastery` uses a seeded one-point
drop after a 100-star fixture unlock to check a real rank-up and save write.
These flags are for isolated test fixtures; do not use them with your play save.


Windows continuation from GitHub commit `f4e5111`: the original conditional
damage callback bodies are now available under `analysis/native/`. Enabled
Stone Guard/Frost Savage multipliers retain fractional base damage through the
conditional stage, and nonpositive conditional coefficients are bypassed.
Whole-pipeline fractional damage/defense order and missing status conditions
remain unfinished. Validation: 200 Rust tests, 42 Python recovery/layout tests,
Clippy, release, seven prepared UI-manifest checks and both native UI suites
(1,292 captures across 24 launches) pass on Windows x86_64.


The subsequent native healing/stun continuation passes206 Rust tests, Clippy,
Windows release build and both native UI suites (1,292 captures/24 launches).
It fixes per-hit normalized-damage healing (including overkill), positive-HP
healing eligibility with retained knockout, and inclusive stun RNG/zero-damage
gating. See class_actions.rs and the native findings for evidence and remaining
fractional HP/trigger/RNG limitations.


A native normalization follow-up now keeps primary attack modifiers and defenses
in float until the traced Mathf.RoundToInt boundary. Half values round to even.
Healing queues accumulate float values and drain through the same rounding
boundary before applying/capping HP; the queue then clears. Percentage-based
healing avoids earlier integer rounding. This includes the basic queue lifecycle,
not original heal triggers/perks/PvP modifiers. Base HP/attack storage and several
other effect magnitudes remain integer approximations. Original disassembly and
source hashes are retained in analysis/native/combat-rounding-evidence.json.

Normalization milestone verified on Windows:213 Rust tests,43 Python tests,
Clippy, release build and both native UI suites (1,292 captures/24 launches).
Save format remains v9; no economy or acquisition changes.


Shaman/Witch Doctor healing-reduction attacks now apply their original
50/70/100% curses. They obey the shared after-damage/participation gate and
consume one inclusive chance roll when eligible. Each curse multiplies the
running healing value; rounding occurs before the healing-trigger pass and
after all its reductions. Cleansing, refresh and source-turn expiry use the
shared effect model. This supersedes the earlier no-healing-triggers limitation
only for ordinary healing-reduction curses. Healing increases, passive and
environmental modifiers, consumable bypass, full trigger/perk ordering, native
same-type dictionary order, Unity RNG and fractional HP remain unfinished.
Evidence: `analysis/native/healing-reduction-evidence.json`. Save format stays v9.

Healing-reduction milestone verified on Windows:219 Rust tests,44 Python
tests, Clippy, release, seven prepared-manifest checks and both native UI suites
(1,292 captures across24 launches) pass. Desktop packaging now includes the
current `CONTINUING.md` handoff.


Paladin/Drone weakest-ally healing now runs after each hit from either faction,
using normalized damage including overkill. Native targeting compares float
health ratios, starts with the attacker and retains its choice on ties. The
existing queue applies rounding and healing reductions per hit. Eight new Rust
regressions cover targeting, rounding, healing timing, survival and pig support.
Native initiative ordering, fractional HP, full trigger/perk scheduling and heal
visuals remain incomplete. Evidence: `analysis/native/weakest-healing-evidence.json`.
Save format remains v9 and the gold/hat overrides are unchanged.

Weakest-ally healing milestone verified on Windows:227 Rust tests,45 Python
tests, Clippy, release and both native UI suites (1,292 captures/24 launches) pass.
