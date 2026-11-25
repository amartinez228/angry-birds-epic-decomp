//! Original NGUI artwork recovered from the user-selected EpicWeb reference.
//! This skins the current controls; original scene/widget layouts are pending.
use macroquad::prelude::*;
use std::cell::OnceCell;

struct SpriteAsset {
    name: &'static str,
    origin: [f32; 2],
    size: [f32; 2],
    /// NGUI order: left, right, top, bottom.
    border: [f32; 4],
}
include!("ui_skin_generated.rs");

struct Skin {
    texture: Texture2D,
}
impl Skin {
    fn load() -> Self {
        let texture = Texture2D::from_file_with_format(ATLAS_IMAGE, Some(ImageFormat::Png));
        texture.set_filter(FilterMode::Linear);
        Self { texture }
    }

    fn sprite(&self, name: &str) -> &SpriteAsset {
        let index = ASSETS
            .iter()
            .position(|asset| asset.name == name)
            .expect("Recovered UI sprite");
        &ASSETS[index]
    }

    fn draw(&self, name: &str, dest: Rect, tint: Color) {
        let asset = self.sprite(name);
        draw_texture_ex(
            &self.texture,
            dest.x,
            dest.y,
            tint,
            DrawTextureParams {
                dest_size: Some(dest.size()),
                source: Some(Rect::new(
                    asset.origin[0],
                    asset.origin[1],
                    asset.size[0],
                    asset.size[1],
                )),
                ..Default::default()
            },
        );
    }
}

thread_local! {
    static SKIN: OnceCell<Skin> = const { OnceCell::new() };
}

fn with_skin<T>(draw: impl FnOnce(&Skin) -> T) -> T {
    SKIN.with(|slot| draw(slot.get_or_init(Skin::load)))
}

pub fn initialize() {
    with_skin(|_| {});
}

/// Keep corners proportional and shrink them together for small controls.
fn splits(dest: Rect, border: [f32; 4], scale: f32) -> ([f32; 4], [f32; 4]) {
    let [left, right, top, bottom] = border;
    let scale = scale
        .max(0.)
        .min(dest.w / (left + right).max(1.))
        .min(dest.h / (top + bottom).max(1.));
    (
        [
            dest.x,
            dest.x + left * scale,
            dest.x + dest.w - right * scale,
            dest.x + dest.w,
        ],
        [
            dest.y,
            dest.y + top * scale,
            dest.y + dest.h - bottom * scale,
            dest.y + dest.h,
        ],
    )
}

fn sliced_cells(size: [f32; 2], border: [f32; 4], dest: Rect, scale: f32) -> Vec<(Rect, Rect)> {
    let [left, right, top, bottom] = border;
    let sx = [0., left, size[0] - right, size[0]];
    let sy = [0., top, size[1] - bottom, size[1]];
    let (dx, dy) = splits(dest, border, scale);
    let mut result = Vec::with_capacity(9);
    for y in 0..3 {
        for x in 0..3 {
            let source = Rect::new(sx[x], sy[y], sx[x + 1] - sx[x], sy[y + 1] - sy[y]);
            let target = Rect::new(dx[x], dy[y], dx[x + 1] - dx[x], dy[y + 1] - dy[y]);
            if source.w > 0. && source.h > 0. && target.w > 0. && target.h > 0. {
                result.push((source, target));
            }
        }
    }
    result
}

pub fn button(dest: Rect, enabled: bool, hover: bool) {
    with_skin(|skin| {
        let asset = skin.sprite(if enabled { "button" } else { "button_disabled" });
        let tint = if hover {
            Color::new(1., 0.94, 0.77, 1.)
        } else {
            WHITE
        };
        for (mut source, target) in
            sliced_cells(asset.size, asset.border, dest, dest.h / asset.size[1])
        {
            source.x += asset.origin[0];
            source.y += asset.origin[1];
            draw_texture_ex(
                &skin.texture,
                target.x,
                target.y,
                tint,
                DrawTextureParams {
                    dest_size: Some(target.size()),
                    source: Some(source),
                    ..Default::default()
                },
            );
        }
    });
}

