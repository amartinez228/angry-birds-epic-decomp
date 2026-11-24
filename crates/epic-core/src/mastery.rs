//! Original class mastery with gated current-party rewards and shared skin ranks.
//! Native inventory, other reward scopes/fallbacks, guest NPC participation,
//! exact rank/cache callbacks and original rank-up presentation remain unfinished.
use crate::{Battle, Profile, HATS};

pub struct ClassDefinition {
    pub id: &'static str,
    pub restricted_bird: &'static str,
    pub mastery_item: &'static str,
}
pub struct MasteryItem {
    pub id: &'static str,
    pub scope: &'static str,
}
include!("mastery_generated.rs");

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Progress {
    pub rank: u32,
    pub points: i32,
}
impl Default for Progress {
    fn default() -> Self {
        Self { rank: 1, points: 0 }
    }
}
impl Progress {
    /// MasteryNeededForNextRank uses the current rank's Level_XX row.
    /// Native rank zero has a ten-million-point sentinel; at maximum it returns
    /// i32::MAX. Normal owned classes start at rank one.
    pub fn cost(&self) -> i32 {
        if self.rank == 0 {
            10_000_000
        } else if self.rank >= COSTS.len() as u32 {
            i32::MAX
        } else {
            COSTS[self.rank as usize - 1]
        }
    }
    /// AddMastery requires the unlock badge. Unlike player XP, mastery repeats
    /// the threshold loop, recomputes the next cost after every rank, carries
    /// residual points and clears residual points on reaching the maximum.
    /// Amount/value use native signed 32-bit addition, without rank-down logic.
    pub fn add(&mut self, amount: i32, badge_unlocked: bool) -> Result<u32, &'static str> {
        if self.rank > COSTS.len() as u32 {
            return Err("Unsupported mastery rank");
        }
        if !badge_unlocked {
            return Ok(0);
        }
        let previous = self.rank;
        self.points = self.points.wrapping_add(amount);
        while self.rank < COSTS.len() as u32 && self.points >= self.cost() {
            self.points = self.points.wrapping_sub(self.cost()).max(0);
            self.rank += 1;
        }
        if self.rank == COSTS.len() as u32 {
            self.points = 0;
        }
        Ok(self.rank - previous)
    }
}

impl Profile {
    pub fn mastery_for_hat(&self, hat: usize) -> Option<Progress> {
        let id = HATS.get(hat)?.class_id;
        let index = CLASSES.iter().position(|class| class.id == id)?;
        Some(self.mastery[index])
    }
    pub fn mastery_for_bird(&self, bird: usize) -> Option<Progress> {
        self.mastery_for_hat(*self.equipped.get(bird)?)
    }
    fn owns_class(&self, id: &str) -> bool {
        HATS.iter()
            .zip(self.owned)
            .any(|(hat, owned)| owned && hat.class_id == id)
    }
    pub(crate) fn encode_mastery(&self) -> String {
        let entries: Vec<_> = CLASSES
            .iter()
            .zip(self.mastery)
            .filter(|(_, progress)| *progress != Progress::default())
            .map(|(class, progress)| format!("{}={}:{}", class.id, progress.rank, progress.points))
            .collect();
        if entries.is_empty() {
            "-".into()
        } else {
            entries.join(",")
        }
    }
    pub(crate) fn decode_mastery(
        text: &str,
        owned: &[bool; HATS.len()],
    ) -> Result<[Progress; CLASSES.len()], &'static str> {
        let mut result = [Progress::default(); CLASSES.len()];
        let mut seen = [false; CLASSES.len()];
        if text == "-" {
            return Ok(result);
        }
        for entry in text.split(',') {
            let (id, state) = entry
                .split_once('=')
                .ok_or("Invalid class mastery record")?;
            let index = CLASSES
                .iter()
                .position(|class| class.id == id)
                .ok_or("Unknown mastery class")?;
            let (rank, points) = state.split_once(':').ok_or("Invalid mastery state")?;
            let progress = Progress {
                rank: rank.parse().map_err(|_| "Invalid mastery rank")?,
                points: points.parse().map_err(|_| "Invalid mastery points")?,
            };
            let valid_rank = (1..=COSTS.len() as u32).contains(&progress.rank);
            if seen[index]
                || !valid_rank
                || progress.points < 0
                || (progress.rank == 100 && progress.points != 0)
                || (progress.rank < 100 && progress.points >= progress.cost())
                || !HATS
                    .iter()
                    .zip(owned)
                    .any(|(hat, owned)| *owned && hat.class_id == id)
            {
                return Err("Invalid, repeated or unowned class mastery");
            }
            seen[index] = true;
            result[index] = progress;
        }
        Ok(result)
    }
}

