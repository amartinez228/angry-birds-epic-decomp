//! Recovered primary music bindings and Windows/macOS PCM playback.
//! Fades, mixer buses, sound effects and other platform backends are pending.
include!("music_generated.rs");

pub struct MusicTrack {
    pub name: &'static str,
    wave: &'static [u8],
}
pub struct MusicDefinition {
    id: &'static str,
    looping: bool,
    tracks: &'static [MusicTrack],
}

#[cfg(target_os = "windows")]
mod backend {
    use super::MusicTrack;
    #[link(name = "winmm")]
    extern "system" {
        fn PlaySoundW(sound: *const u16, module: *mut std::ffi::c_void, flags: u32) -> i32;
    }
    pub fn play(track: &MusicTrack, looping: bool) -> bool {
        // SND_MEMORY | SND_ASYNC | SND_NODEFAULT, optionally SND_LOOP.
        // The complete WAVE buffer has static storage for async playback.
        let flags = 0x4 | 0x1 | 0x2 | if looping { 0x8 } else { 0 };
        unsafe { PlaySoundW(track.wave.as_ptr().cast(), std::ptr::null_mut(), flags) != 0 }
    }
    pub fn stop() {
        unsafe {
            PlaySoundW(std::ptr::null(), std::ptr::null_mut(), 0);
        }
    }
}
#[cfg(target_os = "macos")]
#[path = "music_macos.rs"]
mod backend;
#[cfg(not(any(target_os = "windows", target_os = "macos")))]
mod backend {
    use super::MusicTrack;
    pub fn play(track: &MusicTrack, _: bool) -> bool {
        let _ = track.wave;
        false
    }
    pub fn stop() {}
}

pub struct MusicPlayer {
    enabled: bool,
    muted: bool,
    failed: bool,
    current: Option<(&'static MusicDefinition, usize)>,
    random: u64,
}
impl MusicPlayer {
    pub fn new(silent: bool, muted: bool, seed: u64) -> Self {
        Self {
            enabled: !silent,
            muted,
            failed: false,
            current: None,
            random: seed.max(1),
        }
    }
    pub fn muted(&self) -> bool {
        self.muted
    }
    pub fn label(&self) -> &'static str {
        if self.muted {
            "Music: off"
        } else if self.failed {
            "Music unavailable"
        } else {
            "Music: on"
        }
    }
    pub fn toggle(&mut self) {
        self.muted = !self.muted;
        self.restart();
    }
    fn restart(&mut self) {
        if !self.enabled {
            return;
        }
        backend::stop();
        self.failed = false;
        if !self.muted {
            if let Some((sound, index)) = self.current {
                self.failed = !backend::play(&sound.tracks[index], sound.looping);
            }
        }
    }
    pub fn request(&mut self, id: &str) {
        if self.current.is_some_and(|(sound, _)| sound.id == id) {
            return;
        }
        let Some(sound) = MUSIC.iter().find(|sound| sound.id == id) else {
            return;
        };
        // Cosmetic RNG has its own state; music never changes battle choices.
        self.random ^= self.random << 13;
        self.random ^= self.random >> 7;
        self.random ^= self.random << 17;
        let index = ((self.random as u128 * sound.tracks.len() as u128) >> 64) as usize;
        self.current = Some((sound, index));
        self.restart();
    }
}
impl Drop for MusicPlayer {
    fn drop(&mut self) {
        if self.enabled {
            backend::stop();
        }
    }
}

#[cfg(not(target_arch = "wasm32"))]
pub fn check_backend() -> bool {
    let mut okay = true;
    for sound in MUSIC {
        for track in sound.tracks {
            let accepted = backend::play(track, sound.looping);
            #[cfg(target_os = "macos")]
            let accepted = accepted && backend::playback_matches(sound.looping);
            println!(
                "{} / {}: {}",
                sound.id,
                track.name,
                if accepted { "accepted" } else { "unavailable" }
            );
            backend::stop();
            okay &= accepted;
        }
    }
    #[cfg(target_os = "macos")]
    {
        // Exercise the real MusicPlayer path, not just individual WAV loading.
        let controls_okay = check_macos_controls();
        println!(
            "music controls: {}",
            if controls_okay {
                "accepted"
            } else {
                "unavailable"
            }
        );
        okay &= controls_okay;
    }
    okay
}

#[cfg(target_os = "macos")]
fn check_macos_controls() -> bool {
    let mut okay = true;
    {
        let mut player = MusicPlayer::new(false, false, 7);
        player.request("music_worldmap");
        okay &= !player.failed && backend::playback_matches(true);
        let random = player.random;
        player.request("music_worldmap");
        okay &= player.random == random && backend::playback_matches(true);
        player.toggle();
        okay &= player.muted() && backend::stopped();
        player.request("music_camp");
        okay &= backend::stopped();
        let random = player.random;
        player.toggle();
        okay &= !player.muted()
            && !player.failed
            && player.random == random
            && backend::playback_matches(true);
        player.request("music_battle_win");
        okay &= !player.failed && backend::playback_matches(false);
    }
    okay &= backend::stopped(); // Drop stops/relinquishes the owned NSSound.
    {
        let mut silent = MusicPlayer::new(true, false, 7);
        silent.request("music_worldmap");
        silent.toggle();
        silent.toggle();
        okay &= backend::stopped();
    }
    okay
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn campaign_music_keeps_original_variants_and_loop_flags() {
        let basic = MUSIC.iter().find(|s| s.id == "Music_Combat_Basic").unwrap();
        assert_eq!(
            basic.tracks.iter().map(|t| t.name).collect::<Vec<_>>(),
            ["Battle_01", "Battle_02", "Battle_03", "Battle_04"]
        );
        let special = MUSIC
            .iter()
            .find(|s| s.id == "Music_Combat_Special")
            .unwrap();
        assert_eq!(special.tracks[0].name, "Battle_05");
        assert!(basic.looping && special.looping);
        for id in ["music_battle_win", "music_battle_lose"] {
            assert!(!MUSIC.iter().find(|s| s.id == id).unwrap().looping);
        }
        for encounter in epic_core::ENCOUNTERS {
            assert!(MUSIC.iter().any(|s| s.id == encounter.music_id));
        }
        for sound in MUSIC {
            for track in sound.tracks {
                assert_eq!(&track.wave[..4], b"RIFF");
                assert_eq!(&track.wave[8..12], b"WAVE");
                assert_eq!(
                    u32::from_le_bytes(track.wave[4..8].try_into().unwrap()) as usize + 8,
                    track.wave.len()
                );
            }
        }
    }
    #[test]
    fn repeated_frames_and_mute_do_not_reroll_the_current_track() {
        let mut player = MusicPlayer::new(true, false, 92345);
        player.request("Music_Combat_Basic");
        let first = player.current.unwrap().1;
        let random = player.random;
        player.request("Music_Combat_Basic");
        player.toggle();
        player.toggle();
        assert_eq!(player.random, random);
        assert_eq!(player.current.unwrap().1, first);
        player.request("music_battle_win");
        player.request("Music_Combat_Basic");
        assert_ne!(player.random, random);
    }
}
