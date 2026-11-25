use epic_core::{
    Action, Battle, Outcome, Profile, BIRD_NAMES, ENCOUNTERS, HATS, PIGS, SKILLS, STAGE_NAMES,
};
use macroquad::prelude::*;
mod animation;
mod battle_exit;
mod battle_hud;
mod characters;
mod health_display;
mod music;
mod pause;
mod presentation;
mod projectiles;
mod reward_motion;
mod rewards;
mod scenery;
mod ui_motion;
mod ui_skin;
mod victory_stars;
use characters::{Actor, CharacterArt};
use epic_core::effects::{Side, Source};
use presentation::Presentation;

const W: f32 = 1100.;
const H: f32 = 720.;
const INK: Color = Color::new(0.11, 0.16, 0.22, 1.);
const CREAM: Color = Color::new(1., 0.96, 0.83, 1.);
const GOLD: Color = Color::new(1., 0.74, 0.16, 1.);
const GREEN: Color = Color::new(0.25, 0.55, 0.28, 1.);
const UI_FONT_SIZE: u16 = 40;
include!("art_generated.rs");

thread_local! {
    static GAME_FONT: std::cell::RefCell<Option<Font>> = const { std::cell::RefCell::new(None) };
}

fn measure_ui(value: &str, size: u16) -> TextDimensions {
    GAME_FONT.with(|font| {
        measure_text(
            value,
            font.borrow().as_ref(),
            UI_FONT_SIZE,
            size as f32 / UI_FONT_SIZE as f32,
        )
    })
}

const SAVE_KEY: &str = "epic-rust-profile-v1";

#[derive(Clone, Copy, Debug, PartialEq)]
enum Screen {
    Map,
    Camp,
    Equipment,
    Resources,
    Rewards,
    Shop,
    Battle,
}
#[derive(Clone, Copy, PartialEq)]
enum Mode {
    Attack,
    Support,
}

struct Ui {
    pointer: Vec2,
    pressed: bool,
}
impl Ui {
    fn button(&mut self, rect: Rect, label: &str, enabled: bool) -> bool {
        let hover = enabled && rect.contains(self.pointer);
        ui_skin::button(rect, enabled, hover);
        let size = 21.;
        let width = measure_ui(label, size as u16).width;
        text(
            label,
            rect.x + (rect.w - width) / 2.,
            rect.y + rect.h / 2. + 7.,
            size,
            INK,
        );
        self.hit(rect, enabled)
    }
    fn hit(&mut self, rect: Rect, enabled: bool) -> bool {
        if enabled && self.pressed && rect.contains(self.pointer) {
            self.pressed = false;
            true
        } else {
            false
        }
    }
}

fn text(value: &str, x: f32, y: f32, size: f32, color: Color) {
    GAME_FONT.with(|font| {
        draw_text_ex(
            value,
            x,
            y,
            TextParams {
                font: font.borrow().as_ref(),
                font_size: UI_FONT_SIZE,
                font_scale: size / UI_FONT_SIZE as f32,
                color,
                ..Default::default()
            },
        );
    });
}

fn wrapped_label(value: &str, center: f32, baseline: f32, width: f32, size: f32, limit: usize) {
    let mut lines = vec![String::new()];
    for word in value.split_whitespace() {
        let last = lines.last_mut().unwrap();
        let candidate = if last.is_empty() {
            word.into()
        } else {
            format!("{last} {word}")
        };
        if measure_ui(&candidate, size as u16).width > width
            && !last.is_empty()
            && lines.len() < limit
        {
            lines.push(word.into());
        } else {
            *lines.last_mut().unwrap() = candidate;
        }
    }
    for (i, line) in lines.iter().enumerate() {
        let size = (size * width / measure_ui(line, size as u16).width.max(1.)).min(size);
        let measured = measure_ui(line, size as u16).width;
        text(
            line,
            center - measured / 2.,
            baseline + i as f32 * 19.,
            size,
            INK,
        );
    }
}

fn panel(x: f32, y: f32, w: f32, h: f32) {
    ui_skin::paper(Rect::new(x, y, w, h), 1.);
}

fn bird_color(bird: usize) -> Color {
    [RED, YELLOW, WHITE, DARKGRAY, SKYBLUE][bird]
}

fn battle_origin(source: Source, enemy_count: usize) -> Vec2 {
    match source.side {
        Side::Birds => vec2(230., 180. + source.index as f32 * 140.),
        Side::Pigs => vec2(
            if enemy_count > 3 {
                715. + (source.index / 3) as f32 * 230.
            } else {
                830.
            },
            168. + (source.index % 3) as f32 * 128.,
        ),
    }
}

fn draw_flights(
    presentation: &Presentation,
    now: f32,
    actors: &CharacterArt,
    art: &mut projectiles::ProjectileArt,
) {
    for flight in presentation.flights(now) {
        let Some(source) = projectiles::ATTACHMENTS
            .iter()
            .find(|item| item.asset == flight.source_asset)
        else {
            continue;
        };
        let Some(target) = projectiles::ATTACHMENTS
            .iter()
            .find(|item| item.asset == flight.target_asset)
        else {
            continue;
        };
        let Some(hand) = (if flight.off_hand {
            source.off_hand
        } else {
            source.main_hand
        }) else {
            continue;
        };
        let Some(center) = target.center else {
            continue;
        };
        let Some((from, scale)) = actors.attachment(
            flight.source_asset,
            battle_origin(flight.source, flight.enemy_count),
            hand,
            Some((&flight.clip, flight.cue_time)),
        ) else {
            continue;
        };
        // Rig anchors are original; endpoint placement follows the current UI.
        // Original focus movement and camera choreography are still pending.
        let Some((to, _)) = actors.attachment(
            flight.target_asset,
            battle_origin(flight.target, flight.enemy_count),
            center,
            None,
        ) else {
            continue;
        };
        art.draw(flight.projectile, now - flight.started, from, to, scale);
    }
}

fn character(
    hat_art: &mut CharacterArt,
    position: Vec2,
    actor: Actor,
    alive: bool,
    selected: bool,
    playback: Option<(&str, f32)>,
) {
    let (x, y) = (position.x, position.y);
    let bird = actor.bird();
    let hat = actor.hat();
    let tint = if !alive {
        GRAY
    } else {
        bird.map(bird_color).unwrap_or(LIME)
    };
    if selected {
        draw_circle_lines(x, y, 49., 4., GOLD);
    }
    if hat_art.draw_clip(&actor, position, alive, playback) {
        return;
    }
    draw_ellipse(x, y + 40., 37., 8., 0., Color::new(0., 0., 0., 0.15));
    draw_circle(x, y, 38., INK);
    draw_circle(x, y - 2., 34., tint);
    if bird == Some(1) {
        draw_triangle(
            vec2(x - 34., y + 14.),
            vec2(x, y - 48.),
            vec2(x + 34., y + 14.),
            tint,
        );
    }
    for offset in [-11., 10.] {
        draw_circle(x + offset, y - 8., 10., WHITE);
        draw_circle(x + offset + 3., y - 7., 4., INK);
    }
    if bird.is_some() {
        draw_triangle(
            vec2(x - 8., y + 4.),
            vec2(x + 24., y + 9.),
            vec2(x - 6., y + 18.),
            ORANGE,
        );
        let art = &hat_art[hat];
        let h = 76.;
        let w = h * art.width() / art.height();
        draw_texture_ex(
            art,
            x - w / 2.,
            y - h - 15.,
            WHITE,
            DrawTextureParams {
                dest_size: Some(vec2(w, h)),
                ..Default::default()
            },
        );
    } else {
        draw_circle(x - 25., y - 30., 13., tint);
        draw_circle(x + 25., y - 30., 13., tint);
        draw_ellipse(x + 3., y + 13., 20., 12., 0., GREEN);
        draw_circle(x - 4., y + 13., 3., INK);
        draw_circle(x + 11., y + 13., 3., INK);
    }
}

fn scenery() {
    clear_background(Color::new(0.58, 0.83, 0.86, 1.));
    draw_circle(960., 120., 54., GOLD);
    for (x, y) in [(170., 110.), (550., 70.), (820., 180.)] {
        draw_ellipse(x, y, 75., 20., 0., Color::new(1., 1., 1., 0.65));
    }
    draw_ellipse(250., 710., 800., 370., 0., Color::new(0.39, 0.66, 0.43, 1.));
    draw_ellipse(
        1050.,
        760.,
        700.,
        420.,
        0.,
        Color::new(0.28, 0.56, 0.36, 1.),
    );
}

fn battle_backdrop(x: f32, y: f32, width: f32, height: f32) {
    ui_skin::paper(Rect::new(x, y, width, height), 0.95);
}

fn battle_label(value: &str, center: Vec2, width: f32, size: u16, color: Color, edge: Color) {
    let size = ((size as f32 * width / measure_ui(value, size).width.max(1.))
        .min(size as f32)
        .floor()
        .max(1.)) as u16;
    let x = center.x - measure_ui(value, size).width / 2.;
    for offset in [vec2(-1., 0.), vec2(1., 0.), vec2(0., -1.), vec2(0., 1.)] {
        text(value, x + offset.x, center.y + offset.y, size as f32, edge);
    }
    text(value, x, center.y, size as f32, color);
}

fn combat_health(
    displays: &mut health_display::HealthDisplays,
    source: Source,
    center: Vec2,
    unit: &epic_core::Fighter,
    now: f32,
    animated: bool,
) {
    let label = displays.draw(source, unit, center, now, animated);
    if label.alpha <= 0.001 {
        return;
    }
    battle_label(
        &format!("{} / {}", unit.hp, unit.max_hp),
        label.center,
        label.width,
        label.size,
        Color {
            a: label.alpha,
            ..CREAM
        },
        Color {
            a: label.alpha,
            ..INK
        },
    );
    // The campaign badge uses level as a provisional label; native label
    // assignment is not present in the supplied CharacterHealthBar disassembly.
    if let Some(center) = label.badge {
        battle_label(
            &unit.level.to_string(),
            center + vec2(0., 5.),
            24.,
            13,
            Color {
                a: label.alpha,
                ..CREAM
            },
            Color {
                a: label.alpha,
                ..INK
            },
        );
    }
}

fn enemy_position(index: usize, count: usize) -> Vec2 {
    vec2(
        if count > 3 {
            715. + (index / 3) as f32 * 230.
        } else {
            830.
        },
        168. + (index % 3) as f32 * 128.,
    )
}

fn header(ui: &mut Ui, profile: &Profile, screen: &mut Screen) {
    text("ANGRY BIRDS", 37., 34., 21., INK);
    text("EPIC", 35., 72., 40., INK);
    for (i, (label, dest)) in [
        ("Adventure", Screen::Map),
        ("Camp", Screen::Camp),
        ("Hat shop", Screen::Shop),
    ]
    .iter()
    .enumerate()
    {
        if ui.button(
            Rect::new(355. + i as f32 * 147., 25., 135., 43.),
            label,
            true,
        ) {
            *screen = *dest;
        }
    }
    ui_skin::icon("coin", Rect::new(904., 22., 42., 42.), WHITE);
    text(&profile.gold.to_string(), 950., 51., 27., INK);
    ui_skin::icon("xp", Rect::new(905., 60., 26., 26.), WHITE);
    text(&format!("Level {}", profile.level()), 936., 79., 18., INK);
    ui_skin::icon("star", Rect::new(355., 78., 25., 25.), WHITE);
    text(&profile.collected_stars().to_string(), 387., 96., 18., INK);
    if let Some(cost) = profile.experience.next_cost() {
        ui_skin::experience(
            Rect::new(930., 127., 145., 27.),
            profile.experience.points as f32 / cost as f32,
        );
        text(
            &format!("{} / {} XP", profile.experience.points, cost),
            930.,
            170.,
            15.,
            INK,
        );
    } else {
        text("MAX LEVEL", 935., 151., 15., INK);
    }
}

