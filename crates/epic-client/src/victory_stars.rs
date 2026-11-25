//! Original star widgets/curves in the adapted victory panel.
use crate::ui_motion::sample_keys;
use macroquad::prelude::*;
use std::cell::OnceCell;

struct Star {
    outer: [f32; 2],
    inner: [f32; 2],
    size: [f32; 2],
    colored: [f32; 4],
    desaturated: [f32; 4],
}
include!("victory_stars_generated.rs");
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

#[derive(Default)]
pub struct VictoryClock {
    started: Option<f32>,
    last: f32,
}
impl VictoryClock {
    /// Caller publishes visibility only after defeated-actor playback finishes.
    pub fn observe(&mut self, visible: bool, now: f32) -> f32 {
        if !visible || now < self.last {
            self.started = None;
        }
        self.last = now;
        if visible {
            now - *self.started.get_or_insert(now)
        } else {
            0.
        }
    }
}

struct HeaderPose {
    offset: Vec2,
    scale: Vec2,
    alpha: f32,
}
fn header_pose(elapsed: f32) -> HeaderPose {
    HeaderPose {
        offset: vec2(
            sample_keys(HEADER_X, elapsed),
            -sample_keys(HEADER_Y, elapsed),
        ) * 0.65,
        scale: vec2(
            sample_keys(HEADER_SCALE_X, elapsed),
            sample_keys(HEADER_SCALE_Y, elapsed),
        ),
        alpha: sample_keys(HEADER_ALPHA, elapsed).clamp(0., 1.),
    }
}
pub fn score_alpha(elapsed: f32) -> f32 {
    sample_keys(SCORE_ALPHA, elapsed).clamp(0., 1.)
}

pub fn draw_header(elapsed: f32) {
    let origin = vec2(550., 180.);
    let pose = header_pose(elapsed);
    let title = "VICTORY!";
    let width = super::measure_ui(title, 32).width;
    crate::ui_motion::transformed(origin, pose.offset, pose.scale, || {
        super::text(
            title,
            origin.x - width / 2.,
            origin.y + 12.,
            32.,
            Color {
                a: pose.alpha,
                ..super::INK
            },
        );
    });
}

struct Pose {
    rect: Rect,
    saturation: f32,
}
fn pose(index: usize, stars: u8, elapsed: f32, origin: Vec2, scale: f32) -> Pose {
    let star = &STARS[index];
    let group = vec2(sample_keys(ENTER_X, elapsed), sample_keys(ENTER_Y, elapsed)) * scale;
    // Source gain clip is known; native trigger ordering/delay is not. This
    // renderer policy reveals earned stars left-to-right after group entrance.
    let gain_time = elapsed - 0.75 - index as f32 * 0.25;
    let earned = index < stars.min(3) as usize && gain_time >= 0.;
    let (gain, saturation) = if earned {
        (
            vec2(
                sample_keys(GAIN_X, gain_time),
                sample_keys(GAIN_Y, gain_time),
            ),
            sample_keys(SATURATION, gain_time).clamp(0., 1.),
        )
    } else {
        (Vec2::ONE, 0.)
    };
    // Gain scales the outer Star_N transform, including its inner offset;
    // group entrance scales the entire hierarchy around the shared origin.
    let offset = (Vec2::from(star.outer) + Vec2::from(star.inner) * gain) * group;
    let center = origin + vec2(offset.x, -offset.y);
    let size = Vec2::from(star.size) * gain * group;
    Pose {
        rect: Rect::new(
            center.x - size.x / 2.,
            center.y - size.y / 2.,
            size.x,
            size.y,
        ),
        saturation,
    }
}

pub fn draw(stars: u8, elapsed: f32, origin: Vec2, scale: f32) {
    TEXTURE.with(|slot| {
        let texture = slot.get().expect("Initialized victory stars");
        for (index, star) in STARS.iter().enumerate() {
            let p = pose(index, stars, elapsed, origin, scale);
            // Blend the two original images using the recovered saturation
            // curve. Exact original material shader equivalence is unverified.
            for (rect, alpha) in [(star.desaturated, 1.), (star.colored, p.saturation)] {
                if alpha <= 0. {
                    continue;
                }
                draw_texture_ex(
                    texture,
                    p.rect.x,
                    p.rect.y,
                    Color::new(1., 1., 1., alpha),
                    DrawTextureParams {
                        source: Some(Rect::new(rect[0], rect[1], rect[2], rect[3])),
                        dest_size: Some(p.rect.size()),
                        ..Default::default()
                    },
                );
            }
        }
    });
}

#[cfg(test)]
mod tests {
    use super::*;
    fn near(a: f32, b: f32) {
        assert!((a - b).abs() < 0.0001, "{a} != {b}");
    }

    #[test]
    fn gain_preserves_original_overshoot_and_parent_pivot() {
        let p = pose(0, 3, 0.75 + 1. / 12., Vec2::ZERO, 1.);
        near(p.rect.w, 178. * 1.25);
        near(p.rect.center().x, -80. - 87. * 1.25);
        near(p.rect.center().y, -(4. + 86. * 1.25));
        near(p.saturation, 1.);
        near(sample_keys(GAIN_X, 0.20833333), 0.9);
        near(sample_keys(GAIN_Y, 1.), 1.);
        near(sample_keys(ENTER_X, 0.45833334), 1.15);
        near(sample_keys(ENTER_Y, 0.), 0.001);
    }

    #[test]
    fn one_two_and_three_star_results_keep_unearned_stars_desaturated() {
        for count in 0..=3 {
            for (index, star) in STARS.iter().enumerate() {
                let p = pose(index, count, 2., Vec2::ZERO, 1.);
                near(p.saturation, if index < count as usize { 1. } else { 0. });
                near(p.rect.w, star.size[0]);
            }
        }
        near(pose(1, 3, 0.9, Vec2::ZERO, 1.).saturation, 0.);
        near(pose(2, 3, 1.1, Vec2::ZERO, 1.).saturation, 0.);
    }

    #[test]
    fn header_plays_authored_translation_stretch_and_alpha_keys() {
        let start = header_pose(0.);
        near(start.offset.y, 270. * 0.65);
        near(start.scale.x, 0.001);
        near(start.scale.y, 0.001);
        near(start.alpha, 0.002);
        let peak = header_pose(11. / 24.);
        near(peak.offset.y, -10. * 0.65);
        near(peak.scale.x, 1.2);
        near(peak.scale.y, 1.4);
        near(peak.alpha, 1.);
        let low = header_pose(14. / 24.);
        near(low.offset.y, 10. * 0.65);
        near(low.scale.x, 0.9);
        near(low.scale.y, 0.8);
        let rest = header_pose(1.);
        near(rest.offset.length(), 0.);
        near(rest.scale.x, 1.);
        near(rest.scale.y, 1.);
    }

    #[test]
    fn score_reveal_waits_for_its_original_fade_interval() {
        near(score_alpha(0.), 0.002);
        near(score_alpha(0.75), 0.002);
        near(score_alpha(0.875), 0.501);
        near(score_alpha(1.), 1.);
        near(score_alpha(20.), 1.);
    }

    #[test]
    fn visibility_clock_restarts_after_leave_and_never_uses_defeat_wait_time() {
        let mut clock = VictoryClock::default();
        near(clock.observe(false, 100.), 0.);
        near(clock.observe(true, 101.), 0.);
        near(clock.observe(true, 101.5), 0.5);
        clock.observe(false, 102.);
        near(clock.observe(true, 110.), 0.);
        near(clock.observe(true, 5.), 0.);
    }
}
