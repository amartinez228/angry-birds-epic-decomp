//! Provisional wheel presentation for the recovered base campaign rewards.
use super::{panel, text, Ui, CREAM, GOLD, INK};
use epic_core::{victory_rewards::VictoryRewards, BIRD_NAMES};
use macroquad::prelude::*;

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
) -> bool {
    text("REWARDS COLLECTED", 45., 143., 32., INK);
    text(
        &format!("{} stars / +{} battle gold", rewards.stars, battle_gold),
        45.,
        180.,
        23.,
        INK,
    );
    let center = vec2(255., 410.);
    let radius = 170.;
    let step = std::f32::consts::TAU / rewards.slot_count as f32;
    let progress = (elapsed / 1.4).clamp(0., 1.);
    let rotation = 3. * std::f32::consts::TAU * (1. - progress).powi(3);
    let angle = -std::f32::consts::FRAC_PI_2 - (rewards.start as f32 + 0.5) * step + rotation;
    draw_circle(center.x, center.y, radius + 6., INK);
    for slot in 0..rewards.slot_count {
        let selected = rewards.selected(slot) && progress >= 1.;
        let color = if selected {
            GOLD
        } else if slot % 2 == 0 {
            CREAM
        } else {
            Color::new(0.74, 0.84, 0.76, 1.)
        };
        for segment in 0..12 {
            let a = angle + (slot as f32 + segment as f32 / 12.) * step;
            let b = a + step / 12.;
            draw_triangle(
                center,
                center + vec2(a.cos(), a.sin()) * radius,
                center + vec2(b.cos(), b.sin()) * radius,
                color,
            );
        }
        let a = angle + slot as f32 * step;
        let end = center + vec2(a.cos(), a.sin()) * radius;
        draw_line(center.x, center.y, end.x, end.y, 2., INK);
        let midpoint = a + step / 2.;
        let p = center + vec2(midpoint.cos(), midpoint.sin()) * (radius * 0.76);
        text(&(slot + 1).to_string(), p.x - 6., p.y + 7., 23., INK);
    }
    draw_circle(center.x, center.y, 48., INK);
    draw_circle(center.x, center.y, 43., GOLD);
    text(
        &format!("{} / 3", rewards.stars),
        center.x - 28.,
        center.y + 8.,
        24.,
        INK,
    );
    draw_triangle(
        vec2(center.x - 15., center.y - radius - 20.),
        vec2(center.x + 15., center.y - radius - 20.),
        vec2(center.x, center.y - radius + 9.),
        INK,
    );
    text("Highlighted slots are your rewards", 65., 612., 19., INK);

    let pages = rewards.items.len().div_ceil(5).max(1);
    *page = (*page).min(pages - 1);
    if pages > 1 {
        if ui.button(Rect::new(500., 570., 155., 42.), "Previous", *page > 0) {
            *page -= 1;
        }
        if ui.button(Rect::new(680., 570., 155., 42.), "Next", *page + 1 < pages) {
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
    ui.button(Rect::new(780., 635., 275., 43.), "Continue to camp", true)
}
