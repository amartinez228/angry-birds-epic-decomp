//! Original pause sidebar placement and authored enter/leave channels.
use crate::{ui_motion as art, Ui};
use macroquad::prelude::*;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Action {
    Resume,
    Retry,
    Map,
}
#[derive(Default)]
enum State {
    #[default]
    Closed,
    Enter(f32),
    Open,
    Leave(f32, Action),
}
#[derive(Default)]
pub struct Pause {
    state: State,
}

impl Pause {
    pub fn blocks(&self) -> bool {
        !matches!(self.state, State::Closed)
    }
    pub fn open(&mut self, now: f32) {
        if !self.blocks() {
            self.state = State::Enter(now);
        }
    }
    pub fn reset(&mut self) {
        self.state = State::Closed;
    }
    pub fn advance(&mut self, now: f32) -> Option<Action> {
        match self.state {
            State::Enter(start) if now - start >= art::duration("pause_enter") => {
                self.state = State::Open
            }
            State::Leave(start, action) if now - start >= art::duration("pause_leave") => {
                self.reset();
                return Some(action);
            }
            _ => {}
        }
        None
    }
    fn pose(&self, now: f32) -> (f32, f32) {
        let (clip, age) = match self.state {
            State::Closed => return (-260., 0.),
            State::Open => return (0., 0.8),
            State::Enter(start) => ("pause_enter", now - start),
            State::Leave(start, _) => ("pause_leave", now - start),
        };
        (
            art::sample(
                clip,
                "1_PauseMenu/1_Navigation/Animation",
                "position.x",
                age,
                0.,
            ),
            art::sample(clip, "Overlay", "mColor.a", age, 0.).clamp(0., 1.),
        )
    }
    pub fn draw(
        &mut self,
        ui: &mut Ui,
        viewport: Vec2,
        now: f32,
        muted: bool,
        caption: &str,
    ) -> bool {
        if !self.blocks() {
            return false;
        }
        let (slide, alpha) = self.pose(now);
        draw_rectangle(
            0.,
            0.,
            viewport.x,
            viewport.y,
            Color::new(0., 0., 0., alpha),
        );
        art::placement("sidebar", viewport, slide, WHITE);
        for name in [
            "board_bottom",
            "board_left",
            "board_right",
            "board_top",
            "board_header",
            "paper_tl",
            "paper_t",
            "paper_tr",
            "paper_l",
            "paper_c",
            "paper_r",
            "paper_bl",
            "paper_b",
            "paper_br",
        ] {
            art::placement(name, viewport, 0., WHITE);
        }
        let center = viewport.x / 2. + 100.;
        crate::wrapped_label("PAUSED", center, 82., 350., 29., 1);
        crate::wrapped_label(caption, center, 194., 510., 25., 2);
        for (i, line) in [
            "Continue your battle.",
            "Retry with the current party and equipment.",
            "Return to the adventure map.",
        ]
        .iter()
        .enumerate()
        {
            crate::wrapped_label(line, center, 290. + i as f32 * 64., 500., 21., 2);
        }
        let enabled = matches!(self.state, State::Open);
        for (body, icon, action) in [
            ("continue_body", "continue_icon", Action::Resume),
            ("retry_body", "retry_icon", Action::Retry),
            ("map_body", "map_icon", Action::Map),
        ] {
            let rect = art::placement_rect(body, viewport, slide);
            let tint = if enabled && rect.contains(ui.pointer) {
                Color::new(1., 0.94, 0.77, 1.)
            } else {
                WHITE
            };
            art::placement(body, viewport, slide, tint);
            art::placement(icon, viewport, slide, WHITE);
            if ui.hit(rect, enabled) {
                self.state = State::Leave(now, action);
            }
        }
        art::placement("sound_body", viewport, slide, WHITE);
        let sound = art::placement_rect("sound_on", viewport, slide);
        art::paint(
            if muted { "sound_off" } else { "sound_on" },
            sound,
            1.,
            WHITE,
        );
        crate::text(
            "Music",
            100. + slide - crate::measure_ui("Music", 15).width / 2.,
            viewport.y - 4.,
            15.,
            crate::CREAM,
        );
        ui.hit(art::placement_rect("sound_body", viewport, slide), enabled)
    }
    pub fn close(&mut self, now: f32) {
        if matches!(self.state, State::Open) {
            self.state = State::Leave(now, Action::Resume);
        }
    }
}

#[derive(Default)]
pub struct BattleClock {
    last: Option<f64>,
    elapsed: f32,
}
impl BattleClock {
    pub fn advance(&mut self, wall: f64, paused: bool) -> f32 {
        if let Some(last) = self.last {
            if !paused {
                self.elapsed += (wall - last).max(0.) as f32;
            }
        }
        self.last = Some(wall);
        self.elapsed
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn pause_keeps_presentation_time_frozen_without_resume_jump() {
        let mut clock = BattleClock::default();
        assert_eq!(clock.advance(10., false), 0.);
        assert_eq!(clock.advance(11., false), 1.);
        assert_eq!(clock.advance(30., true), 1.);
        assert_eq!(clock.advance(100., true), 1.);
        assert_eq!(clock.advance(100.25, false), 1.25);
    }
    #[test]
    fn sidebar_uses_original_overshoot_and_blocks_until_leave_finishes() {
        let mut pause = Pause::default();
        pause.open(10.);
        assert!(pause.blocks());
        assert_eq!(pause.pose(10.125).0, 20.);
        pause.advance(11.);
        assert_eq!(pause.pose(11.), (0., 0.8));
        pause.close(11.);
        assert!(pause.blocks());
        assert_eq!(pause.advance(11.1), None);
        assert_eq!(pause.advance(12.), Some(Action::Resume));
        assert!(!pause.blocks());
    }
}
