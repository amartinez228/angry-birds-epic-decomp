//! Original non-PvP score arithmetic and highest-star campaign collection.
//! Summoning, NPC/banners, full native initiative/death timing, fractional HP
//! precision and star collections outside imported encounters remain unfinished.
use crate::{Battle, Outcome, Profile, ENCOUNTERS};

pub struct Settings {
    pub score_per_star: i32,
    pub full_birds: i32,
    pub full_pigs: i32,
    pub loss_per_turn_percent: i32,
    pub minimum_bird_percent: i32,
    pub minimum_pig_percent: i32,
    pub per_strength: i32,
    pub per_bird: i32,
}
pub struct Definition {
    pub id: &'static str,
    pub strategy: u32,
    pub bonus: i32,
}
include!("scoring_generated.rs");

#[derive(Clone, Debug, Default)]
pub(crate) struct Ledger {
    pub wave_turn: i32,
    pub strength: i32,
    pub pig_points: i32,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct ResultScore {
    pub points: i32,
    pub per_star: i32,
    pub stars: u8,
}

fn definition(stage: usize) -> &'static Definition {
    &BATTLES[stage]
}

pub fn pig_points(strategy: u32, strength: i32, wave_strength: i32, wave_turn: i32) -> i32 {
    let loss = SETTINGS.loss_per_turn_percent.wrapping_mul(wave_turn);
    let ratio =
        (100i32.wrapping_sub(loss) as f32 / 100.).max(SETTINGS.minimum_pig_percent as f32 / 100.);
    // Preserve native single-precision operation order before truncation.
    match strategy {
        0 if wave_strength > 0 => {
            (SETTINGS.full_pigs as f32 * ((ratio * strength as f32) / wave_strength as f32)) as i32
        }
        1 => (ratio * (SETTINGS.per_strength as f32 * strength as f32)) as i32,
        _ => 0,
    }
}

pub fn bird_points(strategy: u32, health: i32, maximum: i32, birds: usize) -> i32 {
    if maximum <= 0 || birds == 0 {
        return 0;
    }
    let ratio = (health as f32 / maximum as f32).max(SETTINGS.minimum_bird_percent as f32 / 100.);
    match strategy {
        0 => (ratio * (SETTINGS.full_birds as f32 / birds as f32) as i32 as f32) as i32,
        1 => (ratio * SETTINGS.per_bird as f32) as i32,
        _ => 0,
    }
}

pub fn stars_for_score(points: i32, per_star: i32) -> u8 {
    // EvaluateBattlePerformance tests >= 3T, then >= 2T, and clamps to at least1.
    if points >= per_star.saturating_mul(3) {
        3
    } else if points >= per_star.saturating_mul(2) {
        2
    } else {
        1
    }
}

impl Battle {
    pub(crate) fn score_pig_defeat(&mut self, pig: usize, wave_strength: i32) {
        let strength = PIG_STRENGTHS[pig];
        let points = pig_points(
            definition(self.stage).strategy,
            strength,
            wave_strength,
            self.scoring.wave_turn,
        );
        self.scoring.strength = self.scoring.strength.wrapping_add(strength);
        self.scoring.pig_points = self.scoring.pig_points.wrapping_add(points);
    }
    pub fn result_score(&self) -> Option<ResultScore> {
        if !matches!(self.outcome, Outcome::Won | Outcome::Claimed) {
            return None;
        }
        let row = definition(self.stage);
        let maximum_birds = if row.strategy == 1 {
            (SETTINGS.per_bird as f32 * self.heroes.len() as f32) as i32
        } else {
            SETTINGS.full_birds
        };
        let per_star = if row.strategy == 1 {
            self.scoring
                .strength
                .wrapping_mul(SETTINGS.per_strength)
                .wrapping_add(maximum_birds)
                / 4
        } else {
            SETTINGS.score_per_star
        };
        let mut points = self.scoring.pig_points.wrapping_add(row.bonus);
        for hero in self.heroes.iter().filter(|hero| hero.alive()) {
            points = points.wrapping_add(bird_points(
                row.strategy,
                hero.hp,
                hero.max_hp,
                self.heroes.len(),
            ));
        }
        if row.strategy == 1 {
            points = points.min(per_star.wrapping_mul(4));
        }
        Some(ResultScore {
            points,
            per_star,
            stars: stars_for_score(points, per_star),
        })
    }
}

