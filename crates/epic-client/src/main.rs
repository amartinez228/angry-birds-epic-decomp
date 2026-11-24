use epic_core::{
    Action, Battle, Outcome, Profile, BIRD_NAMES, ENCOUNTERS, HATS, PIGS, SKILLS, STAGE_NAMES,
};
use macroquad::prelude::*;
mod animation;
mod characters;
mod music;
mod presentation;
mod projectiles;
mod scenery;
use characters::{Actor, CharacterArt};
use epic_core::effects::{Side, Source};
use presentation::Presentation;

const W: f32 = 1100.;
const H: f32 = 720.;
const INK: Color = Color::new(0.11, 0.16, 0.22, 1.);
const CREAM: Color = Color::new(1., 0.96, 0.83, 1.);
const GOLD: Color = Color::new(1., 0.74, 0.16, 1.);
const GREEN: Color = Color::new(0.25, 0.55, 0.28, 1.);
include!("art_generated.rs");

thread_local! {
    static GAME_FONT: std::cell::RefCell<Option<Font>> = const { std::cell::RefCell::new(None) };
}

fn measure_ui(value: &str, size: u16) -> TextDimensions {
    GAME_FONT.with(|font| measure_text(value, font.borrow().as_ref(), size, 1.))
}

const SAVE_KEY: &str = "epic-rust-profile-v1";

#[derive(Clone, Copy, PartialEq)]
enum Screen {
    Map,
    Camp,
    Equipment,
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
        draw_rectangle(rect.x, rect.y + 4., rect.w, rect.h, INK);
        draw_rectangle(
            rect.x,
            rect.y,
            rect.w,
            rect.h,
            if !enabled {
                GRAY
            } else if hover {
                WHITE
            } else {
                GOLD
            },
        );
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
                font_size: size as u16,
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
    draw_rectangle(x + 3., y + 5., w, h, Color::new(0., 0., 0., 0.15));
    draw_rectangle(x, y, w, h, CREAM);
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
    draw_rectangle(
        x,
        y,
        width,
        height,
        Color::new(CREAM.r, CREAM.g, CREAM.b, 0.9),
    );
}

