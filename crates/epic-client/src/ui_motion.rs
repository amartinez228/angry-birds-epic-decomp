//! Saved reference artwork and scalar Hermite/step animation channels.
use macroquad::prelude::*;
use std::cell::OnceCell;

struct Art {
    name: &'static str,
    rect: [f32; 4],
    border: [f32; 4],
    size: [f32; 2],
    offset: [f32; 2],
}
struct Curve {
    clip: &'static str,
    path: &'static str,
    property: &'static str,
    keys: &'static [[f32; 4]],
}
struct Placement {
    name: &'static str,
    rect: [f32; 4],
    color: [f32; 4],
    group: &'static str,
}
include!("ui_motion_generated.rs");

thread_local! {
    static TEXTURE: OnceCell<Texture2D> = const { OnceCell::new() };
}

pub fn initialize() {
    TEXTURE.with(|slot| {
        slot.get_or_init(|| {
            let texture = Texture2D::from_file_with_format(IMAGE, Some(ImageFormat::Png));
            texture.set_filter(FilterMode::Linear);
            texture
        });
    });
}

fn sample_keys(keys: &[[f32; 4]], time: f32) -> f32 {
    let upper = keys.partition_point(|k| k[0] <= time);
    if upper == 0 {
        return keys[0][1];
    }
    let [at, value, _, outgoing] = keys[upper - 1];
    if upper == keys.len() {
        return value;
    }
    let [next, target, incoming, _] = keys[upper];
    if outgoing.is_infinite() || incoming.is_infinite() {
        return value;
    }
    let duration = next - at;
    let t = (time - at) / duration;
    let t2 = t * t;
    let t3 = t2 * t;
    (2. * t3 - 3. * t2 + 1.) * value
        + (t3 - 2. * t2 + t) * duration * outgoing
        + (-2. * t3 + 3. * t2) * target
        + (t3 - t2) * duration * incoming
}

pub fn sample(clip: &str, path: &str, property: &str, time: f32, default: f32) -> f32 {
    CURVES
        .iter()
        .find(|c| c.clip == clip && c.path == path && c.property == property)
        .map_or(default, |c| sample_keys(c.keys, time))
}

pub fn duration(clip: &str) -> f32 {
    CURVES
        .iter()
        .filter(|c| c.clip == clip)
        .filter_map(|c| c.keys.last().map(|k| k[0]))
        .fold(0., f32::max)
}

pub fn is_boss(id: &str) -> bool {
    BOSS_IDS.contains(&id)
}

fn art(name: &str) -> &Art {
    ART.iter()
        .find(|a| a.name == name)
        .expect("Recovered UI art")
}

pub fn widget_rect(name: &str, center: Vec2, scale: Vec2) -> Rect {
    let a = art(name);
    let size = vec2(a.size[0], a.size[1]) * scale;
    let center = center + vec2(a.offset[0], -a.offset[1]) * scale;
    Rect::new(
        center.x - size.x / 2.,
        center.y - size.y / 2.,
        size.x,
        size.y,
    )
}

pub fn paint(name: &str, dest: Rect, fraction: f32, tint: Color) {
    let a = art(name);
    let [x, y, w, h] = a.rect;
    let fraction = fraction.clamp(0., 1.);
    if fraction <= 0. || dest.w <= 0. || dest.h <= 0. || tint.a <= 0. {
        return;
    }
    let [left, right, top, bottom] = a.border;
    TEXTURE.with(|slot| {
        let texture = slot.get().expect("Initialized UI motion art");
        if left + right + top + bottom == 0. {
            draw_texture_ex(
                texture,
                dest.x,
                dest.y,
                tint,
                DrawTextureParams {
                    source: Some(Rect::new(x, y, w * fraction, h)),
                    dest_size: Some(vec2(dest.w * fraction, dest.h)),
                    ..Default::default()
                },
            );
        } else {
            let scale = 1_f32
                .min(dest.w / (left + right).max(1.))
                .min(dest.h / (top + bottom).max(1.));
            let sx = [x, x + left, x + w - right, x + w];
            let sy = [y, y + top, y + h - bottom, y + h];
            let dx = [
                dest.x,
                dest.x + left * scale,
                dest.right() - right * scale,
                dest.right(),
            ];
            let dy = [
                dest.y,
                dest.y + top * scale,
                dest.bottom() - bottom * scale,
                dest.bottom(),
            ];
            for row in 0..3 {
                for col in 0..3 {
                    if sx[col + 1] <= sx[col] || sy[row + 1] <= sy[row] {
                        continue;
                    }
                    draw_texture_ex(
                        texture,
                        dx[col],
                        dy[row],
                        tint,
                        DrawTextureParams {
                            source: Some(Rect::new(
                                sx[col],
                                sy[row],
                                sx[col + 1] - sx[col],
                                sy[row + 1] - sy[row],
                            )),
                            dest_size: Some(vec2(dx[col + 1] - dx[col], dy[row + 1] - dy[row])),
                            ..Default::default()
                        },
                    );
                }
            }
        }
    });
}

