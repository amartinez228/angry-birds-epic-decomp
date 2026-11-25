//! Reference HUD anchors, artwork and authored entry/wave-update motion.
use crate::ui_motion as motion;
use macroquad::prelude::*;
use std::cell::OnceCell;

struct Anchor {
    column: u8,
    row: u8,
    offset: [f32; 2],
}
impl Anchor {
    fn point(&self, viewport: Vec2) -> Vec2 {
        vec2(
            viewport.x * self.column as f32 / 2. + self.offset[0],
            viewport.y * self.row as f32 / 2. - self.offset[1],
        )
    }
}

struct Sprite {
    name: &'static str,
    rect: [f32; 4],
}
include!("battle_hud_generated.rs");

#[derive(Clone, Copy, Debug, PartialEq)]
pub struct HudPose {
    pub progress_offset: Vec2,
    pub progress_scale: f32,
    pub rage_offset: Vec2,
    pub pause_offset: Vec2,
    pub buttons_ready: bool,
}
impl HudPose {
    pub fn settled() -> Self {
        Self {
            progress_offset: Vec2::ZERO,
            progress_scale: 0.75,
            rage_offset: Vec2::ZERO,
            pause_offset: Vec2::ZERO,
            buttons_ready: true,
        }
    }
}

#[derive(Default)]
pub struct HudMotion {
    scene: Option<(usize, u32)>,
    started: f32,
    wave_started: Option<f32>,
    last_time: f32,
}
impl HudMotion {
    pub fn restart(&mut self, stage: usize, wave: u32, now: f32) {
        self.scene = Some((stage, wave));
        self.started = now;
        self.last_time = now;
        self.wave_started = None;
    }
    pub fn observe(&mut self, stage: usize, wave: u32, now: f32) {
        let Some((old_stage, old_wave)) = self.scene else {
            self.restart(stage, wave, now);
            return;
        };
        if stage != old_stage || wave < old_wave || now < self.last_time {
            self.restart(stage, wave, now);
            return;
        }
        if wave != old_wave {
            self.wave_started = Some(now);
        }
        self.scene = Some((stage, wave));
        self.last_time = now;
    }
    pub fn pose(&self, now: f32, animated: bool) -> HudPose {
        if !animated {
            return HudPose::settled();
        }
        let age = (now - self.started).max(0.);
        let (progress_clip, progress_age) = if let Some(start) = self.wave_started {
            if now - start < motion::duration("progress_update") {
                ("progress_update", now - start)
            } else {
                ("progress_enter", age)
            }
        } else {
            ("progress_enter", age)
        };
        let offset = |clip, time| {
            vec2(
                motion::sample(clip, "Animation", "position.x", time, 0.),
                -motion::sample(clip, "Animation", "position.y", time, 0.),
            )
        };
        HudPose {
            progress_offset: offset(progress_clip, progress_age),
            progress_scale: motion::sample(
                progress_clip,
                "Animation",
                "scale.x",
                progress_age,
                0.75,
            ),
            rage_offset: offset("rage_enter", age),
            pause_offset: offset("pause_button_enter", age),
            buttons_ready: age
                >= motion::duration("rage_enter").max(motion::duration("pause_button_enter")),
        }
    }
}

thread_local! {
    static TEXTURE: OnceCell<Texture2D> = const { OnceCell::new() };
}

pub fn initialize() {
    TEXTURE.with(|slot| {
        slot.get_or_init(|| {
            let texture = Texture2D::from_file_with_format(ATLAS, Some(ImageFormat::Png));
            texture.set_filter(FilterMode::Linear);
            texture
        });
    });
}

fn sprite(name: &str, dest: Rect, fraction: f32, flip: bool, tint: Color) {
    let fraction = fraction.clamp(0., 1.);
    if fraction == 0. {
        return;
    }
    let asset = SPRITES.iter().find(|s| s.name == name).expect("HUD sprite");
    let [x, y, w, h] = asset.rect;
    TEXTURE.with(|slot| {
        draw_texture_ex(
            slot.get().expect("Initialized battle HUD"),
            dest.x,
            dest.y,
            tint,
            DrawTextureParams {
                dest_size: Some(vec2(dest.w * fraction, dest.h)),
                source: Some(Rect::new(x, y, w * fraction, h)),
                flip_x: flip,
                ..Default::default()
            },
        );
    });
}

fn centered(center: Vec2, size: Vec2) -> Rect {
    Rect::new(
        center.x - size.x / 2.,
        center.y - size.y / 2.,
        size.x,
        size.y,
    )
}

pub fn rage_hitbox(viewport: Vec2, pose: HudPose) -> Rect {
    centered(
        RAGE.point(viewport) + pose.rage_offset + vec2(0., -12.),
        vec2(158., 104.),
    )
}

pub fn rage(viewport: Vec2, value: u16, enabled: bool, hover: bool, pose: HudPose) {
    let center = RAGE.point(viewport) + pose.rage_offset;
    let scale = 0.9; // Authored ChiliBar/Animation local scale.
    if value >= 100 {
        sprite(
            "rage_ready",
            centered(center + vec2(0., -3.6), vec2(206., 166.) * scale),
            1.,
            false,
            if enabled {
                WHITE
            } else {
                Color::new(1., 1., 1., 0.5)
            },
        );
    }
    let tint = if hover && enabled {
        Color::new(1., 0.94, 0.77, 1.)
    } else {
        WHITE
    };
    sprite(
        "rage_body",
        centered(center, vec2(146., 78.) * scale),
        1.,
        false,
        tint,
    );
    sprite(
        "rage_fill",
        centered(center, vec2(134., 68.) * scale),
        value as f32 / 100.,
        false,
        tint,
    );
    sprite(
        "rage_stem",
        centered(center + vec2(56., -30.) * scale, vec2(42., 62.) * scale),
        1.,
        false,
        tint,
    );
}

