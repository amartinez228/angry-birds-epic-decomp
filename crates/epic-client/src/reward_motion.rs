//! Authored wheel channels with explicit provisional receipt scheduling.
use crate::ui_motion::sample_keys;
use macroquad::prelude::*;

struct Curve {
    clip: &'static str,
    path: &'static str,
    property: &'static str,
    keys: &'static [[f32; 4]],
}
include!("reward_motion_generated.rs");

fn sample(clip: &str, path: &str, property: &str, time: f32) -> f32 {
    let c = CURVES
        .iter()
        .find(|c| c.clip == clip && c.path == path && c.property == property)
        .expect("Recovered reward motion channel");
    sample_keys(c.keys, time)
}
fn wheel_duration(clip: &str) -> f32 {
    CURVES
        .iter()
        .filter(|c| c.clip == clip && c.path == "2_Wheel")
        .filter_map(|c| c.keys.last().map(|k| k[0]))
        .fold(0., f32::max)
}
pub fn entry_duration() -> f32 {
    wheel_duration("enter")
}
const SPIN_DURATION: f32 = 1.4;
const END_FADE: f32 = 0.375;

#[derive(Clone, Copy, Debug)]
pub struct Pose {
    pub scale: Vec2,
    pub blur_left: f32,
    pub blur_right: f32,
    pub loot_alpha: f32,
    pub progress: f32,
    pub controls_ready: bool,
}

struct Exit {
    started: f32,
    dispatched: bool,
}
#[derive(Default)]
pub struct RewardMotion {
    exit: Option<Exit>,
}
impl RewardMotion {
    pub fn reset(&mut self) {
        self.exit = None;
    }
    pub fn leaving(&self) -> bool {
        self.exit.is_some()
    }
    pub fn pose(&self, elapsed: f32, now: f32) -> Pose {
        let spin_age = (elapsed - entry_duration()).max(0.);
        let progress = (spin_age / SPIN_DURATION).clamp(0., 1.);
        let clip = if spin_age < SPIN_DURATION - END_FADE {
            "spin_start"
        } else {
            "spin_end"
        };
        let age = if clip == "spin_start" {
            spin_age
        } else {
            spin_age - (SPIN_DURATION - END_FADE)
        };
        let alpha = |path, property| sample(clip, path, property, age).clamp(0., 1.);
        let (scale_clip, scale_age) = self.exit.as_ref().map_or(("enter", elapsed), |exit| {
            ("leave", (now - exit.started).max(0.))
        });
        Pose {
            scale: vec2(
                sample(scale_clip, "2_Wheel", "scale.x", scale_age),
                sample(scale_clip, "2_Wheel", "scale.y", scale_age),
            ),
            blur_left: alpha("Control/Animation/Wheel_Spinning_Left", "mColor.a"),
            blur_right: alpha("Control/Animation/Wheel_Spinning_Right", "mColor.a"),
            loot_alpha: alpha("Control/Animation/Loot", "mAlpha"),
            progress,
            controls_ready: progress >= 1. && !self.leaving(),
        }
    }
    pub fn request_leave(&mut self, elapsed: f32, now: f32) -> bool {
        if !self.pose(elapsed, now).controls_ready {
            return false;
        }
        self.exit = Some(Exit {
            started: now,
            dispatched: false,
        });
        true
    }
    /// Retain final zero scale and input lock through the outgoing render frame.
    pub fn advance(&mut self, now: f32) -> bool {
        let Some(exit) = &mut self.exit else {
            return false;
        };
        if exit.dispatched || now - exit.started < wheel_duration("leave") {
            return false;
        }
        exit.dispatched = true;
        true
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn near(a: f32, b: f32) {
        assert!((a - b).abs() < 0.00001, "{a} != {b}");
    }
    #[test]
    fn entry_preserves_nonuniform_overshoot_and_defers_spin() {
        let motion = RewardMotion::default();
        let start = motion.pose(0., 0.);
        near(start.scale.x, 0.001);
        near(start.scale.y, 0.001);
        let peak = motion.pose(7. / 24., 0.);
        near(peak.scale.x, 1.1);
        near(peak.scale.y, 1.2);
        near(peak.progress, 0.);
        assert!(!peak.controls_ready);
        let low = motion.pose(10. / 24., 0.);
        near(low.scale.x, 0.95);
        near(low.scale.y, 0.9);
        let rest = motion.pose(entry_duration(), 0.);
        near(rest.scale.x, 1.);
        near(rest.scale.y, 1.);
        near(rest.progress, 0.);
    }
    #[test]
    fn original_spin_channels_fade_blur_and_loot_in_both_directions() {
        let motion = RewardMotion::default();
        let pose = |age| motion.pose(entry_duration() + age, 0.);
        near(pose(0.).blur_right, 0.);
        near(pose(0.375).loot_alpha, 1.);
        let mid = pose(0.5);
        assert!(mid.blur_left > 0. && mid.blur_left < 1.);
        assert!(mid.loot_alpha > 0. && mid.loot_alpha < 1.);
        near(pose(2. / 3.).blur_right, 1.);
        near(pose(2. / 3.).loot_alpha, 0.);
        let end_mid = pose(SPIN_DURATION - END_FADE + 0.2);
        assert!(end_mid.blur_left > 0. && end_mid.blur_left < 1.);
        assert!(end_mid.loot_alpha > 0. && end_mid.loot_alpha < 1.);
        let end = pose(SPIN_DURATION);
        near(end.blur_left, 0.);
        near(end.blur_right, 0.);
        near(end.loot_alpha, 1.);
        assert!(end.controls_ready);
    }
    #[test]
    fn early_or_repeated_departure_cannot_restart_or_dispatch_twice() {
        let mut motion = RewardMotion::default();
        assert!(!motion.request_leave(0., 10.));
        assert!(!motion.leaving());
        assert!(motion.request_leave(2., 20.));
        assert!(!motion.request_leave(2., 20.1));
        assert!(!motion.advance(20.1));
        assert!(motion.advance(20.2));
        assert!(!motion.advance(21.));
        let end = motion.pose(3., 21.);
        near(end.scale.x, 0.);
        near(end.scale.y, 0.);
        assert!(!end.controls_ready);
        assert!(motion.leaving());
        motion.reset();
        assert!(!motion.leaving());
        assert!(motion.pose(2., 22.).controls_ready);
    }
    #[test]
    fn leave_shrinks_the_complete_wheel_at_its_original_midpoint() {
        let mut motion = RewardMotion::default();
        motion.request_leave(2., 1.);
        let p = motion.pose(2.1, 1. + 1. / 12.);
        near(p.scale.x, 0.5);
        near(p.scale.y, 0.5);
    }
}