pub fn placement_rect(name: &str, viewport: Vec2, slide: f32) -> Rect {
    let p = PLACEMENTS
        .iter()
        .find(|p| p.name == name)
        .expect("Recovered pause placement");
    let [x, y, w, h] = p.rect;
    let offset = match p.group {
        "board" => (viewport - vec2(1280., 720.)) / 2.,
        "sound" => vec2(slide, viewport.y - 720.),
        "navigation" => vec2(slide, 0.),
        _ => Vec2::ZERO,
    };
    Rect::new(x + offset.x, y + offset.y, w, h)
}

pub fn placement(name: &str, viewport: Vec2, slide: f32, tint: Color) {
    let p = PLACEMENTS
        .iter()
        .find(|p| p.name == name)
        .expect("Recovered pause placement");
    let [r, g, b, a] = p.color;
    paint(
        name,
        placement_rect(name, viewport, slide),
        1.,
        Color::new(r * tint.r, g * tint.g, b * tint.b, a * tint.a),
    );
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn original_damage_heal_and_popup_keys_are_reproduced() {
        assert_eq!(sample("small_damage", "Animation", "scale.x", 0., 0.), 0.5);
        assert_eq!(
            sample("small_damage", "Animation", "scale.x", 0.125, 0.),
            1.
        );
        assert_eq!(sample("boss_damage", "Animation", "scale.x", 0., 0.), 0.75);
        assert_eq!(
            sample("small_damage", "Animation", "position.x", 0.5, 0.),
            3.
        );
        assert_eq!(sample("small_heal", "Animation", "position.y", 0.5, 0.), 4.);
        assert_eq!(
            sample(
                "pause_enter",
                "1_PauseMenu/1_Navigation/Animation",
                "position.x",
                0.125,
                0.
            ),
            20.
        );
        assert_eq!(
            sample(
                "small_damage",
                "Animation/ProgressBar_Change",
                "mColor.a",
                0.124,
                1.
            ),
            0.
        );
        assert_eq!(
            sample(
                "small_damage",
                "Animation/ProgressBar_Change",
                "mColor.a",
                0.125,
                0.
            ),
            1.
        );
        assert_eq!(
            sample(
                "small_damage",
                "Animation/ProgressBar_Change",
                "mColor.a",
                0.75,
                1.
            ),
            0.
        );
    }
    #[test]
    fn curves_clamp_and_step_without_nonfinite_output() {
        assert_eq!(sample_keys(&[[0., 0., 0., 1.], [1., 1., 1., 0.]], 0.5), 0.5);
        for curve in CURVES {
            for t in [-1., 0., 0.05, 0.125, 0.375, 0.5, 0.875, 1., 10.] {
                assert!(sample_keys(curve.keys, t).is_finite());
            }
        }
    }
    #[test]
    fn pause_sidebar_anchors_stay_at_the_reference_edges() {
        let viewport = vec2(1100., 720.);
        assert_eq!(
            placement_rect("pause_button", viewport, 0.).center(),
            vec2(55., 55.)
        );
        assert_eq!(
            placement_rect("continue_body", viewport, 0.).center(),
            vec2(100., 70.)
        );
        assert_eq!(
            placement_rect("retry_body", viewport, 0.).center(),
            vec2(100., 210.)
        );
        assert_eq!(
            placement_rect("sound_body", viewport, 0.).center(),
            vec2(100., 670.)
        );
        assert_eq!(
            placement_rect("map_body", viewport, 0.).center(),
            vec2(100., 350.)
        );
    }
    #[test]
    fn original_standard_and_boss_fill_geometry_stays_inside_the_frames() {
        assert_eq!(
            widget_rect("health_body", vec2(98., 180.), Vec2::ONE),
            Rect::new(16., 166., 164., 32.)
        );
        assert_eq!(
            widget_rect("health_fill", vec2(98., 180.), Vec2::ONE),
            Rect::new(22., 170., 152., 20.)
        );
        let frame = widget_rect("boss_body", vec2(830., 236.), Vec2::splat(0.75));
        let fill = widget_rect("boss_fill", vec2(830., 236.), Vec2::splat(0.75));
        assert_eq!(frame, Rect::new(741.5, 209., 163.5, 48.));
        assert_eq!(fill, Rect::new(780.5, 228.5, 114., 15.));
        assert!(fill.x >= frame.x && fill.y >= frame.y);
        assert!(fill.right() <= frame.right() && fill.bottom() <= frame.bottom());
    }
}