impl Battle {
    /// Apply original current-party mastery drops once, even before loss/retreat.
    /// Locked drops are consumed without banking them for the later star unlock.
    /// Delivery remains at the core action boundary; exact native callback,
    /// cache-invalidation and rank-up presentation timing remain unfinished.
    pub fn settle_mastery(&mut self, profile: &mut Profile) -> bool {
        self.collect_defeat_loot();
        let mut changed = false;
        if profile.mastery_badge_available() {
            let recipients = current_recipients("mastery_current", self)
                .expect("Original current mastery scope");
            for drop in &self.defeat_rewards.drops[self.defeat_rewards.mastery_delivered..] {
                for item in drop
                    .items
                    .iter()
                    .filter(|item| item.id == "mastery_current" && item.value > 0)
                {
                    for &id in &recipients {
                        let index = CLASSES
                            .iter()
                            .position(|class| class.id == id)
                            .expect("Original current class");
                        // Native AddMastery(c) resolves its owner from RestrictedBirdId.
                        // Preserve legacy empty restrictions rather than invent an owner.
                        if !profile.owns_class(id)
                            || !crate::stats::BIRDS
                                .iter()
                                .any(|bird| bird.id == CLASSES[index].restricted_bird)
                        {
                            continue;
                        }
                        let before = profile.mastery[index];
                        profile.mastery[index]
                            .add(item.value, true)
                            .expect("Validated saved mastery");
                        changed |= profile.mastery[index] != before;
                    }
                }
            }
        }
        self.defeat_rewards.mastery_delivered = self.defeat_rewards.drops.len();
        if changed {
            self.refresh_bird_stats(profile);
        }
        changed
    }
}

/// OnAddMasteryItem's current scope selects faction-zero participants and
/// excludes ICharacter.IsNPC. Current imported party birds are all non-NPC;
/// the live fighter participation model excludes defeated/knocked-out birds.
/// Returns one class per participant, preserving order rather than splitting
/// the drop among the party. Other scopes/fallback remain explicit future work.
pub fn current_recipients(item: &str, battle: &Battle) -> Result<Vec<&'static str>, &'static str> {
    let item = ITEMS
        .iter()
        .find(|row| row.id == item)
        .ok_or("Unknown mastery item")?;
    if item.scope != "current" {
        return Err("Mastery scope integration unfinished");
    }
    Ok(battle
        .heroes
        .iter()
        .filter(|hero| hero.alive())
        .map(|hero| HATS[hero.hat].class_id)
        .collect())
}

