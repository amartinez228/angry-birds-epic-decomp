//! Recovered original wheel artwork in the adapted base-campaign receipt screen.
use super::{
    panel,
    reward_motion::{Pose, RewardMotion},
    text, Ui, INK,
};
use epic_core::{victory_rewards::VictoryRewards, BIRD_NAMES};
use macroquad::prelude::*;
use std::cell::OnceCell;

struct Sprite {
    name: &'static str,
    rect: [f32; 4],
}
include!("reward_wheel_generated.rs");
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

fn sprite(name: &str, dest: Rect, pivot: Vec2, rotation: f32, flip_x: bool, alpha: f32) {
    if alpha <= 0. {
        return;
    }
    let art = SPRITES.iter().find(|s| s.name == name).expect("Wheel art");
    TEXTURE.with(|slot| {
        draw_texture_ex(
            slot.get().expect("Initialized reward atlas"),
            dest.x,
            dest.y,
            Color::new(1., 1., 1., alpha),
            DrawTextureParams {
                source: Some(Rect::new(
                    art.rect[0],
                    art.rect[1],
                    art.rect[2],
                    art.rect[3],
                )),
                dest_size: Some(dest.size()),
                rotation,
                pivot: Some(pivot),
                flip_x,
                ..Default::default()
            },
        );
    });
}

const STEP: f32 = std::f32::consts::TAU / 8.;
// Fixed marker positions from level11 Reward_1/2/3. The adapted receipt
// maps the first selected slot to the left marker, then proceeds clockwise.
fn marker_angle(index: usize) -> f32 {
    -std::f32::consts::FRAC_PI_4 + index as f32 * STEP
}
fn slot_angle(slot: usize, start: usize, rotation: f32) -> f32 {
    -3. * std::f32::consts::FRAC_PI_4 + (slot as f32 - start as f32) * STEP + rotation
}

fn wheel(rewards: &VictoryRewards, pose: Pose) {
    let center = vec2(255., 410.);
    let scale = 340. / 456.;
    crate::ui_motion::transformed(center, Vec2::ZERO, pose.scale, || {
        let progress = pose.progress;
        let rotation = 3. * std::f32::consts::TAU * (1. - progress).powi(3);
        let turn = -(rewards.start as f32) * STEP + rotation;
        let authored_turn = -std::f32::consts::PI / 8. + turn;
        // Static halves stay underneath the original alpha-animated blurred art.
        for half in 0..2 {
            sprite(
                "static",
                Rect::new(
                    center.x - 228. * scale,
                    center.y - 228. * scale,
                    228. * scale,
                    456. * scale,
                ),
                center,
                authored_turn + half as f32 * std::f32::consts::PI,
                false,
                1.,
            );
        }
        for (x, flip, alpha) in [
            (-0.5, false, pose.blur_right),
            (0.5 - 228., true, pose.blur_left),
        ] {
            sprite(
                "spinning",
                Rect::new(
                    center.x + x * scale,
                    center.y - 228. * scale,
                    228. * scale,
                    456. * scale,
                ),
                center,
                authored_turn,
                flip,
                alpha,
            );
        }
        for i in 0..3 {
            let angle = marker_angle(i);
            let active = i < rewards.stars as usize;
            if active && progress >= 1. {
                // Highlight halves use BottomRight pivots at (0,+6) and mirrored X.
                for (x, flip) in [(-82., false), (0., true)] {
                    sprite(
                        "highlight",
                        Rect::new(
                            center.x + x * scale,
                            center.y - 222. * scale,
                            82. * scale,
                            216. * scale,
                        ),
                        center,
                        angle,
                        flip,
                        1.,
                    );
                }
            }
            let marker = center + vec2(angle.sin(), -angle.cos()) * (218. * scale);
            sprite(
                if active { "active" } else { "inactive" },
                Rect::new(
                    marker.x - 36. * scale,
                    marker.y - 23. * scale,
                    72. * scale,
                    46. * scale,
                ),
                marker,
                angle,
                false,
                1.,
            );
        }
        for slot in 0..rewards.slot_count {
            let angle = slot_angle(slot, rewards.start, rotation);
            let p = center + vec2(angle.cos(), angle.sin()) * (150. * scale);
            text(
                &(slot + 1).to_string(),
                p.x - 6.,
                p.y + 7.,
                23.,
                Color {
                    a: pose.loot_alpha,
                    ..INK
                },
            );
        }
        sprite(
            "cog",
            Rect::new(
                center.x - 24. * scale,
                center.y - 28. * scale,
                48. * scale,
                56. * scale,
            ),
            center,
            0.,
            false,
            1.,
        );
    });
}

fn label(item: &epic_core::loot::LootItem) -> String {
    if let Some(resource) = epic_core::resources::definition(&item.id) {
        return resource.label.into();
    }
    if let Some(gear) = epic_core::equipment::EQUIPMENT
        .iter()
        .find(|row| row.id == item.id)
    {
        let bird = epic_core::stats::BIRDS
            .iter()
            .position(|bird| bird.id == gear.restricted_bird_id);
        return format!(
            "{} {} / Level {}",
            bird.map_or("Bird", |bird| BIRD_NAMES[bird]),
            if gear.item_type == 3 {
                "weapon"
            } else {
                "off hand"
            },
            item.level
        );
    }
    item.id.replace('_', " ")
}

pub fn draw(
    ui: &mut Ui,
    rewards: &VictoryRewards,
    battle_gold: u32,
    elapsed: f32,
    page: &mut usize,
    motion: &mut RewardMotion,
    now: f32,
) -> bool {
    text("REWARDS COLLECTED", 45., 143., 32., INK);
    text(
        &format!("{} stars / +{} battle gold", rewards.stars, battle_gold),
        45.,
        180.,
        23.,
        INK,
    );
    let pose = motion.pose(elapsed, now);
    wheel(rewards, pose);
    text("Highlighted slots are your rewards", 65., 634., 19., INK);

    let pages = rewards.items.len().div_ceil(5).max(1);
    *page = (*page).min(pages - 1);
    if pages > 1 {
        if ui.button(
            Rect::new(500., 570., 155., 42.),
            "Previous",
            pose.controls_ready && *page > 0,
        ) {
            *page -= 1;
        }
        if ui.button(
            Rect::new(680., 570., 155., 42.),
            "Next",
            pose.controls_ready && *page + 1 < pages,
        ) {
            *page += 1;
        }
    }
    for (row, item) in rewards.items.iter().skip(*page * 5).take(5).enumerate() {
        let y = 240. + row as f32 * 62.;
        panel(490., y, 565., 53.);
        let title = label(item);
        let size = (21. * 450. / super::measure_ui(&title, 21).width.max(1.)).min(21.);
        text(&title, 505., y + 33., size, INK);
        text(&format!("x{}", item.value), 992., y + 33., 21., INK);
    }
    if ui.button(
        Rect::new(780., 635., 275., 43.),
        "Continue to camp",
        pose.controls_ready,
    ) {
        motion.request_leave(elapsed, now);
    }
    motion.advance(now)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn wrapped_selected_slots_land_under_consecutive_markers() {
        for start in 0..8 {
            for count in 1..=3 {
                for marker in 0..count {
                    let slot = (start + marker) % 8;
                    let a = slot_angle(slot, start, 0.);
                    let expected = marker_angle(marker) - std::f32::consts::FRAC_PI_2;
                    assert!((a.cos() - expected.cos()).abs() < 0.00001);
                    assert!((a.sin() - expected.sin()).abs() < 0.00001);
                }
            }
        }
    }
}
