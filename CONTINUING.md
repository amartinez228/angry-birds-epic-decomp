# Continuing this project

This is an unfinished Rust reconstruction of Angry Birds Epic build
com.rovio.gold 3.0.27463.4821. Read README.md, RECONSTRUCTION.json and
THIRD_PARTY_NOTICES.md before working. The overall recreation is not complete;
only Windows x86_64 has been verified.

## Build and play

Install Rust with a working native linker/toolchain. From this directory:

```powershell
cargo test --workspace --locked
cargo clippy --workspace --all-targets --locked -- -D warnings
cargo build -p epic-client --release --locked
```

On Windows, launch `target/release/epic-client.exe` from the directory where you
want its `local.data` save to live. Save format is EPIC_RUST_8. Saves and build
outputs are deliberately not committed. Cargo.lock and the runtime assets are
committed; Git LFS is not required for this snapshot. On the original machine,
dependencies are cached and the commands also work with `--offline`.

The existing Desktop launcher/package is separate from this checkout. Run
`powershell.exe -NoProfile -ExecutionPolicy Bypass -File tools/package_desktop.ps1`
after building to create/update that Windows Desktop package. It preserves saves
and backs up replaced files. Do not commit that package or its previous-builds.

## Where work stopped

- Latest verified baseline: 139 Rust tests, 38 Python recovery tests, Clippy,
  Windows release build, and native UI/save checks passed.
- Owned equipment and loadouts persist. Level/mastery refresh retains selected
  gear and the captured battle skin.
- Wheel selection logic is recovered and tested. Live wheel reward delivery,
  resource persistence, crafting and many original systems remain unfinished.
- `content/resources.json` preserves 617 resource definitions and 24 merged
  starting values, including recipe level deltas. It is recovered configuration,
  not a working resource inventory.
- Keep the requested easier gold and all 116 bundled player hats purchasable
  with earned gold. Current overrides are documented in RECONSTRUCTION.json.
- The main agent was paused at the user's request. Do not interpret this
  document as an instruction to resume automatically.

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