fn save(profile: &Profile) -> Result<(), &'static str> {
    let mut storage = quad_storage::STORAGE
        .lock()
        .map_err(|_| "Save storage unavailable")?;
    if let Some(previous) = storage.get(SAVE_KEY) {
        if previous.starts_with("EPIC_RUST_8\n")
            && storage.get("epic-rust-profile-backup-v8").is_none()
        {
            storage.set("epic-rust-profile-backup-v8", &previous);
        }
        if previous.starts_with("EPIC_RUST_7\n")
            && storage.get("epic-rust-profile-backup-v7").is_none()
        {
            storage.set("epic-rust-profile-backup-v7", &previous);
        }
        if previous.starts_with("EPIC_RUST_6\n")
            && storage.get("epic-rust-profile-backup-v6").is_none()
        {
            storage.set("epic-rust-profile-backup-v6", &previous);
        }
        if previous.starts_with("EPIC_RUST_5\n")
            && storage.get("epic-rust-profile-backup-v5").is_none()
        {
            storage.set("epic-rust-profile-backup-v5", &previous);
        }
        if previous.starts_with("EPIC_RUST_4\n")
            && storage.get("epic-rust-profile-backup-v4").is_none()
        {
            storage.set("epic-rust-profile-backup-v4", &previous);
        }
        if previous.starts_with("EPIC_RUST_3\n")
            && storage.get("epic-rust-profile-backup-v3").is_none()
        {
            storage.set("epic-rust-profile-backup-v3", &previous);
        }
        if previous.starts_with("EPIC_RUST_2\n")
            && storage.get("epic-rust-profile-backup-v2").is_none()
        {
            storage.set("epic-rust-profile-backup-v2", &previous);
        }
        if previous.starts_with("EPIC_RUST_1\n")
            && storage.get("epic-rust-profile-backup-v1").is_none()
        {
            storage.set("epic-rust-profile-backup-v1", &previous);
        }
    }
    storage.set(SAVE_KEY, &profile.encode());
    Ok(())
}

fn config() -> Conf {
    Conf {
        window_title: "Angry Birds Epic".into(),
        window_width: 1100,
        window_height: 720,
        high_dpi: true,
        window_resizable: true,
        ..Default::default()
    }
}