pub fn progress(viewport: Vec2, wave: usize, waves: usize, pose: HudPose) {
    let center = PROGRESS.point(viewport) + pose.progress_offset;
    let scale = pose.progress_scale;
    let waves = waves.max(1);
    // The original controller adjusts the track at runtime. Retain the authored
    // 0.75 scale and artwork, adapting the span to current imported wave counts.
    let span = (waves as f32 * 44.).clamp(44., 220.) * scale;
    let start = center.x - span / 2.;
    let end = center.x + span / 2.;
    let height = 44. * scale;
    let mut x = start;
    while x < end {
        let width = (end - x).min(64. * scale);
        sprite(
            "track_middle",
            Rect::new(x, center.y - height / 2., width, height),
            1.,
            false,
            WHITE,
        );
        x += width;
    }
    sprite(
        "track_end",
        Rect::new(
            start - 86. * scale,
            center.y - height / 2.,
            86. * scale,
            height,
        ),
        1.,
        false,
        WHITE,
    );
    sprite(
        "track_end",
        Rect::new(end, center.y - height / 2., 86. * scale, height),
        1.,
        true,
        WHITE,
    );
    sprite(
        "wheel",
        centered(
            vec2(end + 34. * scale, center.y - 24. * scale),
            vec2(62., 60.) * scale,
        ),
        1.,
        false,
        WHITE,
    );
    let fraction = wave.saturating_sub(1).min(waves.saturating_sub(1)) as f32
        / waves.saturating_sub(1).max(1) as f32;
    let bird = vec2(start + span * fraction, center.y + 6. * scale);
    sprite(
        "bird_shadow",
        centered(bird + vec2(2., -4.) * scale, vec2(40., 14.) * scale),
        1.,
        false,
        WHITE,
    );
    // The original bird uses bottom-center pivot (7 in NGUI).
    sprite(
        "bird",
        Rect::new(
            bird.x - 28. * scale,
            bird.y - 52. * scale,
            56. * scale,
            52. * scale,
        ),
        1.,
        false,
        WHITE,
    );
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn entry_replays_original_offsets_and_disables_moving_controls() {
        let mut motion = HudMotion::default();
        motion.restart(3, 1, 10.);
        let start = motion.pose(10., true);
        assert_eq!(start.progress_offset, vec2(0., -100.));
        assert_eq!(start.rage_offset, vec2(0., 200.));
        assert_eq!(start.pause_offset, vec2(-120., -120.));
        assert!(!start.buttons_ready);
        assert!(rage_hitbox(vec2(1100., 720.), start).y > 720.);
        let overshoot = motion.pose(10.125, true);
        // The authored x key retains a tiny Unity serialization residual.
        assert!((overshoot.progress_offset - vec2(0., 20.)).length() < 1e-6);
        assert_eq!(overshoot.rage_offset, vec2(0., -20.));
        assert_eq!(overshoot.pause_offset, vec2(20., 20.));
        assert!(!overshoot.buttons_ready);
        assert_eq!(motion.pose(10.5, true), HudPose::settled());
    }

    #[test]
    fn wave_update_starts_once_and_restores_the_original_resting_scale() {
        let mut motion = HudMotion::default();
        motion.observe(3, 1, 0.);
        motion.observe(3, 2, 1.);
        motion.observe(3, 2, 1.125);
        let peak = motion.pose(1. + 1. / 6., true);
        assert!((peak.progress_offset.y - 200.).abs() < 0.001);
        assert!((peak.progress_scale - 1.).abs() < 0.001);
        assert_eq!(peak.rage_offset, Vec2::ZERO);
        assert_eq!(motion.pose(3., true), HudPose::settled());
        motion.observe(4, 1, 3.);
        assert!(!motion.pose(3., true).buttons_ready);
        motion.observe(4, 1, 0.);
        assert!(!motion.pose(0., true).buttons_ready);
    }

    #[test]
    fn paused_game_time_preserves_every_hud_pose_channel() {
        let mut motion = HudMotion::default();
        motion.restart(3, 1, 0.);
        let mut clock = crate::pause::BattleClock::default();
        clock.advance(100., false);
        let before = motion.pose(clock.advance(100.125, false), true);
        let held = motion.pose(clock.advance(200., true), true);
        assert_eq!(before, held);
        assert_eq!(
            motion.pose(clock.advance(200.5, false), true),
            HudPose::settled()
        );
    }

    #[test]
    fn anchors_preserve_authored_offsets_across_viewports() {
        assert_eq!(PROGRESS.point(vec2(1280., 720.)), vec2(640., 50.));
        assert_eq!(RAGE.point(vec2(1280., 720.)), vec2(640., 654.));
        for size in [vec2(1100., 720.), vec2(1920., 1080.), vec2(800., 600.)] {
            assert_eq!(PROGRESS.point(size), vec2(size.x / 2., 50.));
            assert_eq!(RAGE.point(size), vec2(size.x / 2., size.y - 66.));
            let hitbox = rage_hitbox(size, HudPose::settled());
            assert!(hitbox.x >= 0. && hitbox.y >= 0.);
            assert!(hitbox.right() <= size.x && hitbox.bottom() <= size.y);
            assert!(hitbox.contains(RAGE.point(size)));
        }
    }
}