pub fn paper(dest: Rect, alpha: f32) {
    with_skin(|skin| {
        // Reassemble the atlas's nine PaperLabel pieces. Edge widths/heights
        // come from those original images; the quarter-size layout is adapted
        // to the current Rust screens rather than claimed as a native layout.
        let left = skin.sprite("paper_l").size[0];
        let right = skin.sprite("paper_r").size[0];
        let top = skin.sprite("paper_t").size[1];
        let bottom = skin.sprite("paper_b").size[1];
        let (xs, ys) = splits(dest, [left, right, top, bottom], 0.25);
        let names = [
            ["paper_tl", "paper_t", "paper_tr"],
            ["paper_l", "paper_c", "paper_r"],
            ["paper_bl", "paper_b", "paper_br"],
        ];
        for y in 0..3 {
            for x in 0..3 {
                let rect = Rect::new(xs[x], ys[y], xs[x + 1] - xs[x], ys[y + 1] - ys[y]);
                if rect.w > 0. && rect.h > 0. {
                    skin.draw(names[y][x], rect, Color::new(1., 1., 1., alpha));
                }
            }
        }
    });
}

pub fn icon(name: &str, dest: Rect, tint: Color) {
    with_skin(|skin| skin.draw(name, dest, tint));
}

pub fn experience(dest: Rect, fraction: f32) {
    with_skin(|skin| {
        skin.draw("xp_body", dest, WHITE);
        let fraction = fraction.clamp(0., 1.);
        let asset = skin.sprite("xp_fill");
        if fraction > 0. {
            draw_texture_ex(
                &skin.texture,
                dest.x + dest.w * 0.035,
                dest.y + dest.h * 0.27,
                WHITE,
                DrawTextureParams {
                    dest_size: Some(vec2(dest.w * 0.93 * fraction, dest.h * 0.46)),
                    source: Some(Rect::new(
                        asset.origin[0],
                        asset.origin[1],
                        asset.size[0] * fraction,
                        asset.size[1],
                    )),
                    ..Default::default()
                },
            );
        }
    });
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn original_button_borders_preserve_corners_and_cover_the_control() {
        let asset = ASSETS.iter().find(|asset| asset.name == "button").unwrap();
        let dest = Rect::new(10., 20., 135., 43.);
        let cells = sliced_cells(asset.size, asset.border, dest, dest.h / asset.size[1]);
        assert_eq!(cells.len(), 9);
        assert_eq!(cells[0].0, Rect::new(0., 0., 70., 41.));
        let area: f32 = cells.iter().map(|(_, rect)| rect.w * rect.h).sum();
        assert!((area - dest.w * dest.h).abs() < 0.02);
        for (source, target) in cells {
            assert!(source.x >= 0. && source.y >= 0.);
            assert!(source.right() <= asset.size[0] && source.bottom() <= asset.size[1]);
            assert!(target.x >= dest.x && target.y >= dest.y);
            assert!(
                target.right() <= dest.right() + 0.001 && target.bottom() <= dest.bottom() + 0.001
            );
        }
    }

    #[test]
    fn tiny_paper_controls_shrink_borders_without_inversion_or_gaps() {
        for size in [vec2(1., 1.), vec2(198., 20.), vec2(1010., 68.)] {
            let dest = Rect::new(30., 45., size.x, size.y);
            let (xs, ys) = splits(dest, [122., 100., 60., 44.], 0.25);
            assert_eq!(
                (xs[0], ys[0], xs[3], ys[3]),
                (dest.x, dest.y, dest.right(), dest.bottom())
            );
            assert!(xs.windows(2).all(|pair| pair[1] + 0.00001 >= pair[0]));
            assert!(ys.windows(2).all(|pair| pair[1] + 0.00001 >= pair[0]));
        }
    }
}