#[macroquad::main(config)]
async fn main() {
    #[cfg(not(target_arch = "wasm32"))]
    if std::env::args().any(|arg| arg == "--check-audio") {
        if !music::check_backend() {
            std::process::exit(1);
        }
        return;
    }
    let original_font = load_ttf_font_from_bytes(include_bytes!(
        "../../../assets/fonts/AngryBirdsText-Regular.ttf"
    ))
    .expect("Bundled game font");
    // Use one supersampled glyph size for the interface. Macroquad multiplies
    // font_size by display DPI internally; prime both current and standard DPI
    // before any drawing so later labels cannot invalidate earlier glyph UVs.
    ui_skin::initialize();
    rewards::initialize();
    victory_stars::initialize();
    battle_hud::initialize();
    ui_motion::initialize();
    let mut glyphs: Vec<_> = (' '..='~').collect();
    glyphs.extend(['\u{a0}', '’', '–', '—', '…', '×']);
    for dpi in [1., screen_dpi_scale()] {
        original_font.populate_font_cache(&glyphs, (UI_FONT_SIZE as f32 * dpi).ceil() as u16);
    }
    GAME_FONT.with(|font| *font.borrow_mut() = Some(original_font));
    let mut notice = String::new();
    let saved = quad_storage::STORAGE
        .lock()
        .ok()
        .and_then(|s| s.get(SAVE_KEY));
    let mut profile = match saved.as_deref().map(Profile::decode) {
        Some(Ok(p)) => p,
        Some(Err(error)) => {
            notice = format!(
                "Save could not load: {error}. Existing save retained until your next change."
            );
            Profile::default()
        }
        None => Profile::default(),
    };
    let mut map_page = profile.unlocked / 12;
    let mut screen = Screen::Map;
    let mut battle: Option<Battle> = None;
    let mut presentation = Presentation::default();
    let mut health_displays = health_display::HealthDisplays::default();
    let mut hud_motion = battle_hud::HudMotion::default();
    let mut battle_exit = battle_exit::BattleExit::default();
    let mut paused = pause::Pause::default();
    let mut battle_clock = pause::BattleClock::default();
    let mut selected = 0usize;
    let mut hat_art = CharacterArt::new(&HAT_IMAGES);
    let mut projectile_art = projectiles::ProjectileArt::default();
    let mut scenery_art = scenery::SceneryArt::new();
    let music_muted = quad_storage::STORAGE
        .lock()
        .ok()
        .and_then(|storage| storage.get("epic-rust-music-muted"))
        .is_some_and(|value| value == "1");
    #[cfg(not(target_arch = "wasm32"))]
    let silent_capture = std::env::args()
        .any(|arg| arg == "--capture-ui" || arg == "--capture-hud" || arg == "--capture-scenery");
    #[cfg(target_arch = "wasm32")]
    let silent_capture = false;
    let mut music = music::MusicPlayer::new(silent_capture, music_muted, get_time().to_bits());
    let mut shop_bird = 0usize;
    let mut shop_page = 0usize;
    let mut camp_slot = 0usize;
    let mut gear_bird = 0usize;
    let mut gear_page = 0usize;
    let mut resource_tab = 0usize;
    let mut resource_page = 0usize;
    let mut reward_page = 0usize;
    let mut reward_started_at = 0.;
    let mut reward_motion = reward_motion::RewardMotion::default();
    let mut victory_clock = victory_stars::VictoryClock::default();
    let mut mode = Mode::Attack;
    let target = render_target(W as u32, H as u32);
    target.texture.set_filter(FilterMode::Linear);
    #[cfg(not(target_arch = "wasm32"))]
    {
        let args: Vec<_> = std::env::args().collect();
        if let Some(pair) = args.windows(2).find(|pair| pair[0] == "--capture-scenery") {
            let directory = std::path::Path::new(&pair[1]);
            std::fs::create_dir_all(directory).expect("Create scenery capture directory");
            for id in scenery_art.ids() {
                let mut camera = Camera2D::from_display_rect(Rect::new(0., 0., W, H));
                camera.render_target = Some(target.clone());
                set_camera(&camera);
                assert!(scenery_art.draw(&id, W, H));
                set_default_camera();
                clear_background(INK);
                next_frame().await;
                target.texture.get_texture_data().export_png(
                    directory
                        .join(format!("{id}.png"))
                        .to_str()
                        .expect("Scenery capture filename"),
                );
            }
            return;
        }
    }
    #[cfg(not(target_arch = "wasm32"))]
    let capture_dir = {
        let args: Vec<_> = std::env::args().collect();
        args.windows(2)
            .find(|pair| pair[0] == "--capture-ui" || pair[0] == "--capture-hud")
            .map(|pair| std::path::PathBuf::from(&pair[1]))
    };
    #[cfg(not(target_arch = "wasm32"))]
    let automated_capture = capture_dir.is_some();
    #[cfg(target_arch = "wasm32")]
    let automated_capture = false;
    #[cfg(not(target_arch = "wasm32"))]
    let hud_capture = std::env::args().any(|arg| arg == "--capture-hud");
    #[cfg(target_arch = "wasm32")]
    let hud_capture = false;
    #[cfg(not(target_arch = "wasm32"))]
    let mut capture_index = if hud_capture { 52usize } else { 0usize };
    #[cfg(not(target_arch = "wasm32"))]
    let mut hud_target = 0usize;
    #[cfg(not(target_arch = "wasm32"))]
    let mut capture_opened_resources = false;
    #[cfg(not(target_arch = "wasm32"))]
    let exercise_save = std::env::args().any(|arg| arg == "--exercise-save");
    #[cfg(not(target_arch = "wasm32"))]
    let exercise_revival = std::env::args().any(|arg| arg == "--exercise-revival");
    #[cfg(not(target_arch = "wasm32"))]
    let exercise_party_revival = std::env::args().any(|arg| arg == "--exercise-party-revival");
    #[cfg(not(target_arch = "wasm32"))]
    let exercise_score = std::env::args().any(|arg| arg == "--exercise-score");
    #[cfg(not(target_arch = "wasm32"))]
    let exercise_mastery = std::env::args().any(|arg| arg == "--exercise-mastery");
    #[cfg(not(target_arch = "wasm32"))]
    let exercise_equipment = std::env::args().any(|arg| arg == "--exercise-equipment");
    #[cfg(not(target_arch = "wasm32"))]
    let exercise_migration = std::env::args().any(|arg| arg == "--exercise-migration");
    loop {
        let wall_now = get_time();
        let game_now = battle_clock.advance(wall_now, paused.blocks() || battle_exit.blocks());
        #[cfg(not(target_arch = "wasm32"))]
        let ui_now = if hud_capture {
            match capture_index {
                67 => 10.,
                68 => 10.125,
                69 => 10.5,
                70 => 10.75,
                71 => 10.85,
                72 => 11.,
                73 => 11.1,
                74 => 11.5,
                75 => 11.6,
                76 => 11.7,
                77 => 12.,
                78 => 12.1,
                79 => 12.5,
                80 => 12.75,
                81 => 13.,
                90 => 20.,
                91 => 20.5,
                92 => 20.7,
                93 => 20.8,
                94 => 21.,
                95 => 22.,
                96 => 22.5,
                97 => 22.7,
                98 => 22.8,
                99 => 23.,
                108 => 30.,
                109 => 30. + 7. / 24.,
                110 => 30. + 10. / 24.,
                111 => 30. + 14. / 24.,
                112 => 30. + 14. / 24. + 0.5,
                113 => 30. + 14. / 24. + 1.225,
                114 => 32.,
                115 => 32.1,
                116 => 32.1 + 1. / 12.,
                117 => 32.25,
                118 => 32.35,
                119 => 32.5,
                _ => 0.,
            }
        } else {
            wall_now as f32
        };
        #[cfg(target_arch = "wasm32")]
        let ui_now = wall_now as f32;
        let pause_action = paused.advance(ui_now);
        #[cfg(not(target_arch = "wasm32"))]
        let presentation_now = if capture_dir.is_some() {
            match capture_index {
                52 => 0.,
                53 => 0.125,
                54 => 0.25,
                55 => 1.,
                56 => 1.125,
                57 => 1.5,
                58 => 1.875,
                59 => 2.,
                60 => 2.5,
                61 => 2.875,
                62 => 3.,
                63 => 3.5,
                64 => 4.2,
                65 => 5.,
                66 => 5.25,
                67..=72 => 6.,
                73..=77 => 6.1,
                78..=81 => 7.,
                82 => 0.,
                83 => 0.125,
                84 => 0.5,
                85 => 1.,
                86 => 1. + 1. / 6.,
                87 => 2.2,
                88 => 2.3,
                89 => 100.,
                90..=94 => 1.,
                95..=98 => 1.5,
                99 => 2.5,
                6 if exercise_score || exercise_mastery => 100.,
                6 if exercise_revival || exercise_party_revival => 0.125,
                15 => 0.374,
                16 => 0.375,
                17 => 5.,
                19 => {
                    hat_art
                        .animations()
                        .actor("NinjaPig")
                        .unwrap()
                        .timing("Action_Attack_2")
                        .unwrap()
                        .projectile
                        .unwrap()
                        - 0.001
                }
                20 => {
                    hat_art
                        .animations()
                        .actor("NinjaPig")
                        .unwrap()
                        .timing("Action_Attack_2")
                        .unwrap()
                        .projectile
                        .unwrap()
                        + 0.125
                }
                21 => 5.,
                39..=45 | 49 => 100.,
                31..=33 | 35..=37 => {
                    let (asset, clip, id) = if capture_index < 34 {
                        (
                            "BlackBird",
                            "Action_Attack_3",
                            "Projectile_BlackBird_Bomb_02",
                        )
                    } else {
                        (
                            "BlueBirds",
                            "Action_Attack_1",
                            "Projectile_BlueBirds_Bow_01",
                        )
                    };
                    let cue = hat_art
                        .animations()
                        .actor(asset)
                        .unwrap()
                        .timing(clip)
                        .unwrap()
                        .projectile
                        .unwrap();
                    let duration = projectiles::definition(id).unwrap().duration;
                    match (capture_index - 30) % 4 {
                        1 => cue - 0.001,
                        2 => cue + duration / 2.,
                        _ => cue + duration + 0.001,
                    }
                }
                _ => 0.,
            }
        } else {
            game_now
        };
        #[cfg(target_arch = "wasm32")]
        let presentation_now = game_now;
        if !automated_capture {
            hat_art.set_animation_time((screen == Screen::Battle).then_some(presentation_now));
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() {
            let (clip, time) = match capture_index {
                10 => (None, 0.375),
                11 => (Some("Blink"), 0.125),
                12 => (Some("Action_Attack_1"), 0.375),
                13 => (Some("Defeated"), 999.),
                _ => (None, 0.),
            };
            hat_art.set_animation_time(Some(time));
            hat_art.set_capture_clip(clip);
            if hud_capture {
                hat_art.set_animation_time(Some(presentation_now));
            }
            match capture_index {
                90 | 95 if hud_capture => {
                    let fixture = Profile {
                        unlocked: 3,
                        ..profile.clone()
                    };
                    let mut fight = Battle::new(&fixture, 3).expect("HUD exit preview");
                    for hero in &mut fight.heroes {
                        hero.max_hp = 1000;
                        hero.hp = 400;
                    }
                    for enemy in &mut fight.enemies {
                        enemy.max_hp = 1000;
                        enemy.hp = 1000;
                    }
                    presentation.reset(fight.snapshot());
                    health_displays.clear();
                    paused.reset();
                    battle_exit.reset();
                    hud_motion.restart(fight.stage, fight.wave, 0.);
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 0;
                    mode = Mode::Attack;
                    hud_target = 0;
                }
                91..=99 if hud_capture => {}
                82 if hud_capture => {
                    let fixture = Profile {
                        unlocked: 3,
                        ..profile.clone()
                    };
                    let mut fight = Battle::new(&fixture, 3).expect("HUD transition preview");
                    fight.waves = 2;
                    fight.rage = 100;
                    for enemy in &mut fight.enemies {
                        enemy.max_hp = 1000;
                        enemy.hp = 1000;
                    }
                    presentation.reset(fight.snapshot());
                    health_displays.clear();
                    paused.reset();
                    hud_motion.restart(fight.stage, 1, presentation_now);
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 0;
                    mode = Mode::Attack;
                }
                85 if hud_capture => {
                    let fight = battle.as_mut().unwrap();
                    fight.wave = 2;
                    presentation.reset(fight.snapshot());
                }
                83..=89 if hud_capture => {}
                100 | 103 | 104 | 120 if hud_capture => {
                    // Disposable result fixtures: a won tutorial provides two/
                    // three stars. A synthetic no-kill victory exercises one.
                    let mut fixture_profile = Profile::default();
                    let mut fight = Battle::new_with_seed(&fixture_profile, 0, 7).unwrap();
                    let stars = match capture_index {
                        100 => 1,
                        103 => 2,
                        _ => 3,
                    };
                    if stars == 1 {
                        fight.outcome = Outcome::Won;
                    } else {
                        fight.enemies[0].hp = 1;
                        fight.enemies[1].hp = 0;
                        fight.act(0, Action::Attack(0)).unwrap();
                    }
                    if stars < 3 {
                        for hero in &mut fight.heroes {
                            hero.hp = 0;
                            hero.knocked_out = true;
                        }
                    }
                    assert_eq!(fight.result_score().unwrap().stars, stars);
                    fight.settle_experience(&mut fixture_profile);
                    fight.settle_mastery(&mut fixture_profile);
                    assert_eq!(fight.result_score().unwrap().stars, stars);
                    presentation.reset(fight.snapshot());
                    health_displays.clear();
                    paused.reset();
                    battle_exit.reset();
                    battle = Some(fight);
                    screen = Screen::Battle;
                }
                101..=107 if hud_capture => {}
                108 if hud_capture => {
                    let mut fixture_profile = Profile::default();
                    let mut fight = Battle::new_with_seed(&fixture_profile, 0, 7).unwrap();
                    fight.enemies[0].hp = 1;
                    fight.enemies[1].hp = 0;
                    fight.act(0, Action::Attack(0)).unwrap();
                    fight.claim(&mut fixture_profile).unwrap();
                    // All settlement belongs to this disposable profile.
                    battle = Some(fight);
                    screen = Screen::Rewards;
                    reward_started_at = get_time();
                    reward_page = 0;
                    reward_motion.reset();
                }
                109..=119 | 121..=125 if hud_capture => {}
                52 => {
                    let stage = ENCOUNTERS
                        .iter()
                        .position(|e| {
                            e.waves[0]
                                .spawns
                                .iter()
                                .any(|s| ui_motion::is_boss(PIGS[s.pig].id))
                        })
                        .expect("Boss encounter");
                    let fixture = Profile {
                        unlocked: stage,
                        ..profile.clone()
                    };
                    let mut fight = Battle::new(&fixture, stage).expect("Boss HUD preview");
                    hud_target = fight
                        .enemies
                        .iter()
                        .position(|e| ui_motion::is_boss(PIGS[e.pig.unwrap()].id))
                        .expect("Boss fighter");
                    for hero in &mut fight.heroes {
                        hero.max_hp = 1000;
                        hero.hp = 400;
                    }
                    for enemy in &mut fight.enemies {
                        enemy.max_hp = 1000;
                        enemy.hp = 1000;
                    }
                    presentation.reset(fight.snapshot());
                    health_displays.clear();
                    hud_motion.restart(fight.stage, fight.wave, presentation_now);
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 0;
                    mode = Mode::Attack;
                }
                55 | 59 | 62 | 65 => {
                    let fight = battle.as_mut().unwrap();
                    match capture_index {
                        55 => fight.enemies[hud_target].hp = 400,
                        59 => fight.heroes[0].hp = 800,
                        62 => fight.enemies[hud_target].hp = 0,
                        _ => fight.enemies[hud_target].hp = 1000,
                    }
                    let mut fixture = profile.clone();
                    fight.settle_experience(&mut fixture);
                    fight.settle_mastery(&mut fixture);
                    presentation.reset(fight.snapshot());
                }
                53..=81 if hud_capture => {}
                50 => {
                    // Source-independent edge-case layout preview on an isolated
                    // battle. It never awards loot or changes the player save.
                    let mut fixture = Profile {
                        unlocked: 3,
                        ..Profile::default()
                    };
                    let mut fight = Battle::new(&fixture, 3).expect("Health HUD battle");
                    for (hero, hp) in fight.heroes.iter_mut().zip([0, 1, 500]) {
                        hero.max_hp = 1000;
                        hero.hp = hp;
                        hero.knocked_out = hp == 0;
                    }
                    let originals = fight.enemies.clone();
                    fight.enemies = (0..6)
                        .map(|i| originals[i % originals.len()].clone())
                        .collect();
                    for (enemy, hp) in fight.enemies.iter_mut().zip([0, 1, 250, 500, 750, 1000]) {
                        enemy.max_hp = 1000;
                        enemy.hp = hp;
                    }
                    // Consume synthetic defeat rewards against the fixture,
                    // before the ordinary frame settles into the player profile.
                    fight.settle_experience(&mut fixture);
                    fight.settle_mastery(&mut fixture);
                    presentation.reset(fight.snapshot());
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 1;
                    mode = Mode::Attack;
                }
                51 => {
                    let fight = battle.as_mut().expect("Health HUD battle");
                    for (hero, hp) in fight.heroes.iter_mut().zip([1000, 250, 1]) {
                        hero.hp = hp;
                        hero.knocked_out = false;
                    }
                    for (enemy, hp) in fight.enemies.iter_mut().zip([1000, 750, 500, 250, 1, 0]) {
                        enemy.hp = hp;
                    }
                    let mut fixture = Profile::default();
                    fight.settle_experience(&mut fixture);
                    fight.settle_mastery(&mut fixture);
                    presentation.reset(fight.snapshot());
                }
                46 => {
                    // Isolated HUD/input fixture; never mutate the player profile.
                    let fixture = Profile {
                        unlocked: 3,
                        ..Profile::default()
                    };
                    let mut fight = Battle::new(&fixture, 3).expect("HUD battle");
                    for enemy in &mut fight.enemies {
                        enemy.hp = 10000;
                        enemy.max_hp = 10000;
                    }
                    fight.rage = 50;
                    presentation.reset(fight.snapshot());
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 0;
                    mode = Mode::Attack;
                }
                47 => {
                    let fight = battle.as_mut().expect("HUD battle");
                    fight.rage = 100;
                    presentation.reset(fight.snapshot());
                }
                48 | 49 => {}
                0 => screen = Screen::Map,
                1 => screen = Screen::Camp,
                22 => screen = Screen::Equipment,
                23 => {
                    if !capture_opened_resources {
                        screen = Screen::Camp;
                    }
                }
                24..=27 => {
                    screen = Screen::Resources;
                    resource_tab = match capture_index {
                        24 => 2,
                        25 => 3,
                        26 => 2,
                        _ => 1,
                    };
                    resource_page = 0;
                }
                28..=29 => {
                    let mut fixture_profile = profile.clone();
                    let mut fixture = Battle::new_with_seed(&fixture_profile, 0, 7).unwrap();
                    fixture.enemies[0].hp = 1;
                    fixture.enemies[1].hp = 0;
                    fixture.act(0, Action::Attack(0)).unwrap();
                    fixture.claim(&mut fixture_profile).unwrap();
                    battle = Some(fixture);
                    screen = Screen::Rewards;
                    reward_page = 0;
                    reward_started_at = get_time()
                        - if capture_index == 28 {
                            2.
                        } else {
                            0.5 + reward_motion::entry_duration() as f64
                        };
                    reward_motion.reset();
                }
                30 | 34 => {
                    let mut fixture = profile.clone();
                    fixture.unlocked = 3;
                    fixture.party = [if capture_index == 30 { 3 } else { 4 }, 1, 0];
                    if capture_index == 30 {
                        let gear = fixture
                            .inventory
                            .add(
                                "bird_weapon_black_bomb_01",
                                epic_core::stats::EquipmentStats {
                                    level: 4,
                                    ..Default::default()
                                },
                            )
                            .unwrap();
                        fixture.equip_gear(3, gear).unwrap();
                    } else {
                        // Use the original level-one starter bow even in captures
                        // of a later player save, so the expected asset is fixed.
                        let gear = fixture
                            .inventory
                            .add("bird_weapon_blue_bow_start", Default::default())
                            .unwrap();
                        fixture.equip_gear(4, gear).unwrap();
                    }
                    let mut fight = Battle::new(&fixture, 3).unwrap();
                    for enemy in &mut fight.enemies {
                        enemy.hp = 10000;
                        enemy.max_hp = 10000;
                    }
                    fight.enable_presentation_trace();
                    presentation.reset(fight.snapshot());
                    fight.act(0, Action::Attack(0)).unwrap();
                    presentation.enqueue(fight.take_presentation_events());
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 0;
                    mode = Mode::Attack;
                }
                31..=33 | 35..=37 => {}
                38 | 40..=45 => {
                    // Class-rule previews use a cloned profile and never save
                    // purchased hats or synthetic battle stats to the play save.
                    let skin = match capture_index {
                        38 => "skin_cleric",
                        40 => "skin_bard",
                        41 => "skin_thunderbird",
                        42 | 43 => "skin_stoneguard",
                        _ => "skin_winterfighter",
                    };
                    let mut fixture = profile.clone();
                    fixture.gold = 10000;
                    fixture.unlocked = 3;
                    let hat = HATS.iter().position(|hat| hat.id == skin).unwrap();
                    fixture.buy_and_equip(hat).unwrap();
                    fixture.party = match capture_index {
                        41 => [1, 0, 2],
                        42 | 43 => [0, 1, 2],
                        44 | 45 => [3, 0, 1],
                        _ => [2, 0, 1],
                    };
                    let mut fight = Battle::new_with_seed(&fixture, 3, 3).unwrap();
                    for hero in &mut fight.heroes {
                        hero.max_hp = 1000;
                        hero.hp = 500;
                        hero.attack = if capture_index >= 42 { 200 } else { 100 };
                    }
                    if capture_index == 38 {
                        fight.heroes[1].hp = 995;
                        fight.heroes[2].hp = 400;
                    }
                    for enemy in &mut fight.enemies {
                        enemy.max_hp = 10000;
                        enemy.hp = 10000;
                    }
                    if capture_index == 43 {
                        fight.enemies[0].effects.apply(
                            "preview-poison",
                            Source::bird(1),
                            3,
                            epic_core::effects::EffectKind::Poison(10),
                        );
                    }
                    if capture_index == 45 {
                        fight.enemies[0].effects.apply(
                            "preview-stun",
                            Source::bird(1),
                            3,
                            epic_core::effects::EffectKind::Stun,
                        );
                    }
                    fight.enable_presentation_trace();
                    presentation.reset(fight.snapshot());
                    fight
                        .act(0, Action::Attack(usize::from(capture_index == 41)))
                        .unwrap();
                    presentation.enqueue(fight.take_presentation_events());
                    presentation.tick(0., hat_art.animations());
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 0;
                    mode = Mode::Attack;
                }
                39 => {}
                2 => {
                    screen = Screen::Shop;
                    shop_bird = 0;
                    shop_page = 0;
                }
                3 => {
                    screen = Screen::Shop;
                    shop_bird = 0;
                    shop_page = 4;
                }
                4 => {
                    screen = Screen::Shop;
                    shop_bird = 4;
                    shop_page = 3;
                }
                5 => {
                    screen = Screen::Battle;
                    battle = Some(Battle::new(&profile, 0).expect("Capture battle"));
                    if exercise_mastery {
                        let seed = (0..200)
                            .find(|&seed| {
                                let mut trial = Battle::new_with_seed(&profile, 0, seed).unwrap();
                                trial.enemies[0].hp = 1;
                                trial.enemies[1].hp = 0;
                                trial.act(0, Action::Attack(0)).unwrap();
                                trial
                                    .defeat_drops()
                                    .iter()
                                    .flat_map(|drop| &drop.items)
                                    .filter(|item| item.id == "mastery_current")
                                    .map(|item| item.value)
                                    .sum::<i32>()
                                    == 1
                            })
                            .expect("One-point native mastery fixture seed");
                        battle = Some(Battle::new_with_seed(&profile, 0, seed).unwrap());
                    }
                    if exercise_save || exercise_score || exercise_mastery {
                        // Isolated reward fixture: finish the original two-pig
                        // wave through the real attack button without claiming gold.
                        let fight = battle.as_mut().unwrap();
                        fight.enemies[0].hp = 1;
                        fight.enemies[1].hp = 0;
                        selected = 0;
                        mode = Mode::Attack;
                    }
                    if exercise_revival {
                        let capture_profile = Profile {
                            unlocked: 3,
                            ..profile.clone()
                        };
                        let mut fight = Battle::new(&capture_profile, 3).expect("Capture revival");
                        fight.heroes[1].hp = 0;
                        fight.heroes[1].knocked_out = true;
                        battle = Some(fight);
                    }
                    if exercise_party_revival {
                        let capture_profile = Profile {
                            unlocked: 3,
                            ..profile.clone()
                        };
                        let mut fight =
                            Battle::new(&capture_profile, 3).expect("Capture party revival");
                        for hero in &mut fight.heroes {
                            hero.hp = 0;
                            hero.knocked_out = true;
                            hero.acted = true;
                        }
                        fight.outcome = Outcome::Lost;
                        battle = Some(fight);
                    }
                }
                6 if exercise_revival
                    || exercise_party_revival
                    || exercise_score
                    || exercise_mastery => {}
                6 => {
                    screen = Screen::Map;
                    map_page = ENCOUNTERS.len().div_ceil(12) - 1;
                }
                7 => {
                    let stage = ENCOUNTERS
                        .iter()
                        .position(|encounter| {
                            encounter.waves[0]
                                .spawns
                                .iter()
                                .map(|s| s.amount)
                                .sum::<u32>()
                                == 6
                        })
                        .expect("Six-enemy encounter");
                    let mut capture_profile = profile.clone();
                    capture_profile.unlocked = stage;
                    screen = Screen::Battle;
                    battle = Some(Battle::new(&capture_profile, stage).expect("Capture full wave"));
                }
                14 => {
                    let mut capture_profile = profile.clone();
                    capture_profile.unlocked = 3;
                    capture_profile.party = [0, 1, 3];
                    let mut fight =
                        Battle::new(&capture_profile, 3).expect("Capture queued battle");
                    for enemy in &mut fight.enemies {
                        enemy.hp = 10000;
                        enemy.max_hp = 10000;
                    }
                    presentation.reset(fight.snapshot());
                    battle = Some(fight);
                    screen = Screen::Battle;
                    selected = 0;
                    mode = Mode::Attack;
                }
                15..=17 => {}
                18 => {
                    let mut capture_profile = profile.clone();
                    capture_profile.unlocked = 3;
                    capture_profile.party = [0, 1, 3];
                    let mut fight =
                        Battle::new(&capture_profile, 3).expect("Capture projectile battle");
                    fight.enemies.truncate(1);
                    let pig = PIGS
                        .iter()
                        .position(|pig| pig.id == "pig_ninja_bowman")
                        .unwrap();
                    fight.enemies[0].pig = Some(pig);
                    fight.enemies[0].name = PIGS[pig].name.into();
                    fight.enemies[0].hp = 10000;
                    fight.enemies[0].max_hp = 10000;
                    fight.heroes[0].acted = true;
                    fight.heroes[1].acted = true;
                    fight.enable_presentation_trace();
                    fight
                        .act(2, Action::Attack(0))
                        .expect("Capture native enemy phase");
                    let mut events = fight.take_presentation_events();
                    let start=events.iter().position(|event| matches!(event,epic_core::combat_events::CombatEvent::SkillStarted { source,.. } if source.side==Side::Pigs)).expect("Captured enemy skill");
                    let events = events.split_off(start);
                    if let epic_core::combat_events::CombatEvent::SkillStarted { before, .. } =
                        &events[0]
                    {
                        presentation.reset(before.clone());
                    }
                    presentation.enqueue(events);
                    battle = Some(fight);
                    screen = Screen::Battle;
                }
                19..=21 => {}
                _ => {
                    let stage = ENCOUNTERS
                        .iter()
                        .position(|encounter| {
                            encounter.waves[0]
                                .spawns
                                .iter()
                                .any(|spawn| PIGS[spawn.pig].id == "pig_brute_brute_bird1")
                        })
                        .expect("Original Brute encounter");
                    let capture_profile = Profile {
                        unlocked: stage,
                        party: [0, 1, 3],
                        ..Profile::default()
                    };
                    let mut charging =
                        Battle::new(&capture_profile, stage).expect("Capture charge");
                    for hero in 0..charging.heroes.len() {
                        charging
                            .act(hero, Action::Support(hero))
                            .expect("Complete bird phase");
                    }
                    assert!(charging
                        .enemies
                        .iter()
                        .any(|enemy| enemy.ai.charging_turns().is_some()));
                    screen = Screen::Battle;
                    battle = Some(charging);
                }
            }
            if capture_index < 14
                && !((exercise_revival
                    || exercise_party_revival
                    || exercise_score
                    || exercise_mastery)
                    && capture_index == 6)
            {
                if let Some(fight) = &battle {
                    presentation.reset(fight.snapshot());
                }
            }
        }
        let completed_exit = battle_exit.advance(ui_now, paused.blocks());
        if let Some(action @ (pause::Action::Retry | pause::Action::Map)) = pause_action {
            battle_exit.begin(
                action,
                ui_now,
                hud_motion.pose(presentation_now, !automated_capture || hud_capture),
            );
        }
        let navigation_action = completed_exit
            .or(pause_action
                .filter(|action| *action == pause::Action::Resume && !battle_exit.blocks()));
        let scale = (screen_width() / W).min(screen_height() / H).max(0.001);
        let origin = vec2(
            (screen_width() - W * scale) / 2.,
            (screen_height() - H * scale) / 2.,
        );
        let (mx, my) = mouse_position();
        let mut ui = Ui {
            pointer: if automated_capture {
                vec2(-1., -1.)
            } else {
                (vec2(mx, my) - origin) / scale
            },
            pressed: !automated_capture && is_mouse_button_pressed(MouseButton::Left),
        };
        #[cfg(not(target_arch = "wasm32"))]
        if hud_capture {
            ui.pointer = match capture_index {
                67 | 73 | 78 | 90 | 95 => vec2(55., 55.),
                69 => enemy_position(hud_target, battle.as_ref().unwrap().enemies.len()),
                70 => vec2(100., 70.),
                74 | 75 => vec2(100., H - 50.),
                76 => vec2(100., 210.),
                79 => vec2(100., 350.),
                82 | 88 => vec2(W / 2., H - 66.),
                83 => vec2(75., 75.),
                91 => vec2(100., 350.),
                96 => vec2(100., 210.),
                92 | 97 => enemy_position(0, battle.as_ref().unwrap().enemies.len()),
                _ => vec2(-1., -1.),
            };
            ui.pressed = matches!(
                capture_index,
                67 | 69
                    | 70
                    | 73
                    | 74
                    | 75
                    | 76
                    | 78
                    | 79
                    | 82
                    | 83
                    | 88
                    | 90
                    | 91
                    | 92
                    | 95
                    | 96
                    | 97
            );
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && matches!(capture_index, 46 | 48) {
            // Half-full pepper rejects input; full pepper invokes the real action.
            ui.pointer =
                battle_hud::rage_hitbox(vec2(W, H), battle_hud::HudPose::settled()).center();
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && capture_index == 47 {
            ui.pointer = vec2(-1., -1.);
            ui.pressed = false;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && matches!(capture_index, 50 | 51) {
            ui.pointer = vec2(-1., -1.);
            ui.pressed = false;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some()
            && ((capture_index == 23 && !capture_opened_resources) || capture_index == 26)
        {
            ui.pointer = if capture_index == 23 {
                vec2(430., 590.) // Open Inventory through the Camp button.
            } else {
                vec2(290., 650.) // Advance the recovered recipe list.
            };
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_equipment && capture_index == 22 {
            ui.pointer = vec2(930., 485.);
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_migration && capture_index == 1 {
            // Re-select Red in the real Camp UI to commit the migrated profile.
            ui.pointer = vec2(140., 520.);
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_save && capture_index == 0 {
            ui.pointer = vec2(1000., 105.);
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_save && capture_index == 2 {
            // Exercise the real shop button against an isolated seeded test save.
            ui.pointer = vec2(550., 387.);
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some()
            && (capture_index == 14
                || ((exercise_save || exercise_score || exercise_mastery) && capture_index == 5))
        {
            ui.pointer = vec2(830., 168.);
            ui.pressed = true;
        }
        // Macroquad maps the primary touchscreen contact to mouse events.
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_revival && capture_index == 5 {
            ui.pointer = vec2(110., 366.);
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_party_revival && capture_index == 5 {
            ui.pointer = vec2(550., 380.);
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_score && capture_index == 6 {
            ui.pointer = vec2(550., 517.);
            ui.pressed = true;
        }
        #[cfg(not(target_arch = "wasm32"))]
        if hud_capture {
            match capture_index {
                108 | 115 => {
                    ui.pointer = vec2(900., 655.);
                    ui.pressed = true;
                }
                109 | 117 => {
                    ui.pointer = vec2(420., 47.);
                    ui.pressed = true;
                }
                _ => {}
            }
        }
        let mut camera = Camera2D::from_display_rect(Rect::new(0., 0., W, H));
        camera.render_target = Some(target.clone());
        set_camera(&camera);
        let background = battle
            .as_ref()
            .filter(|_| screen == Screen::Battle)
            .map(|fight| ENCOUNTERS[fight.stage].background_asset_id);
        if !background.is_some_and(|id| scenery_art.draw(id, W, H)) {
            scenery();
        }
        let reward_elapsed = (get_time() - reward_started_at) as f32;
        #[cfg(not(target_arch = "wasm32"))]
        let reward_elapsed = if hud_capture && (108..=119).contains(&capture_index) {
            ui_now - 30.
        } else {
            reward_elapsed
        };
        if screen == Screen::Rewards && !reward_motion.pose(reward_elapsed, ui_now).controls_ready {
            ui.pressed = false;
        }
        if screen != Screen::Battle {
            header(&mut ui, &profile, &mut screen);
        }
        if screen != Screen::Battle {
            victory_clock.observe(false, ui_now);
        }
        let mut changed = false;
        let mut toggle_music = false;
        match screen {
            Screen::Map => {
                text("PIGGY ISLAND", 45., 142., 31., INK);
                text(
                    "Choose a trail. Replay any unlocked battle to earn more gold.",
                    45.,
                    174.,
                    21.,
                    INK,
                );
                let page_count = ENCOUNTERS.len().div_ceil(12);
                let first = map_page * 12;
                let page_size = (ENCOUNTERS.len() - first).min(12);
                let points: Vec<_> = (0..page_size)
                    .map(|i| {
                        vec2(
                            105. + (i % 6) as f32 * 177.,
                            305. + (i / 6) as f32 * 195. + if i % 2 == 0 { 0. } else { 40. },
                        )
                    })
                    .collect();
                for i in 1..page_size {
                    draw_line(
                        points[i - 1].x,
                        points[i - 1].y,
                        points[i].x,
                        points[i].y,
                        12.,
                        BROWN,
                    );
                }
                for (local_index, position) in points.iter().enumerate() {
                    let i = first + local_index;
                    let unlocked = i <= profile.unlocked;
                    draw_circle(position.x, position.y, 34., INK);
                    draw_circle(
                        position.x,
                        position.y - 3.,
                        29.,
                        if unlocked { GOLD } else { GRAY },
                    );
                    if unlocked {
                        let number = (i + 1).to_string();
                        text(
                            &number,
                            position.x - measure_ui(&number, 28).width / 2.,
                            position.y + 6.,
                            28.,
                            INK,
                        );
                    } else {
                        ui_skin::icon(
                            "lock",
                            Rect::new(position.x - 12., position.y - 20., 24., 33.),
                            WHITE,
                        );
                    }
                    let title = STAGE_NAMES[i];
                    for star in 0..3 {
                        let tint = if star < profile.stars[i] {
                            WHITE
                        } else {
                            Color::new(0.35, 0.38, 0.4, 0.65)
                        };
                        ui_skin::icon(
                            "star",
                            Rect::new(
                                position.x - 34. + star as f32 * 23.,
                                position.y - 62.,
                                22.,
                                22.,
                            ),
                            tint,
                        );
                    }
                    wrapped_label(title, position.x, position.y + 58., 155., 17., 3);
                    if ui.hit(
                        Rect::new(position.x - 40., position.y - 40., 80., 85.),
                        unlocked,
                    ) {
                        match Battle::new_with_seed(&profile, i, get_time().to_bits()) {
                            Ok(value) => {
                                presentation.reset(value.snapshot());
                                health_displays.clear();
                                hud_motion.restart(value.stage, value.wave, presentation_now);
                                paused.reset();
                                battle_exit.reset();
                                battle = Some(value);
                                selected = 0;
                                mode = Mode::Attack;
                                screen = Screen::Battle;
                                notice.clear();
                            }
                            Err(error) => notice = error.into(),
                        }
                    }
                }
                if ui.button(Rect::new(40., 636., 150., 42.), "Previous", map_page > 0) {
                    map_page -= 1;
                }
                text(
                    &format!(
                        "Trail {} / {}   |   {} encounters",
                        map_page + 1,
                        page_count,
                        ENCOUNTERS.len()
                    ),
                    350.,
                    664.,
                    23.,
                    INK,
                );
                if ui.button(
                    Rect::new(910., 636., 150., 42.),
                    "Next",
                    map_page + 1 < page_count,
                ) {
                    map_page += 1;
                }
            }
            Screen::Camp => {
                text("GATHER YOUR PARTY", 45., 140., 32., INK);
                text(
                    "Choose one of three party slots, then choose its bird below.",
                    45.,
                    173.,
                    22.,
                    INK,
                );
                for i in 0..3 {
                    let x = 245. + i as f32 * 305.;
                    let bird = profile.party[i];
                    panel(x - 110., 210., 220., 255.);
                    character(
                        &mut hat_art,
                        vec2(x, 310.),
                        Actor::Bird {
                            bird,
                            hat: profile.equipped[bird],
                        },
                        true,
                        camp_slot == i,
                        None,
                    );
                    text(BIRD_NAMES[bird], x - 70., 391., 25., INK);
                    text(HATS[profile.equipped[bird]].name, x - 70., 420., 19., INK);
                    let stats = profile.bird_stats(bird).expect("Party bird stats");
                    text(
                        &format!("{:.0} HP / {:.0} ATK", stats.health, stats.attack),
                        x - 90.,
                        449.,
                        18.,
                        INK,
                    );
                    let mastery = profile.mastery_for_bird(bird).expect("Owned class mastery");
                    let label = if !profile.mastery_badge_available() {
                        "Mastery: collect 100 stars".into()
                    } else if mastery.rank == 100 {
                        "Mastery 100 / MAX".into()
                    } else {
                        format!(
                            "Mastery {} | {} / {}",
                            mastery.rank,
                            mastery.points,
                            mastery.cost()
                        )
                    };
                    text(&label, x - 90., 477., 14., INK);
                    if ui.hit(Rect::new(x - 110., 210., 220., 255.), true) {
                        camp_slot = i;
                    }
                }
                for (bird, name) in BIRD_NAMES.iter().enumerate() {
                    if ui.button(
                        Rect::new(45. + bird as f32 * 207., 495., 190., 55.),
                        name,
                        true,
                    ) {
                        if let Err(error) = profile.set_party(camp_slot, bird) {
                            notice = error.into();
                        } else {
                            changed = true;
                        }
                    }
                }
                if ui.button(Rect::new(45., 570., 240., 43.), "Equipment", true) {
                    gear_bird = profile.party[camp_slot];
                    gear_page = 0;
                    screen = Screen::Equipment;
                }
                if ui.button(Rect::new(310., 570., 240., 43.), "Inventory", true) {
                    resource_tab = 0;
                    resource_page = 0;
                    screen = Screen::Resources;
                }
                text("Change classes in the hat shop.", 580., 598., 23., INK);
            }
            Screen::Resources => {
                text("INVENTORY", 45., 140., 32., INK);
                text(
                    "Collected materials, recipes and other items.",
                    45.,
                    173.,
                    22.,
                    INK,
                );
                for (tab, label) in ["Materials", "Consumables", "Recipes", "Other"]
                    .iter()
                    .enumerate()
                {
                    if ui.button(
                        Rect::new(45. + tab as f32 * 257., 192., 240., 42.),
                        label,
                        resource_tab != tab,
                    ) {
                        resource_tab = tab;
                        resource_page = 0;
                    }
                }
                let choices: Vec<_> = profile
                    .resources
                    .items()
                    .filter_map(|(id, stack)| {
                        let item =
                            epic_core::resources::definition(id).expect("Stored resource identity");
                        let tab = match item.item_type {
                            1 | 2 => 0,
                            5 => 1,
                            12 => 2,
                            _ => 3,
                        };
                        (tab == resource_tab).then_some((item, stack))
                    })
                    .collect();
                let pages = choices.len().div_ceil(6).max(1);
                resource_page = resource_page.min(pages - 1);
                if ui.button(
                    Rect::new(45., 630., 155., 42.),
                    "Previous",
                    resource_page > 0,
                ) {
                    resource_page -= 1;
                }
                if ui.button(
                    Rect::new(220., 630., 155., 42.),
                    "Next",
                    resource_page + 1 < pages,
                ) {
                    resource_page += 1;
                }
                text(
                    &format!("Page {} / {}", resource_page + 1, pages),
                    455.,
                    658.,
                    22.,
                    INK,
                );
                for (row, (item, stack)) in
                    choices.iter().skip(resource_page * 6).take(6).enumerate()
                {
                    let y = 251. + row as f32 * 60.;
                    panel(45., y, 1010., 53.);
                    let name = item.label;
                    let size = (22. * 650. / measure_ui(name, 22).width.max(1.)).min(22.);
                    text(name, 62., y + 23., size, INK);
                    let category = match item.item_type {
                        1 | 2 => "Crafting material",
                        5 => "Consumable",
                        12 => "Crafting recipe",
                        _ => "Collected item",
                    };
                    text(category, 62., y + 43., 13., INK);
                    let value = if item.item_type == 12 {
                        format!("Owned: {} / Level {}", stack.value, stack.level)
                    } else {
                        format!("Owned: {}", stack.value)
                    };
                    text(
                        &value,
                        1028. - measure_ui(&value, 21).width,
                        y + 33.,
                        21.,
                        INK,
                    );
                }
                if choices.is_empty() {
                    text("No items collected yet.", 65., 286., 23., INK);
                }
                if ui.button(Rect::new(850., 630., 205., 42.), "Back to camp", true) {
                    screen = Screen::Camp;
                }
            }
            Screen::Rewards => {
                if let Some((fight, receipt)) = battle
                    .as_ref()
                    .and_then(|fight| fight.victory_rewards().map(|receipt| (fight, receipt)))
                {
                    if rewards::draw(
                        &mut ui,
                        receipt,
                        fight.reward(),
                        reward_elapsed,
                        &mut reward_page,
                        &mut reward_motion,
                        ui_now,
                    ) {
                        screen = Screen::Camp;
                    }
                } else {
                    screen = Screen::Camp;
                }
            }
            Screen::Equipment => {
                text("EQUIPMENT", 45., 140., 32., INK);
                text(
                    "Choose a bird, then equip an item from its collection.",
                    45.,
                    173.,
                    22.,
                    INK,
                );
                for (bird, name) in BIRD_NAMES.iter().enumerate() {
                    if ui.button(
                        Rect::new(45. + bird as f32 * 207., 192., 190., 42.),
                        name,
                        true,
                    ) {
                        gear_bird = bird;
                        gear_page = 0;
                    }
                }
                let stats = profile.bird_stats(gear_bird).expect("Equipment bird stats");
                text(
                    &format!(
                        "{}: {:.0} HP / {:.0} ATK",
                        BIRD_NAMES[gear_bird], stats.health, stats.attack
                    ),
                    45.,
                    270.,
                    25.,
                    INK,
                );
                let choices: Vec<_> = profile
                    .inventory
                    .items()
                    .iter()
                    .enumerate()
                    .filter(|(_, gear)| gear.fits(gear_bird))
                    .map(|(index, _)| index)
                    .collect();
                let pages = choices.len().div_ceil(4);
                gear_page = gear_page.min(pages.saturating_sub(1));
                for (row, &index) in choices.iter().skip(gear_page * 4).take(4).enumerate() {
                    let gear = profile.inventory.items()[index];
                    let y = 295. + row as f32 * 78.;
                    panel(45., y, 1010., 68.);
                    let slot = if gear.slot() == 0 {
                        "Main hand"
                    } else {
                        "Off hand"
                    };
                    let stat = if gear.slot() == 0 { "ATK" } else { "HP" };
                    text(
                        &format!(
                            "{} / level {} / quality {}",
                            slot, gear.state.level, gear.state.quality
                        ),
                        62.,
                        y + 26.,
                        21.,
                        INK,
                    );
                    text(
                        &format!(
                            "+{:.1} {} | Enchantment {}{}",
                            gear.main_stat(),
                            stat,
                            gear.state.enchantment_level,
                            if gear.state.ancient { " | Ancient" } else { "" }
                        ),
                        62.,
                        y + 51.,
                        18.,
                        INK,
                    );
                    let equipped =
                        profile.inventory.hands(gear_bird).unwrap()[gear.slot()] == index;
                    if ui.button(
                        Rect::new(848., y + 11., 185., 42.),
                        if equipped { "Equipped" } else { "Equip" },
                        !equipped,
                    ) {
                        match profile.equip_gear(gear_bird, index) {
                            Ok(()) => {
                                changed = true;
                                notice = format!(
                                    "{} equipped {}.",
                                    BIRD_NAMES[gear_bird],
                                    slot.to_lowercase()
                                );
                            }
                            Err(error) => notice = error.into(),
                        }
                    }
                }
                if ui.button(Rect::new(45., 630., 155., 42.), "Previous", gear_page > 0) {
                    gear_page -= 1;
                }
                if ui.button(
                    Rect::new(220., 630., 155., 42.),
                    "Next",
                    gear_page + 1 < pages,
                ) {
                    gear_page += 1;
                }
                if ui.button(Rect::new(850., 630., 205., 42.), "Back to camp", true) {
                    screen = Screen::Camp;
                }
            }
            Screen::Shop => {
                text("THE GOLDEN HAT SHOP", 45., 139., 32., INK);
                text(
                    "All classes shown here can be bought with earned gold, at any time.",
                    45.,
                    171.,
                    22.,
                    INK,
                );
                for (bird, name) in BIRD_NAMES.iter().enumerate() {
                    if ui.button(
                        Rect::new(45. + bird as f32 * 207., 191., 190., 42.),
                        name,
                        true,
                    ) {
                        shop_bird = bird;
                        shop_page = 0;
                    }
                }
                let choices: Vec<_> = HATS
                    .iter()
                    .enumerate()
                    .filter(|(_, hat)| hat.bird == shop_bird)
                    .map(|(i, _)| i)
                    .collect();
                let pages = choices.len().div_ceil(6);
                shop_page = shop_page.min(pages.saturating_sub(1));
                for (col, &index) in choices.iter().skip(shop_page * 6).take(6).enumerate() {
                    let hat = HATS[index];
                    let x = 45. + (col % 3) as f32 * 347.;
                    let y = 257. + (col / 3) as f32 * 188.;
                    panel(x, y, 320., 170.);
                    let title_size = (285. / measure_ui(hat.name, 25).width * 25.).min(25.);
                    text(hat.name, x + 17., y + 32., title_size, INK);
                    let art = &hat_art[index];
                    let scale = (80. / art.width()).min(65. / art.height());
                    draw_texture_ex(
                        art,
                        x + 15.,
                        y + 42.,
                        WHITE,
                        DrawTextureParams {
                            dest_size: Some(vec2(art.width() * scale, art.height() * scale)),
                            ..Default::default()
                        },
                    );
                    text(
                        &format!(
                            "+{}% HP / +{}% ATK",
                            hat.bonus_hp_percent, hat.bonus_damage_percent
                        ),
                        x + 105.,
                        y + 60.,
                        19.,
                        INK,
                    );
                    text(SKILLS[hat.attack].name, x + 105., y + 87., 19., INK);
                    let equipped = profile.equipped[hat.bird] == index;
                    let label = if equipped {
                        "Equipped".into()
                    } else if profile.owned[index] {
                        "Equip".into()
                    } else {
                        format!("Buy / {} gold", hat.price)
                    };
                    if ui.button(
                        Rect::new(x + 15., y + 107., 290., 43.),
                        &label,
                        !equipped && (profile.owned[index] || profile.gold >= hat.price),
                    ) {
                        match profile.buy_and_equip(index) {
                            Ok(()) => {
                                changed = true;
                                notice = format!("{} equipped {}.", BIRD_NAMES[hat.bird], hat.name);
                            }
                            Err(error) => notice = error.into(),
                        }
                    }
                }
                if ui.button(Rect::new(45., 644., 135., 35.), "Previous", shop_page > 0) {
                    shop_page -= 1;
                }
                text(
                    &format!(
                        "Page {} / {}   |   {} / {} hats owned",
                        shop_page + 1,
                        pages,
                        profile.owned.iter().filter(|&&owned| owned).count(),
                        HATS.len()
                    ),
                    340.,
                    669.,
                    22.,
                    INK,
                );
                if ui.button(
                    Rect::new(925., 644., 135., 35.),
                    "Next",
                    shop_page + 1 < pages,
                ) {
                    shop_page += 1;
                }
            }
            Screen::Battle => {
                if let Some(fight) = battle.as_mut() {
                    fight.enable_presentation_trace();
                    presentation.tick(presentation_now, hat_art.animations());
                    presentation.synchronize(fight, presentation_now);
                    let view = presentation.view().clone();
                    health_displays.begin(fight.stage, view.wave, presentation_now);
                    hud_motion.observe(fight.stage, view.wave, presentation_now);
                    let hud_pose = battle_exit.pose(ui_now).unwrap_or_else(|| {
                        hud_motion.pose(presentation_now, !automated_capture || hud_capture)
                    });
                    battle_backdrop(125., 12., 275., 77.);
                    battle_backdrop(306., 94., 560., 34.);
                    let title_size =
                        (245. / measure_ui(STAGE_NAMES[fight.stage], 27).width * 27.).min(27.);
                    text(STAGE_NAMES[fight.stage], 140., 50., title_size, INK);
                    battle_hud::progress(
                        vec2(W, H),
                        view.wave as usize,
                        fight.waves as usize,
                        hud_pose,
                    );
                    text(
                        &format!(
                            "Wave {}/{}  /  Round {}",
                            view.wave, fight.waves, view.round
                        ),
                        140.,
                        83.,
                        21.,
                        INK,
                    );
                    let mut pause_button =
                        ui_motion::placement_rect("pause_button", vec2(W, H), 0.);
                    pause_button.x += hud_pose.pause_offset.x;
                    pause_button.y += hud_pose.pause_offset.y;
                    ui_motion::paint("pause_button", pause_button, 1., WHITE);
                    let mut pause_icon = ui_motion::placement_rect("pause_icon", vec2(W, H), 0.);
                    pause_icon.x += hud_pose.pause_offset.x;
                    pause_icon.y += hud_pose.pause_offset.y;
                    ui_motion::paint("pause_icon", pause_icon, 1., WHITE);
                    if ui.hit(
                        pause_button,
                        !paused.blocks()
                            && !battle_exit.blocks()
                            && navigation_action.is_none()
                            && fight.outcome == Outcome::Active
                            && hud_pose.buttons_ready,
                    ) {
                        paused.open(ui_now);
                    }
                    if !automated_capture && is_key_pressed(KeyCode::Escape) {
                        if paused.blocks() {
                            paused.close(ui_now);
                        } else if fight.outcome == Outcome::Active
                            && !battle_exit.blocks()
                            && navigation_action.is_none()
                        {
                            paused.open(ui_now);
                        }
                    }
                    let busy = presentation.busy(presentation_now)
                        || paused.blocks()
                        || battle_exit.blocks()
                        || pause_action.is_some()
                        || navigation_action.is_some();
                    if !busy
                        && (selected >= fight.heroes.len() || !fight.heroes[selected].can_act())
                    {
                        selected = fight
                            .heroes
                            .iter()
                            .position(|hero| hero.can_act())
                            .unwrap_or(0);
                    }
                    let mut pending = None;
                    let mut revive = None;
                    for (i, hero) in view.heroes.iter().enumerate() {
                        let y = 180. + i as f32 * 140.;
                        character(
                            &mut hat_art,
                            vec2(230., y),
                            Actor::Bird {
                                bird: hero.bird.expect("Party bird"),
                                hat: hero.hat,
                            },
                            hero.alive(),
                            presentation.active_source() == Some(Source::bird(i))
                                || (!busy && selected == i),
                            presentation.clip_for(Source::bird(i), presentation_now),
                        );
                        battle_label(&hero.name, vec2(98., y - 24.), 170., 20, INK, CREAM);
                        combat_health(
                            &mut health_displays,
                            Source::bird(i),
                            vec2(98., y),
                            hero,
                            presentation_now,
                            !automated_capture || hud_capture,
                        );
                        if hero.acted {
                            text("RESTING", 305., y, 17., INK);
                        }
                        if hero.effects.is_protected() {
                            text("SHIELD", 305., y + 20., 17., DARKGREEN);
                        }
                        if !hero.alive() && view.outcome == Outcome::Active {
                            let cost = epic_core::revival::SINGLE_BIRD_COST;
                            if ui.button(
                                Rect::new(35., y + 31., 160., 30.),
                                &format!("Revive / {cost} gold"),
                                !busy && profile.gold >= cost && fight.can_revive_bird(i),
                            ) {
                                revive = Some(i);
                            }
                        }
                        if ui.hit(Rect::new(175., y - 65., 120., 115.), hero.alive() && !busy) {
                            if mode == Mode::Support {
                                pending = Some(Action::Support(i));
                            } else if hero.can_act() {
                                selected = i;
                            }
                        }
                    }
                    for (i, enemy) in view.enemies.iter().enumerate() {
                        let position = enemy_position(i, view.enemies.len());
                        character(
                            &mut hat_art,
                            position,
                            Actor::Pig {
                                asset: PIGS[enemy.pig.expect("Encounter pig")].asset_id,
                            },
                            enemy.alive(),
                            false,
                            presentation.clip_for(Source::pig(i), presentation_now),
                        );
                    }
                    // Actor rigs can extend into neighboring rows. Draw all
                    // enemy health/status overlays after every enemy actor.
                    for (i, enemy) in view.enemies.iter().enumerate() {
                        let Vec2 { x, y } = enemy_position(i, view.enemies.len());
                        battle_label(&enemy.name, vec2(x, y + 47.), 185., 17, INK, CREAM);
                        combat_health(
                            &mut health_displays,
                            Source::pig(i),
                            vec2(x, y + 68.),
                            enemy,
                            presentation_now,
                            !automated_capture || hud_capture,
                        );
                        if enemy.effects.is_poisoned() {
                            text("POISON", x - 85., y - 35., 14., DARKGREEN);
                        }
                        if let Some(turns) = enemy.ai.charging_turns() {
                            text(&format!("CHARGING {turns}"), x - 55., y - 55., 14., ORANGE);
                        }
                        if enemy.effects.is_stunned() {
                            text("STUN", x - 85., y - 15., 14., PURPLE);
                        }
                        let vulnerability = enemy.effects.vulnerability();
                        if vulnerability > 0. {
                            battle_backdrop(x - 99., y + 88., 198., 20.);
                            text(
                                &format!("VULNERABLE +{vulnerability:.0}%"),
                                x - 85.,
                                y + 103.,
                                14.,
                                PURPLE,
                            );
                        }
                        if ui.hit(
                            Rect::new(x - 55., y - 45., 110., 120.),
                            enemy.alive() && !busy,
                        ) {
                            pending = match mode {
                                Mode::Attack => Some(Action::Attack(i)),
                                Mode::Support => None,
                            };
                        }
                    }
                    draw_flights(
                        &presentation,
                        presentation_now,
                        &hat_art,
                        &mut projectile_art,
                    );
                    let active = fight.outcome == Outcome::Active && !busy;
                    for (i, (label, value)) in [
                        ("Attack pig", Mode::Attack),
                        ("Support ally", Mode::Support),
                    ]
                    .iter()
                    .enumerate()
                    {
                        if ui.button(
                            Rect::new(95. + i as f32 * 310., 534., 285., 46.),
                            label,
                            active,
                        ) {
                            mode = *value;
                        }
                    }
                    let pepper = battle_hud::rage_hitbox(vec2(W, H), hud_pose);
                    if ui.hit(
                        pepper,
                        active && fight.rage >= 100 && hud_pose.buttons_ready,
                    ) {
                        pending = Some(Action::Pepper);
                    }
                    if let Some(target) = revive {
                        match fight.revive_bird(&mut profile, target) {
                            Ok(()) => {
                                changed = true;
                                presentation.enqueue(fight.take_presentation_events());
                                presentation.tick(presentation_now, hat_art.animations());
                                notice.clear();
                            }
                            Err(error) => notice = error.into(),
                        }
                    }
                    if active {
                        if let Some(action) = pending {
                            if let Err(error) = fight.act(selected, action) {
                                notice = error.into();
                            } else {
                                presentation.enqueue(fight.take_presentation_events());
                                presentation.tick(presentation_now, hat_art.animations());
                                mode = Mode::Attack;
                                notice.clear();
                            }
                        }
                    }
                    panel(35., 600., 405., 89.);
                    battle_hud::rage(
                        vec2(W, H),
                        view.rage as u16,
                        active && fight.rage >= 100 && hud_pose.buttons_ready,
                        pepper.contains(ui.pointer),
                        hud_pose,
                    );
                    let rage_label = format!("Rage pepper  {} / 100", view.rage);
                    text(
                        &rage_label,
                        W / 2. + hud_pose.rage_offset.x - measure_ui(&rage_label, 16).width / 2.,
                        711. + hud_pose.rage_offset.y,
                        16.,
                        INK,
                    );
                    if let Some(name) = presentation.active_name() {
                        text(name, 320., 119., 19., INK);
                    } else if active {
                        let hint = match mode {
                            Mode::Attack => "Choose a bird, then tap a pig.",
                            Mode::Support => "Tap the ally you want to protect.",
                        };
                        text(hint, 320., 119., 19., INK);
                    }
                    for (i, line) in view.log.iter().rev().take(3).rev().enumerate() {
                        wrapped_label(line, 237.5, 624. + i as f32 * 24., 375., 16., 1);
                    }
                    let victory_elapsed = victory_clock.observe(
                        fight.outcome == Outcome::Won && !presentation.busy(presentation_now),
                        ui_now,
                    );
                    #[cfg(not(target_arch = "wasm32"))]
                    let victory_elapsed = if automated_capture && !hud_capture {
                        2.
                    } else {
                        victory_elapsed
                    };
                    #[cfg(not(target_arch = "wasm32"))]
                    let victory_elapsed = if hud_capture {
                        match capture_index {
                            100 | 120 => 0.,
                            121 => 1. / 3.,
                            101 | 122 => 11. / 24.,
                            123 => 14. / 24.,
                            124 => 0.875,
                            125 => 1.,
                            104 => 0.75 + 1. / 12.,
                            105 => 1. + 1. / 12.,
                            106 => 1.25 + 1. / 12.,
                            102 | 103 | 107 => 2.,
                            _ => victory_elapsed,
                        }
                    } else {
                        victory_elapsed
                    };
                    if (fight.outcome == Outcome::Won || fight.outcome == Outcome::Lost)
                        && !presentation.busy(presentation_now)
                    {
                        draw_rectangle(0., 0., W, H, Color::new(0., 0., 0., 0.45));
                        let won = fight.outcome == Outcome::Won;
                        panel(
                            310.,
                            if won { 140. } else { 210. },
                            480.,
                            if won { 430. } else { 315. },
                        );
                        if won {
                            victory_stars::draw_header(victory_elapsed);
                        } else {
                            text("TRY ANOTHER STRATEGY", 345., 265., 32., INK);
                        }
                        text(
                            &if won {
                                if profile.experience.next_cost().is_some() {
                                    format!(
                                        "+{} gold / {} XP earned",
                                        fight.reward(),
                                        fight.experience_earned()
                                    )
                                } else {
                                    format!("+{} gold  /  Maximum level", fight.reward())
                                }
                            } else {
                                "Revive your party or return to camp.".into()
                            },
                            343.,
                            if won { 425. } else { 312. },
                            21.,
                            INK,
                        );
                        if won {
                            if let Some(score) = fight.result_score() {
                                victory_stars::draw(
                                    score.stars,
                                    victory_elapsed,
                                    vec2(550., 390.),
                                    0.65,
                                );
                                text(
                                    &format!(
                                        "{} / 3 stars  |  {} points",
                                        score.stars, score.points
                                    ),
                                    345.,
                                    455.,
                                    20.,
                                    Color {
                                        a: victory_stars::score_alpha(victory_elapsed),
                                        ..INK
                                    },
                                );
                            }
                        }
                        if !won {
                            let cost = profile.party_revive_cost();
                            let label = if cost == 0 {
                                "Revive party / FREE".into()
                            } else {
                                format!("Revive party / {cost} gold")
                            };
                            if ui.button(
                                Rect::new(345., 352., 410., 55.),
                                &label,
                                profile.gold >= cost,
                            ) {
                                match fight.revive_party(&mut profile) {
                                    Ok(()) => {
                                        changed = true;
                                        selected = 0;
                                        mode = Mode::Attack;
                                        presentation.enqueue(fight.take_presentation_events());
                                        presentation.tick(presentation_now, hat_art.animations());
                                        notice.clear();
                                    }
                                    Err(error) => notice = error.into(),
                                }
                            }
                        }
                        if ui.button(
                            Rect::new(345., if won { 490. } else { 442. }, 410., 55.),
                            if won {
                                "Spin & collect rewards"
                            } else {
                                "Return to camp"
                            },
                            true,
                        ) {
                            if won {
                                match fight.claim(&mut profile) {
                                    Ok(_) => {
                                        changed = true;
                                        map_page = profile.unlocked / 12;
                                        reward_page = 0;
                                        reward_started_at = get_time();
                                        reward_motion.reset();
                                        screen = Screen::Rewards;
                                    }
                                    Err(error) => notice = error.into(),
                                }
                            } else {
                                screen = Screen::Camp;
                            }
                        }
                    }
                } else {
                    screen = Screen::Map;
                }
            }
        }
        if screen == Screen::Battle && paused.blocks() {
            let caption = battle
                .as_ref()
                .map(|b| STAGE_NAMES[b.stage])
                .unwrap_or("Battle");
            toggle_music = paused.draw(&mut ui, vec2(W, H), ui_now, music.muted(), caption);
            if let Some(action) = paused.departure() {
                battle_exit.begin(
                    action,
                    ui_now,
                    hud_motion.pose(presentation_now, !automated_capture || hud_capture),
                );
            }
        }
        if let Some(fight) = battle.as_mut() {
            changed |= fight.settle_experience(&mut profile) > 0;
            changed |= fight.settle_mastery(&mut profile);
            presentation.enqueue(fight.take_presentation_events());
        }
        if let Some(action) = navigation_action {
            match action {
                pause::Action::Resume => {}
                pause::Action::Map => {
                    screen = Screen::Map;
                }
                pause::Action::Retry => {
                    if let Some(stage) = battle.as_ref().map(|b| b.stage) {
                        match Battle::new_with_seed(&profile, stage, get_time().to_bits()) {
                            Ok(fight) => {
                                presentation.reset(fight.snapshot());
                                health_displays.clear();
                                hud_motion.restart(fight.stage, fight.wave, presentation_now);
                                battle = Some(fight);
                                selected = 0;
                                mode = Mode::Attack;
                                notice.clear();
                            }
                            Err(error) => notice = error.into(),
                        }
                    }
                }
            }
            battle_exit.reset();
        }
        if changed {
            if let Err(error) = save(&profile) {
                notice = error.into();
            }
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_revival && capture_index == 5 {
            let hero = &battle.as_ref().unwrap().heroes[1];
            assert!(hero.alive() && hero.hp == hero.max_hp);
            assert_eq!(
                presentation
                    .clip_for(Source::bird(1), presentation_now)
                    .unwrap()
                    .0,
                "KnockedOutEnd"
            );
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_party_revival && capture_index == 5 {
            let fight = battle.as_ref().unwrap();
            assert_eq!(fight.outcome, Outcome::Active);
            assert!(fight
                .heroes
                .iter()
                .all(|hero| hero.alive() && hero.hp == hero.max_hp && !hero.acted));
            assert!(profile.first_revive_used);
            for i in 0..fight.heroes.len() {
                assert_eq!(
                    presentation
                        .clip_for(Source::bird(i), presentation_now)
                        .unwrap()
                        .0,
                    "KnockedOutEnd"
                );
            }
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_score && capture_index == 6 {
            let score = battle.as_ref().unwrap().result_score().unwrap();
            assert_eq!(score.points, 24000);
            assert_eq!(score.stars, 3);
            assert_eq!(profile.stars[0], 3);
            assert_eq!(battle.as_ref().unwrap().outcome, Outcome::Claimed);
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && exercise_mastery && capture_index == 5 {
            let mastery = profile.mastery_for_bird(0).unwrap();
            assert_eq!((mastery.rank, mastery.points), (2, 0));
            let hero = &battle.as_ref().unwrap().heroes[0];
            assert_eq!(hero.mastery_rank, 2);
            assert_eq!(hero.max_hp, 150);
        }
        let music_id = match screen {
            Screen::Rewards => "music_battle_win",
            Screen::Camp | Screen::Equipment | Screen::Resources | Screen::Shop => "music_camp",
            Screen::Map => "music_worldmap",
            Screen::Battle => battle
                .as_ref()
                .map(|fight| {
                    if !presentation.busy(presentation_now) {
                        match fight.outcome {
                            Outcome::Won => return "music_battle_win",
                            Outcome::Lost => return "music_battle_lose",
                            Outcome::Active | Outcome::Claimed => {}
                        }
                    }
                    ENCOUNTERS[fight.stage].music_id
                })
                .unwrap_or("music_worldmap"),
        };
        music.request(music_id);
        if toggle_music
            || (screen != Screen::Battle
                && ui.button(Rect::new(920., 91., 165., 30.), music.label(), true))
            || (!automated_capture && is_key_pressed(KeyCode::M))
        {
            music.toggle();
            if let Ok(mut storage) = quad_storage::STORAGE.lock() {
                storage.set(
                    "epic-rust-music-muted",
                    if music.muted() { "1" } else { "0" },
                );
            }
        }
        if !notice.is_empty() {
            draw_rectangle(0., H - 27., W, 27., CREAM);
            text(&notice, 15., H - 8., 16., INK);
        }
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() && (9..=13).contains(&capture_index) {
            clear_background(CREAM);
            text("Recovered original animation clips", 30., 35., 26., INK);
            for (index, asset) in characters::asset_ids().enumerate() {
                let x = 90. + (index % 6) as f32 * 183.;
                let y = 118. + (index / 6) as f32 * 150.;
                assert!(hat_art.draw(&Actor::Pig { asset }, vec2(x, y), true));
                let width = measure_ui(asset, 15).width;
                text(asset, x - width / 2., y + 65., 15., INK);
            }
        }
        set_default_camera();
        clear_background(INK);
        draw_texture_ex(
            &target.texture,
            origin.x,
            origin.y,
            WHITE,
            DrawTextureParams {
                dest_size: Some(vec2(W * scale, H * scale)),
                flip_y: true,
                ..Default::default()
            },
        );
        next_frame().await;
        #[cfg(not(target_arch = "wasm32"))]
        if let Some(directory) = &capture_dir {
            if capture_index == 23 && !capture_opened_resources {
                assert!(
                    screen == Screen::Resources,
                    "Camp Inventory button must open resources"
                );
                capture_opened_resources = true;
                continue; // Render the destination after exercising the real button.
            }
            std::fs::create_dir_all(directory).expect("Create UI capture directory");
            target.texture.get_texture_data().export_png(
                directory
                    .join(format!("screen-{capture_index}.png"))
                    .to_str()
                    .expect("Capture filename"),
            );
            capture_index += 1;
            if capture_index == 15 || capture_index == 16 {
                assert_eq!(
                    presentation.view().enemies[0].hp,
                    10000,
                    "HP must wait for Impact"
                );
            }
            if capture_index == 17 {
                assert!(
                    presentation.view().enemies[0].hp < 10000,
                    "Impact must publish damage"
                );
            }
            if capture_index == 18 {
                assert!(
                    !presentation.busy(presentation_now),
                    "Queued attack must finish"
                );
            }
            if capture_index == 20 {
                assert_eq!(
                    presentation.flights(presentation_now).count(),
                    0,
                    "No arrow before launch cue"
                );
            }
            if capture_index == 21 {
                assert_eq!(
                    presentation.flights(presentation_now).count(),
                    1,
                    "Original arrow visible during flight"
                );
            }
            if capture_index == 22 {
                assert_eq!(
                    presentation.flights(presentation_now).count(),
                    0,
                    "Arrow expires after travel"
                );
                if exercise_save {
                    assert_eq!(profile.gold, 350, "Shop purchase should deduct 150 gold");
                    assert_eq!(HATS[profile.equipped[0]].id, "skin_eliteknight");
                    assert!(
                        music.muted(),
                        "Music button should mute and preserve the preference"
                    );
                }
            }
            if matches!(capture_index, 32 | 36) {
                assert_eq!(
                    presentation.flights(presentation_now).count(),
                    0,
                    "No player projectile before its cue"
                );
            }
            if matches!(capture_index, 33 | 37) {
                let flight = presentation
                    .flights(presentation_now)
                    .next()
                    .expect("Player projectile in native capture");
                assert_eq!(flight.source, Source::bird(0));
                assert_eq!(
                    flight.projectile.id,
                    if capture_index == 33 {
                        "Projectile_BlackBird_Bomb_02"
                    } else {
                        "Projectile_BlueBirds_Bow_01"
                    }
                );
            }
            if matches!(capture_index, 34 | 38) {
                assert_eq!(
                    presentation.flights(presentation_now).count(),
                    0,
                    "Player projectile expires after original travel duration"
                );
            }
            if capture_index == 40 {
                assert_eq!(
                    presentation
                        .view()
                        .heroes
                        .iter()
                        .map(|hero| hero.hp)
                        .collect::<Vec<_>>(),
                    vec![528, 1000, 428]
                );
            }
            if capture_index == 41 {
                assert!(presentation.view().enemies[0].effects.is_stunned());
            }
            if capture_index == 42 {
                let enemies = &presentation.view().enemies;
                assert!(enemies.iter().all(|enemy| enemy.hp == 9950));
                assert_eq!(enemies[0].effects.vulnerability(), 0.);
                assert_eq!(enemies[1].effects.vulnerability(), 25.);
            }
            if (43..=46).contains(&capture_index) {
                let expected = match capture_index {
                    43 => 9740,
                    44 => 9610,
                    45 => 9820,
                    _ => 9730,
                };
                assert_eq!(
                    presentation.view().enemies[0].hp,
                    expected,
                    "Conditional class damage in native UI"
                );
                assert_eq!(presentation.view().enemies[1].hp, 10000);
            }
            if capture_index == 47 {
                assert_eq!(
                    battle.as_ref().unwrap().rage,
                    50,
                    "Partial pepper must reject input"
                );
                assert!(!presentation.busy(presentation_now));
            }
            if capture_index == 48 {
                assert_eq!(presentation.view().rage, 100, "Ready pepper preview");
            }
            if capture_index == 49 {
                assert_eq!(
                    battle.as_ref().unwrap().rage,
                    0,
                    "Clicking the full pepper spends rage"
                );
                assert!(presentation.busy(presentation_now));
            }
            if capture_index == 50 {
                assert_eq!(
                    presentation.view().rage,
                    0,
                    "Settled pepper shows spent rage"
                );
                assert!(presentation
                    .view()
                    .enemies
                    .iter()
                    .any(|enemy| enemy.hp < 10000));
            }
            if capture_index == 51 {
                assert_eq!(presentation.view().heroes[0].hp, 0);
                assert_eq!(presentation.view().heroes[1].hp, 1);
                assert_eq!(presentation.view().enemies.len(), 6);
                assert_eq!(presentation.view().enemies[5].hp, 1000);
            }
            if capture_index == 52 && !hud_capture {
                assert_eq!(presentation.view().heroes[0].hp, 1000);
                assert_eq!(presentation.view().enemies[5].hp, 0);
                break;
            }
            if hud_capture {
                if matches!(capture_index, 68..=72) {
                    assert!(paused.blocks());
                }
                if capture_index == 70 {
                    let fight = battle.as_ref().unwrap();
                    assert_eq!(
                        fight.enemies[hud_target].hp, 1000,
                        "Paused background click must not attack"
                    );
                    assert!(fight.heroes.iter().all(|h| !h.acted));
                }
                if capture_index == 73 {
                    assert!(!paused.blocks(), "Continue closes pause");
                }
                if capture_index == 78 {
                    assert!(!paused.blocks());
                    assert!(
                        battle
                            .as_ref()
                            .unwrap()
                            .heroes
                            .iter()
                            .all(|h| h.hp == h.max_hp && !h.acted),
                        "Retry starts a fresh battle"
                    );
                }
                if capture_index == 81 {
                    assert_eq!(screen, Screen::Map, "Pause map button leaves battle");
                }
                if matches!(capture_index, 83 | 84) {
                    assert!(!paused.blocks(), "Entering pause button must reject input");
                    assert_eq!(
                        battle.as_ref().unwrap().rage,
                        100,
                        "Offscreen pepper must reject input"
                    );
                }
                if capture_index == 89 {
                    assert_eq!(
                        battle.as_ref().unwrap().rage,
                        0,
                        "Settled pepper accepts input after entry"
                    );
                }
                if capture_index == 90 {
                    assert_eq!(presentation.view().rage, 0);
                }
                if matches!(capture_index, 93 | 98) {
                    assert_eq!(screen, Screen::Battle, "Exit must not route early");
                    assert!(battle_exit.blocks());
                    assert!(!paused.blocks());
                    let fight = battle.as_ref().unwrap();
                    assert_eq!(
                        fight.enemies[0].hp, 1000,
                        "Background input blocked through HUD leave"
                    );
                    assert!(fight.heroes.iter().all(|h| h.hp == 400 && !h.acted));
                }
                if capture_index == 94 {
                    assert_eq!(screen, Screen::Map);
                    assert!(!battle_exit.blocks());
                }
                if capture_index == 99 {
                    assert!(!battle_exit.blocks());
                    assert!(
                        battle
                            .as_ref()
                            .unwrap()
                            .heroes
                            .iter()
                            .all(|h| h.hp == h.max_hp && !h.acted),
                        "Retry waits for HUD leave then starts fresh"
                    );
                }
                if (101..=108).contains(&capture_index) {
                    assert_eq!(screen, Screen::Battle);
                    assert_eq!(battle.as_ref().unwrap().outcome, Outcome::Won);
                    assert_eq!(
                        battle.as_ref().unwrap().result_score().unwrap().stars,
                        if capture_index <= 103 {
                            1
                        } else if capture_index == 104 {
                            2
                        } else {
                            3
                        }
                    );
                }
                if (109..=118).contains(&capture_index) {
                    assert_eq!(
                        screen,
                        Screen::Rewards,
                        "No early or background receipt navigation"
                    );
                    assert_eq!(battle.as_ref().unwrap().outcome, Outcome::Claimed);
                }
                if (109..=115).contains(&capture_index) {
                    assert!(
                        !reward_motion.leaving(),
                        "Entering receipt ignores early continue/header clicks"
                    );
                }
                if (116..=118).contains(&capture_index) {
                    assert!(reward_motion.leaving());
                }
                if capture_index == 117 {
                    let pose = reward_motion.pose(2.2, 32.1 + 1. / 12.);
                    assert!((pose.scale.x - 0.5).abs() < 0.0001);
                    assert!(!pose.controls_ready);
                }
                if matches!(capture_index, 119 | 120) {
                    assert_eq!(screen, Screen::Camp, "Camp follows completed wheel leave");
                    assert_eq!(battle.as_ref().unwrap().outcome, Outcome::Claimed);
                }
                if (121..=126).contains(&capture_index) {
                    assert_eq!(screen, Screen::Battle);
                    assert_eq!(battle.as_ref().unwrap().outcome, Outcome::Won);
                    assert_eq!(battle.as_ref().unwrap().result_score().unwrap().stars, 3);
                }
                if capture_index == 126 {
                    break;
                }
            }
        }
    }
}
