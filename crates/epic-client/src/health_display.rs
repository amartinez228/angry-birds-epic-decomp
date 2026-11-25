//! Authored bar motion; missing native fill-coroutine order is provisional.
use crate::ui_motion as art;
use epic_core::{
    effects::{Side, Source},
    Fighter,
};
use macroquad::prelude::*;
use std::collections::HashMap;
include!("pacing_generated.rs");

#[derive(Clone, Copy, Debug)]
struct Pose {
    offset: Vec2,
    scale: Vec2,
    alpha: f32,
    fill: f32,
    trail: f32,
    trail_alpha: f32,
    indicator: Color,
    healing: bool,
}

#[derive(Clone, Debug)]
struct Track {
    hp: i32,
    max: i32,
    from: f32,
    to: f32,
    started: f32,
    kind: &'static str,
    boss: bool,
    identity: (Option<usize>, usize),
}

fn fraction(hp: i32, max: i32) -> f32 {
    if max <= 0 {
        0.
    } else {
        (hp as f32 / max as f32).clamp(0., 1.)
    }
}

impl Track {
    fn new(unit: &Fighter, now: f32, boss: bool) -> Self {
        let value = fraction(unit.hp, unit.max_hp);
        Self {
            hp: unit.hp,
            max: unit.max_hp,
            from: value,
            to: value,
            started: now,
            kind: if unit.hp <= 0 { "hide" } else { "show" },
            boss,
            identity: (unit.pig, unit.hat),
        }
    }
    fn clip(&self, kind: &str) -> String {
        format!("{}_{}", if self.boss { "boss" } else { "small" }, kind)
    }
    fn observe(&mut self, unit: &Fighter, now: f32) {
        if unit.hp == self.hp {
            return;
        }
        let previous = self.pose(now, true).fill;
        self.kind = if self.hp <= 0 && unit.hp > 0 {
            "show"
        } else if unit.hp > self.hp {
            "heal"
        } else {
            "damage"
        };
        self.from = previous;
        self.to = fraction(unit.hp, unit.max_hp);
        if self.kind == "show" {
            self.from = self.to;
        }
        self.hp = unit.hp;
        self.started = now;
    }
    fn pose(&self, now: f32, animated: bool) -> Pose {
        let idle = if self.boss { 0.75 } else { 0.5 };
        let age = (now - self.started).max(0.);
        let mut kind = self.kind;
        let mut time = age;
        let end = art::duration(&self.clip(kind));
        if !animated || age >= end {
            if self.hp <= 0 && animated {
                kind = "hide";
                time = if self.kind == "hide" { age } else { age - end };
            } else {
                kind = "initiativefocus";
                time = 0.;
            }
        }
        let clip = self.clip(kind);
        let sample = |path, property, default| art::sample(&clip, path, property, time, default);
        // Original pacing values are retained, but the absent native coroutine
        // body prevents verification of this fill/trail scheduling and interrupts.
        let current_time = original_pacing::TIME_FOR_SET_CURRENT_HEALTH_BAR_IN_SEC;
        let delay = original_pacing::TIME_FOR_SHOW_HEALTH_BAR_CHANGE_IN_SEC;
        let trail_time = original_pacing::TIME_FOR_FILL_HEALTH_BAR_CHANGED_IN_SEC;
        let current = (age / current_time).clamp(0., 1.);
        let trailing = ((age - delay) / trail_time).clamp(0., 1.);
        let fill = if !animated || current >= 1. || !matches!(self.kind, "damage" | "heal") {
            self.to
        } else {
            self.from + (self.to - self.from) * current
        };
        let trail = if self.kind == "heal" || trailing >= 1. {
            self.to
        } else {
            self.from + (self.to - self.from) * trailing
        };
        Pose {
            offset: vec2(
                sample("Animation", "position.x", 0.),
                -sample("Animation", "position.y", 0.),
            ),
            scale: vec2(
                sample("Animation", "scale.x", idle),
                sample("Animation", "scale.y", idle),
            ),
            alpha: sample("", "mAlpha", 1.).clamp(0., 1.),
            fill,
            trail,
            trail_alpha: sample("Animation/ProgressBar_Change", "mColor.a", 0.).clamp(0., 1.),
            indicator: Color::new(
                sample("Animation/ChangeIndicator", "mColor.r", 1.),
                sample("Animation/ChangeIndicator", "mColor.g", 0.),
                sample("Animation/ChangeIndicator", "mColor.b", 0.),
                sample("Animation/ChangeIndicator", "mColor.a", 0.).clamp(0., 1.),
            ),
            healing: self.kind == "heal",
        }
    }
}

pub struct Label {
    pub center: Vec2,
    pub width: f32,
    pub size: u16,
    pub alpha: f32,
    pub badge: Option<Vec2>,
}