fn header(ui: &mut Ui, profile: &Profile, screen: &mut Screen) {
    text("EPIC / RUST", 35., 48., 35., INK);
    text("RECONSTRUCTION PROTOTYPE", 37., 72., 15., INK);
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
    draw_circle(925., 43., 17., GOLD);
    text(&profile.gold.to_string(), 950., 51., 27., INK);
    text(&format!("Level {}", profile.level()), 936., 77., 18., INK);
    text(
        &format!("Stars: {}", profile.collected_stars()),
        355.,
        96.,
        18.,
        INK,
    );
    if let Some(cost) = profile.experience.next_cost() {
        draw_rectangle(930., 133., 145., 8., CREAM);
        draw_rectangle(
            930.,
            133.,
            145. * (profile.experience.points as f32 / cost as f32).min(1.),
            8.,
            GOLD,
        );
        text(
            &format!("{} / {} XP", profile.experience.points, cost),
            930.,
            159.,
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
        window_title: "Epic Rust / Reconstruction Prototype".into(),
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
    let silent_capture =
        std::env::args().any(|arg| arg == "--capture-ui" || arg == "--capture-scenery");
    #[cfg(target_arch = "wasm32")]
    let silent_capture = false;
    let mut music = music::MusicPlayer::new(silent_capture, music_muted, get_time().to_bits());
    let mut shop_bird = 0usize;
    let mut shop_page = 0usize;
    let mut camp_slot = 0usize;
    let mut gear_bird = 0usize;
    let mut gear_page = 0usize;
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
            .find(|pair| pair[0] == "--capture-ui")
            .map(|pair| std::path::PathBuf::from(&pair[1]))
    };
    #[cfg(not(target_arch = "wasm32"))]
    let mut capture_index = 0usize;
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
        #[cfg(not(target_arch = "wasm32"))]
        let presentation_now = if capture_dir.is_some() {
            match capture_index {
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
                _ => 0.,
            }
        } else {
            get_time() as f32
        };
        #[cfg(target_arch = "wasm32")]
        let presentation_now = get_time() as f32;
        #[cfg(not(target_arch = "wasm32"))]
        if capture_dir.is_some() {
            let (clip, time) = match capture_index {
                10 => (None, 0.375),
                11 => (Some("Blink"), 0.125),
                12 => (Some("Action_Attack_1"), 0.375),
                13 => (Some("Defeated"), 999.),
                _ => (None, 0.),
            };
            hat_art.set_capture_time(Some(time));
            hat_art.set_capture_clip(clip);
            match capture_index {
                0 => screen = Screen::Map,
                1 => screen = Screen::Camp,
                22 => screen = Screen::Equipment,
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
        let scale = (screen_width() / W).min(screen_height() / H).max(0.001);
        let origin = vec2(
            (screen_width() - W * scale) / 2.,
            (screen_height() - H * scale) / 2.,
        );
        let (mx, my) = mouse_position();
        let mut ui = Ui {
            pointer: (vec2(mx, my) - origin) / scale,
            pressed: is_mouse_button_pressed(MouseButton::Left),
        };
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
            ui.pointer = vec2(550., 399.);
            ui.pressed = true;
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
        if screen != Screen::Battle {
            header(&mut ui, &profile, &mut screen);
        }
        let mut changed = false;
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
                    let number = (i + 1).to_string();
                    text(
                        &number,
                        position.x - measure_ui(&number, 28).width / 2.,
                        position.y + 6.,
                        28.,
                        INK,
                    );
                    let title = STAGE_NAMES[i];
                    let best = format!("{} / 3 stars", profile.stars[i]);
                    text(
                        &best,
                        position.x - measure_ui(&best, 14).width / 2.,
                        position.y - 45.,
                        14.,
                        INK,
                    );
                    wrapped_label(title, position.x, position.y + 58., 155., 17., 3);
                    if ui.hit(
                        Rect::new(position.x - 40., position.y - 40., 80., 85.),
                        unlocked,
                    ) {
                        match Battle::new_with_seed(&profile, i, get_time().to_bits()) {
                            Ok(value) => {
                                presentation.reset(value.snapshot());
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
                text("Change classes in the hat shop.", 310., 598., 23., INK);
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
                    let busy = presentation.busy(presentation_now);
                    battle_backdrop(25., 12., 840., 77.);
                    battle_backdrop(306., 94., 560., 34.);
                    let title_size =
                        (800. / measure_ui(STAGE_NAMES[fight.stage], 33).width * 33.).min(33.);
                    text(STAGE_NAMES[fight.stage], 40., 50., title_size, INK);
                    text(
                        &format!(
                            "Wave {}/{}  /  Round {}",
                            view.wave, fight.waves, view.round
                        ),
                        40.,
                        83.,
                        21.,
                        INK,
                    );
                    if ui.button(Rect::new(895., 28., 165., 42.), "Retreat", true) {
                        screen = Screen::Map;
                    }
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
                        battle_backdrop(35., y - 35., 137., 61.);
                        text(&hero.name, 50., y - 10., 23., INK);
                        text(
                            &format!("{}/{} HP", hero.hp, hero.max_hp),
                            50.,
                            y + 16.,
                            18.,
                            INK,
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
                        let x = if view.enemies.len() > 3 {
                            715. + (i / 3) as f32 * 230.
                        } else {
                            830.
                        };
                        let y = 168. + (i % 3) as f32 * 128.;
                        character(
                            &mut hat_art,
                            vec2(x, y),
                            Actor::Pig {
                                asset: PIGS[enemy.pig.expect("Encounter pig")].asset_id,
                            },
                            enemy.alive(),
                            false,
                            presentation.clip_for(Source::pig(i), presentation_now),
                        );
                        battle_backdrop(x - 99., y + 38., 198., 45.);
                        wrapped_label(&enemy.name, x, y + 57., 185., 17., 1);
                        let hp = format!("{} / {} HP", enemy.hp, enemy.max_hp);
                        let width = measure_ui(&hp, 16).width;
                        text(&hp, x - width / 2., y + 77., 16., INK);
                        if enemy.effects.is_poisoned() {
                            text("POISON", x - 85., y - 35., 14., DARKGREEN);
                        }
                        if let Some(turns) = enemy.ai.charging_turns() {
                            text(&format!("CHARGING {turns}"), x - 55., y - 55., 14., ORANGE);
                        }
                        if enemy.effects.is_stunned() {
                            text("STUN", x - 85., y - 15., 14., PURPLE);
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
                    battle_backdrop(428., 214., 214., 80.);
                    text(&format!("RAGE  {} / 100", view.rage), 448., 244., 25., INK);
                    draw_rectangle(440., 265., 190., 17., INK);
                    draw_rectangle(443., 268., 184. * view.rage as f32 / 100., 11., ORANGE);
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
                    if ui.button(
                        Rect::new(715., 534., 285., 46.),
                        "Rage pepper",
                        active && fight.rage >= 100,
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
                    panel(35., 600., 1030., 89.);
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
                        text(line, 52., 624. + i as f32 * 24., 18., INK);
                    }
                    if (fight.outcome == Outcome::Won || fight.outcome == Outcome::Lost)
                        && !presentation.busy(presentation_now)
                    {
                        draw_rectangle(0., 0., W, H, Color::new(0., 0., 0., 0.45));
                        let won = fight.outcome == Outcome::Won;
                        panel(310., 210., 480., if won { 270. } else { 315. });
                        text(
                            if won {
                                "VICTORY!"
                            } else {
                                "TRY ANOTHER STRATEGY"
                            },
                            345.,
                            265.,
                            32.,
                            INK,
                        );
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
                            312.,
                            21.,
                            INK,
                        );
                        if won {
                            if let Some(score) = fight.result_score() {
                                text(
                                    &format!(
                                        "{} / 3 stars  |  {} points",
                                        score.stars, score.points
                                    ),
                                    345.,
                                    345.,
                                    20.,
                                    INK,
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
                            Rect::new(345., if won { 372. } else { 442. }, 410., 55.),
                            if won {
                                "Collect & continue"
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
                                    }
                                    Err(error) => notice = error.into(),
                                }
                            }
                            screen = Screen::Camp;
                        }
                    }
                } else {
                    screen = Screen::Map;
                }
            }
        }
        if let Some(fight) = battle.as_mut() {
            changed |= fight.settle_experience(&mut profile) > 0;
            changed |= fight.settle_mastery(&mut profile);
            presentation.enqueue(fight.take_presentation_events());
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
            Screen::Camp | Screen::Equipment | Screen::Shop => "music_camp",
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
        if ui.button(Rect::new(920., 91., 165., 30.), music.label(), true)
            || is_key_pressed(KeyCode::M)
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
            if capture_index == 23 {
                break;
            }
        }
    }
}