#[cfg(test)]
mod tests {
    use super::*;
    fn unlock(profile: &mut Profile) {
        profile.stars[..33].fill(3);
        profile.stars[33] = 1;
    }
    fn with_one_mastery_drop(profile: &Profile, stage: usize) -> Battle {
        for seed in 0..200 {
            let mut battle = Battle::new_with_seed(profile, stage, seed).unwrap();
            battle.enemies[0].hp = 0;
            battle.resolve();
            let amount: i32 = battle
                .defeat_drops()
                .iter()
                .flat_map(|drop| &drop.items)
                .filter(|item| item.id == "mastery_current")
                .map(|item| item.value)
                .sum();
            if amount == 1 {
                return battle;
            }
        }
        panic!("Expected a bundled one-point mastery drop");
    }
    #[test]
    fn live_mastery_rank_up_updates_stats_persists_and_is_shared_across_skin_variants() {
        let mut profile = Profile::default();
        unlock(&mut profile);
        let knight = CLASSES
            .iter()
            .position(|class| class.id == "class_knight")
            .unwrap();
        profile.mastery[knight].points = 13;
        let mut battle = with_one_mastery_drop(&profile, 0);
        battle.heroes[0].hp = 40;
        assert!(battle.settle_mastery(&mut profile));
        assert_eq!(profile.mastery[knight], Progress { rank: 2, points: 0 });
        assert_eq!(
            (
                battle.heroes[0].mastery_rank,
                battle.heroes[0].max_hp,
                battle.heroes[0].hp
            ),
            (2, 122, 122)
        );
        assert!(!battle.settle_mastery(&mut profile));
        let elite = HATS
            .iter()
            .position(|hat| hat.id == "skin_eliteknight")
            .unwrap();
        profile.buy_and_equip(elite).unwrap();
        assert_eq!(
            profile.mastery_for_hat(elite),
            Some(Progress { rank: 2, points: 0 })
        );
        assert!((profile.bird_stats(0).unwrap().health - 134.64).abs() < 0.001);
        assert_eq!(Profile::decode(&profile.encode()).unwrap(), profile);
    }
    #[test]
    fn locked_drops_are_not_banked_until_the_hundred_star_unlock() {
        let mut profile = Profile::default();
        profile.stars[1..34].fill(3);
        assert_eq!(profile.collected_stars(), 99);
        let mut battle = with_one_mastery_drop(&profile, 0);
        for enemy in &mut battle.enemies {
            enemy.hp = 0;
        }
        battle.resolve();
        battle.claim(&mut profile).unwrap();
        assert!(profile.mastery_badge_available());
        assert_eq!(profile.mastery_for_bird(0), Some(Progress::default()));
        assert!(!battle.settle_mastery(&mut profile));
        let mut next = with_one_mastery_drop(&profile, 0);
        assert!(next.settle_mastery(&mut profile));
        assert_eq!(profile.mastery_for_bird(0).unwrap().points, 1);
    }
    #[test]
    fn current_mastery_excludes_knocked_out_birds_and_survives_loss_without_duplicates() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        unlock(&mut profile);
        let mut battle = with_one_mastery_drop(&profile, 3);
        battle.heroes[1].damage(10000);
        battle.heroes[1].hp = battle.heroes[1].max_hp;
        assert!(battle.settle_mastery(&mut profile));
        assert_eq!(profile.mastery_for_bird(0).unwrap().points, 1);
        assert_eq!(profile.mastery_for_bird(1).unwrap().points, 0);
        assert_eq!(profile.mastery_for_bird(2).unwrap().points, 1);
        for hero in &mut battle.heroes {
            hero.hp = 0;
        }
        battle.resolve();
        assert_eq!(battle.outcome, crate::Outcome::Lost);
        assert!(!battle.settle_mastery(&mut profile));
        assert_eq!(profile.mastery_for_bird(0).unwrap().points, 1);
    }
    #[test]
    fn v6_migration_and_v7_mastery_validation_preserve_existing_profile_data() {
        let mut profile = Profile {
            first_revive_used: true,
            ..Profile::default()
        };
        unlock(&mut profile);
        let mut old: Vec<_> = profile.encode().lines().map(str::to_owned).collect();
        old.truncate(10);
        old[0] = "EPIC_RUST_6".into();
        assert_eq!(Profile::decode(&old.join("\n")).unwrap(), profile);
        let index = CLASSES
            .iter()
            .position(|class| class.id == "class_knight")
            .unwrap();
        profile.mastery[index] = Progress { rank: 2, points: 6 };
        assert_eq!(Profile::decode(&profile.encode()).unwrap(), profile);
        let mut saved: Vec<_> = profile.encode().lines().map(str::to_owned).collect();
        for invalid in [
            "",
            "bad=1:0",
            "class_knight=0:0",
            "class_knight=101:0",
            "class_knight=2:28",
            "class_knight=1:-1",
            "class_knight=100:1",
            "class_knight=1:0,class_knight=1:0",
            "class_paladin=2:0",
        ] {
            saved[10] = invalid.into();
            assert!(Profile::decode(&saved.join("\n")).is_err());
        }
    }
    #[test]
    fn mastery_unlock_gate_and_multiple_rank_carryover_follow_original_costs() {
        let mut progress = Progress::default();
        assert_eq!(progress.cost(), 14);
        assert_eq!(progress.add(100, false).unwrap(), 0);
        assert_eq!(progress, Progress::default());
        assert_eq!(progress.add(100, true).unwrap(), 3);
        assert_eq!(
            progress,
            Progress {
                rank: 4,
                points: 10
            }
        );
        assert_eq!(progress.cost(), 66);
        assert_eq!(progress.add(-11, true).unwrap(), 0);
        assert_eq!(
            progress,
            Progress {
                rank: 4,
                points: -1
            }
        );
    }
    #[test]
    fn native_rank_zero_sentinel_and_terminal_residual_reset_are_preserved() {
        let mut zero = Progress { rank: 0, points: 0 };
        assert_eq!(zero.cost(), 10_000_000);
        assert_eq!(zero.add(10_000_001, true).unwrap(), 1);
        assert_eq!(zero, Progress { rank: 1, points: 1 });
        let mut last = Progress {
            rank: 99,
            points: 12_309,
        };
        assert_eq!(last.add(500, true).unwrap(), 1);
        assert_eq!(
            last,
            Progress {
                rank: 100,
                points: 0
            }
        );
        assert_eq!(last.cost(), i32::MAX);
        last.add(100, true).unwrap();
        assert_eq!(last.points, 0);
    }
    #[test]
    fn current_party_awards_use_captured_class_and_exclude_knocked_out_birds() {
        let mut profile = crate::Profile {
            unlocked: 3,
            ..crate::Profile::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        battle.heroes[1].damage(10000);
        battle.heroes[1].hp = battle.heroes[1].max_hp;
        profile
            .buy_and_equip(
                HATS.iter()
                    .position(|hat| hat.id == "skin_eliteknight")
                    .unwrap(),
            )
            .unwrap();
        assert_eq!(
            current_recipients("mastery_current", &battle).unwrap(),
            vec!["class_knight", "class_cleric"]
        );
        assert!(current_recipients("mastery_all", &battle).is_err());
        assert!(current_recipients("unknown", &battle).is_err());
    }
    #[test]
    fn every_hat_variant_uses_the_same_original_class_mastery_link() {
        assert_eq!(CLASSES.len(), 34);
        assert_eq!(ITEMS.len(), 47);
        for hat in HATS {
            let class = CLASSES
                .iter()
                .find(|class| class.id == hat.class_id)
                .unwrap();
            assert!(
                class.restricted_bird.is_empty()
                    || class.restricted_bird == crate::stats::BIRDS[hat.bird].id
            );
            assert!(ITEMS
                .iter()
                .any(|item| item.id == class.mastery_item && item.scope == class.id));
        }
    }
    #[test]
    fn recovered_mastery_rank_modifies_character_and_starter_gear_before_skin() {
        let red = &crate::stats::BIRDS[0];
        let skin = &HATS[crate::STARTER_HATS[0]];
        let mut progress = Progress::default();
        progress.add(14, true).unwrap();
        let stats = red
            .starter_stats_with_mastery(1, progress.rank as usize, skin)
            .unwrap();
        assert!((stats.health - 122.4).abs() < 0.0001);
        assert!((stats.attack - 23.46).abs() < 0.0001);
        assert!(red.starter_stats_with_mastery(1, 0, skin).is_none());
        assert!(red.starter_stats_with_mastery(1, 101, skin).is_none());
    }
}
