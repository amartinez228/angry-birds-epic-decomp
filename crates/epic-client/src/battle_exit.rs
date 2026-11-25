//! Deferred pause navigation using authored HUD leave curves.
//! Concurrent popup/HUD scheduling is renderer integration, not native proof.
use crate::{battle_hud::HudPose, pause::Action, ui_motion as motion};
use macroquad::prelude::*;

struct Pending {
    action: Action,
    started: f32,
    from: HudPose,
    dispatched: bool,
}

#[derive(Default)]
pub struct BattleExit {
    pending: Option<Pending>,
}

impl BattleExit {
    pub fn begin(&mut self, action: Action, now: f32, from: HudPose) -> bool {
        if action == Action::Resume || self.pending.is_some() {
            return false;
        }
        self.pending = Some(Pending {
            action,
            started: now,
            from,
            dispatched: false,
        });
        true
    }
    pub fn blocks(&self) -> bool {
        self.pending.is_some()
    }
    pub fn reset(&mut self) {
        self.pending = None;
    }
    fn duration() -> f32 {
        ["progress_leave", "rage_leave", "pause_button_leave"]
            .into_iter()
            .map(motion::duration)
            .fold(0., f32::max)
    }
    pub fn advance(&mut self, now: f32, popup_visible: bool) -> Option<Action> {
        let pending = self.pending.as_mut()?;
        if popup_visible || pending.dispatched || now - pending.started < Self::duration() {
            return None;
        }
        pending.dispatched = true;
        // Keep the final offscreen pose and input lock until the caller applies
        // the action and resets us at the end of this rendered frame.
        Some(pending.action)
    }
    pub fn pose(&self, now: f32) -> Option<HudPose> {
        let pending = self.pending.as_ref()?;
        let age = (now - pending.started).max(0.);
        let offset = |clip, from: Vec2| {
            let value = vec2(
                motion::sample(clip, "Animation", "position.x", age, 0.),
                -motion::sample(clip, "Animation", "position.y", age, 0.),
            );
            let correction = (1. - age / motion::duration(clip).max(f32::EPSILON)).clamp(0., 1.);
            // Ordinary exits begin at rest. If entry/wave motion was paused,
            // retain continuity initially and converge to the authored endpoint.
            value + from * correction
        };
        Some(HudPose {
            progress_offset: offset("progress_leave", pending.from.progress_offset),
            progress_scale: pending.from.progress_scale,
            rage_offset: offset("rage_leave", pending.from.rage_offset),
            pause_offset: offset("pause_button_leave", pending.from.pause_offset),
            buttons_ready: false,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn navigation_waits_for_both_popup_and_hud_and_dispatches_once() {
        let mut exit = BattleExit::default();
        assert!(exit.begin(Action::Map, 10., HudPose::settled()));
        assert!(!exit.begin(Action::Retry, 10.1, HudPose::settled()));
        assert_eq!(exit.advance(10.2, false), None);
        assert_eq!(exit.advance(10.3, true), None);
        assert_eq!(exit.advance(10.4, false), Some(Action::Map));
        assert_eq!(exit.advance(11., false), None);
        assert!(exit.blocks());
        let end = exit.pose(11.).unwrap();
        assert_eq!(end.progress_offset, vec2(0., -100.));
        assert_eq!(end.rage_offset, vec2(0., 200.));
        assert_eq!(end.pause_offset, vec2(-120., -120.));
        assert!(!end.buttons_ready);
        exit.reset();
        assert!(!exit.blocks());
        assert!(exit.pose(12.).is_none());
    }
    #[test]
    fn resume_does_not_start_a_hud_exit() {
        let mut exit = BattleExit::default();
        assert!(!exit.begin(Action::Resume, 1., HudPose::settled()));
        assert!(!exit.blocks());
        assert!(exit.advance(10., false).is_none());
    }
    #[test]
    fn interrupted_motion_is_continuous_and_preserves_unanimated_scale() {
        let mut exit = BattleExit::default();
        let mut from = HudPose::settled();
        from.progress_offset = vec2(0., 200.);
        from.progress_scale = 1.;
        from.rage_offset = vec2(0., -20.);
        from.pause_offset = vec2(20., 20.);
        exit.begin(Action::Retry, 1., from);
        let first = exit.pose(1.).unwrap();
        assert_eq!(first.progress_offset, from.progress_offset);
        assert_eq!(first.rage_offset, from.rage_offset);
        assert_eq!(first.pause_offset, from.pause_offset);
        let end = exit.pose(2.).unwrap();
        assert_eq!(end.progress_offset, vec2(0., -100.));
        assert_eq!(end.progress_scale, 1.);
    }
    #[test]
    fn combat_clock_is_held_until_navigation_has_been_applied() {
        let mut clock = crate::pause::BattleClock::default();
        clock.advance(10., false);
        assert_eq!(clock.advance(11., false), 1.);
        let mut exit = BattleExit::default();
        exit.begin(Action::Retry, 11., HudPose::settled());
        assert_eq!(clock.advance(12., exit.blocks()), 1.);
        assert_eq!(exit.advance(12., false), Some(Action::Retry));
        assert_eq!(clock.advance(13., exit.blocks()), 1.);
        exit.reset();
        assert_eq!(clock.advance(13.25, exit.blocks()), 1.25);
    }
}