impl Profile {
    pub fn collected_stars(&self) -> u32 {
        self.stars.iter().map(|&stars| stars as u32).sum()
    }
    pub fn mastery_badge_available(&self) -> bool {
        self.collected_stars() >= crate::mastery::UNLOCK_STARS
    }
    pub(crate) fn encode_stars(&self) -> String {
        let rows: Vec<_> = self
            .stars
            .iter()
            .enumerate()
            .filter(|(_, stars)| **stars > 0)
            .map(|(index, stars)| format!("{}={stars}", ENCOUNTERS[index].id))
            .collect();
        if rows.is_empty() {
            "-".into()
        } else {
            rows.join(",")
        }
    }
    pub(crate) fn decode_stars(text: &str) -> Result<[u8; ENCOUNTERS.len()], &'static str> {
        let mut result = [0; ENCOUNTERS.len()];
        if text == "-" {
            return Ok(result);
        }
        for row in text.split(',') {
            let (id, stars) = row.split_once('=').ok_or("Invalid saved stars")?;
            let index = ENCOUNTERS
                .iter()
                .position(|encounter| encounter.id == id)
                .ok_or("Unknown star encounter")?;
            let stars: u8 = stars.parse().map_err(|_| "Invalid star number")?;
            if !(1..=3).contains(&stars) || result[index] != 0 {
                return Err("Invalid or repeated star record");
            }
            result[index] = stars;
        }
        Ok(result)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn original_pig_wave_round_penalty_and_health_minimum_use_truncation() {
        assert_eq!(pig_points(0, 2, 6, 0), 10000);
        assert_eq!(pig_points(0, 2, 6, 5), 7500);
        assert_eq!(pig_points(0, 2, 6, 100), 2500);
        assert_eq!(pig_points(1, 3, 6, 0), 6000);
        assert_eq!(pig_points(1, 3, 6, 5), 4500);
        assert_eq!(pig_points(1, 3, 6, 100), 1500);
        assert_eq!(bird_points(0, 120, 120, 3), 10000);
        assert_eq!(bird_points(0, 1, 120, 3), 5000);
        assert_eq!(bird_points(1, 1, 120, 1), 5000);
    }
    #[test]
    fn star_thresholds_are_inclusive_and_clamped_from_one_to_three() {
        for (points, stars) in [
            (-1, 1),
            (0, 1),
            (29999, 1),
            (30000, 2),
            (44999, 2),
            (45000, 3),
            (60000, 3),
        ] {
            assert_eq!(stars_for_score(points, 15000), stars);
        }
    }
    fn win(battle: &mut Battle) {
        for enemy in &mut battle.enemies {
            enemy.hp = 0;
        }
        battle.resolve();
        assert_eq!(battle.outcome, Outcome::Won);
    }
    #[test]
    fn starter_strength_score_and_highest_star_replay_collection_are_persisted_once() {
        let mut profile = Profile::default();
        let mut first = Battle::new(&profile, 0).unwrap();
        assert!(first.result_score().is_none());
        win(&mut first);
        assert_eq!(
            first.result_score(),
            Some(ResultScore {
                points: 24000,
                per_star: 6000,
                stars: 3
            })
        );
        first.claim(&mut profile).unwrap();
        assert_eq!(profile.collected_stars(), 3);
        assert!(first.claim(&mut profile).is_err());
        assert_eq!(profile.collected_stars(), 3);
        let mut replay = Battle::new(&profile, 0).unwrap();
        replay.scoring.wave_turn = 100;
        replay.heroes[0].hp = 1;
        win(&mut replay);
        assert_eq!(replay.result_score().unwrap().stars, 1);
        replay.claim(&mut profile).unwrap();
        assert_eq!(profile.stars[0], 3);
        assert_eq!(profile.collected_stars(), 3);
        assert_eq!(Profile::decode(&profile.encode()).unwrap(), profile);
    }
    #[test]
    fn dead_birds_do_not_receive_the_survivor_health_score() {
        let stage = BATTLES
            .iter()
            .enumerate()
            .position(|(index, row)| {
                row.strategy == 0
                    && row.bonus == 0
                    && ENCOUNTERS[index].max_birds == 3
                    && ENCOUNTERS[index].waves.len() == 1
            })
            .unwrap();
        let profile = Profile {
            unlocked: stage,
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, stage).unwrap();
        battle.heroes[1].damage(10000);
        battle.heroes[2].damage(10000);
        win(&mut battle);
        let pig = battle.scoring.pig_points;
        assert_eq!(battle.result_score().unwrap().points, pig + 10000);
    }
    #[test]
    fn wave_replacement_resets_wave_round_without_resetting_earned_score() {
        let stage = ENCOUNTERS
            .iter()
            .position(|row| row.waves.len() > 1)
            .unwrap();
        let profile = Profile {
            unlocked: stage,
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, stage).unwrap();
        battle.scoring.wave_turn = 5;
        for enemy in &mut battle.enemies {
            enemy.hp = 0;
        }
        battle.resolve();
        assert_eq!(battle.wave, 2);
        assert_eq!(battle.scoring.wave_turn, 0);
        let points = battle.scoring.pig_points;
        assert!(points > 0);
        battle.collect_defeat_loot();
        assert_eq!(battle.scoring.pig_points, points);
    }
    #[test]
    fn v5_migration_and_strict_star_records_preserve_entitlement_and_progress() {
        let profile = Profile {
            first_revive_used: true,
            ..Profile::default()
        };
        let mut lines: Vec<_> = profile.encode().lines().map(str::to_owned).collect();
        lines.truncate(9);
        lines[0] = "EPIC_RUST_5".into();
        assert_eq!(Profile::decode(&lines.join("\n")).unwrap(), profile);
        let mut lines: Vec<_> = profile.encode().lines().map(str::to_owned).collect();
        for invalid in [
            "",
            "bad=1",
            "hotspot_002_battleground=0",
            "hotspot_002_battleground=4",
            "hotspot_002_battleground=3,hotspot_002_battleground=1",
        ] {
            lines[9] = invalid.into();
            assert!(Profile::decode(&lines.join("\n")).is_err());
        }
    }
    #[test]
    fn hundred_star_mastery_gate_uses_best_star_collection() {
        let mut profile = Profile::default();
        for stars in &mut profile.stars[..33] {
            *stars = 3;
        }
        assert_eq!(profile.collected_stars(), 99);
        assert!(!profile.mastery_badge_available());
        profile.stars[33] = 1;
        assert_eq!(profile.collected_stars(), 100);
        assert!(profile.mastery_badge_available());
    }
}