#[derive(Default)]
pub struct HealthDisplays {
    tracks: HashMap<(bool, usize), Track>,
    scene: Option<(usize, u32)>,
    last_time: f32,
}
impl HealthDisplays {
    pub fn clear(&mut self) {
        self.tracks.clear();
        self.scene = None;
    }
    pub fn begin(&mut self, stage: usize, wave: u32, now: f32) {
        if self.scene != Some((stage, wave)) || now < self.last_time {
            self.tracks.clear();
        }
        self.scene = Some((stage, wave));
        self.last_time = now;
    }
    pub fn draw(
        &mut self,
        source: Source,
        unit: &Fighter,
        center: Vec2,
        now: f32,
        animated: bool,
    ) -> Label {
        let boss = unit
            .pig
            .is_some_and(|i| art::is_boss(epic_core::PIGS[i].id));
        let track = self
            .tracks
            .entry((source.side == Side::Pigs, source.index))
            .or_insert_with(|| Track::new(unit, now, boss));
        if track.max != unit.max_hp || track.identity != (unit.pig, unit.hat) {
            *track = Track::new(unit, now, boss);
        }
        track.observe(unit, now);
        let pose = track.pose(now, animated);
        let center = center + pose.offset;
        let tint = Color::new(1., 1., 1., pose.alpha);
        let frame = if boss { "boss_body" } else { "health_body" };
        let fill = if boss { "boss_fill" } else { "health_fill" };
        let fill_rect = art::widget_rect(fill, center, pose.scale);
        art::paint(frame, art::widget_rect(frame, center, pose.scale), 1., tint);
        let mut flash = pose.indicator;
        flash.a *= pose.alpha;
        let indicator_center = center + vec2(if boss { 10. } else { 0. }, 0.) * pose.scale;
        art::paint(
            "health_indicator",
            art::widget_rect("health_indicator", indicator_center, pose.scale),
            1.,
            flash,
        );
        art::paint(
            if pose.healing {
                "health_heal"
            } else {
                "health_damage"
            },
            fill_rect,
            pose.trail,
            Color::new(1., 1., 1., pose.alpha * pose.trail_alpha),
        );
        art::paint(fill, fill_rect, pose.fill, tint);
        Label {
            center: fill_rect.center() + vec2(0., 5. * pose.scale.y),
            width: 144. * pose.scale.x,
            size: (15. * pose.scale.y).max(9.) as u16,
            alpha: pose.alpha,
            badge: boss.then_some(center + vec2(-89., -1.) * pose.scale),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn unit() -> Fighter {
        epic_core::Battle::new(&epic_core::Profile::default(), 0)
            .unwrap()
            .heroes[0]
            .clone()
    }
    #[test]
    fn damage_heal_death_and_revival_use_original_motion_channels() {
        let mut unit = unit();
        unit.hp = 100;
        unit.max_hp = 100;
        let mut track = Track::new(&unit, 0., false);
        assert!((track.pose(0., true).alpha - 0.01).abs() < 1e-6);
        assert_eq!(track.pose(1., true).scale, Vec2::splat(0.5));
        unit.hp = 40;
        track.observe(&unit, 1.);
        let peak = track.pose(1.5, true);
        assert_eq!(peak.offset, vec2(3., 2.));
        assert_eq!(peak.scale, Vec2::ONE);
        assert_eq!(peak.fill, 0.4);
        unit.hp = 80;
        track.observe(&unit, 2.);
        assert_eq!(track.pose(2.5, true).offset, vec2(0., -4.));
        assert!(track.pose(2.5, true).indicator.g > 0.8);
        unit.hp = 0;
        track.observe(&unit, 3.);
        assert_eq!(track.pose(4.25, true).alpha, 0.);
        unit.hp = 100;
        track.observe(&unit, 5.);
        assert_eq!(track.pose(5.25, true).alpha, 1.);
        assert_eq!(track.pose(5.25, true).fill, 1.);
    }
    #[test]
    fn interruptions_start_from_the_displayed_fill_and_settle() {
        let mut unit = unit();
        unit.hp = 100;
        unit.max_hp = 100;
        let mut track = Track::new(&unit, 0., true);
        unit.hp = 50;
        track.observe(&unit, 1.);
        let before = track.pose(1.125, true).fill;
        unit.hp = 25;
        track.observe(&unit, 1.125);
        assert_eq!(track.pose(1.125, true).fill, before);
        assert_eq!(track.pose(100., true).fill, 0.25);
        assert_eq!(track.pose(100., true).scale, Vec2::splat(0.75));
    }
    #[test]
    fn invalid_hp_and_overheal_cannot_overrun_the_sprite() {
        for (hp, max, expected) in [
            (-1, 100, 0.),
            (1, 0, 0.),
            (1, -1, 0.),
            (200, 100, 1.),
            (25, 100, 0.25),
        ] {
            assert_eq!(fraction(hp, max), expected);
        }
    }
}
