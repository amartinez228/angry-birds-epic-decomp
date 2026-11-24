//! Original defeat-loot sampling and once-only XP delivery at action boundaries.
//! Exact native callback order, level-up visuals and other resource persistence
//! remain unfinished. Gold follows the user's existing easier-gold override.
use crate::{
    loot::{self, LootItem, SeededLoot},
    Battle, Profile, PIGS,
};

#[derive(Clone, Debug)]
pub struct DefeatDrop {
    pub wave: u32,
    pub pig: usize,
    pub level: i32,
    pub items: Vec<LootItem>,
    pub bonus_xp: i32,
}

#[derive(Clone, Debug)]
pub(crate) struct DefeatRewards {
    pub drops: Vec<DefeatDrop>,
    pub xp_earned: u32,
    delivered: usize,
    pub(crate) mastery_delivered: usize,
    random: SeededLoot,
    bonus_given: bool,
}
impl DefeatRewards {
    pub fn new(seed: u64) -> Self {
        Self {
            drops: Vec::new(),
            xp_earned: 0,
            delivered: 0,
            mastery_delivered: 0,
            random: SeededLoot::new(seed),
            bonus_given: false,
        }
    }
}

impl Battle {
    pub(crate) fn collect_defeat_loot(&mut self) {
        let previous_count = self.defeat_rewards.drops.len();
        let wave_strength = self
            .enemies
            .iter()
            .map(|enemy| crate::scoring::PIG_STRENGTHS[enemy.pig.expect("Campaign pig")])
            .sum();
        let mut scored = Vec::new();
        for enemy in &mut self.enemies {
            if enemy.alive() || enemy.loot_rewarded {
                continue;
            }
            enemy.loot_rewarded = true;
            let pig = enemy.pig.expect("Campaign enemy has original pig identity");
            let level = enemy.level;
            scored.push(pig);
            let items = loot::pig_defeat(PIGS[pig].id, level, &mut self.defeat_rewards.random)
                .expect("Verified campaign defeat-loot graph");
            self.defeat_rewards.drops.push(DefeatDrop {
                wave: self.wave,
                pig,
                level,
                items,
                bonus_xp: 0,
            });
        }
        for pig in scored {
            self.score_pig_defeat(pig, wave_strength);
        }
        if self.defeat_rewards.drops.len() > previous_count
            && !self.defeat_rewards.bonus_given
            && self.wave == self.waves
            && self.enemies.iter().all(|enemy| !enemy.alive())
        {
            self.defeat_rewards.drops.last_mut().unwrap().bonus_xp =
                loot::battle_bonus_xp(crate::ENCOUNTERS[self.stage].battle_id);
            self.defeat_rewards.bonus_given = true;
        }
    }
    /// Apply each defeated pig's XP once, including on loss/retreat. Current
    /// client calls this after each core action; native coroutine timing and
    /// same-action kill order remain separate reconstruction work.
    pub fn settle_experience(&mut self, profile: &mut Profile) -> u32 {
        self.collect_defeat_loot();
        let previous_level = profile.level();
        let mut awarded = 0u32;
        for drop in &self.defeat_rewards.drops[self.defeat_rewards.delivered..] {
            if profile.experience.next_cost().is_some() {
                let base = drop
                    .items
                    .iter()
                    .find(|item| item.id == "experience")
                    .map_or(0, |item| item.value);
                let amount = loot::scaled_xp(base, profile.level() as i32, drop.level)
                    .wrapping_add(drop.bonus_xp)
                    .max(0) as u32;
                if amount > 0 {
                    profile.experience.grant(amount);
                }
                awarded = awarded.saturating_add(amount);
            }
        }
        self.defeat_rewards.delivered = self.defeat_rewards.drops.len();
        self.defeat_rewards.xp_earned = self.defeat_rewards.xp_earned.saturating_add(awarded);
        if profile.level() != previous_level {
            self.refresh_bird_stats(profile);
        }
        awarded
    }
    /// Original BaseCombatant reads base attack/health from its BirdGameData.
    /// model_LevelChanged invalidates modified stat caches with RaiseBuffsChanged;
    /// get_ModifiedHealth writes its recalculated unshielded maximum to current
    /// health. Knockout is independent of HP/level and still blocks participation.
    /// Keep this battle's skin, actions and effects while updating shared level.
    pub(crate) fn refresh_bird_stats(&mut self, profile: &Profile) {
        let level = profile.level();
        let mut changed = false;
        for hero in &mut self.heroes {
            let rank = profile
                .mastery_for_hat(hero.hat)
                .expect("Original class mastery")
                .rank;
            if hero.level == level as i32 && hero.mastery_rank == rank {
                continue;
            }
            changed = true;
            hero.knocked_out |= !hero.alive();
            let bird = hero.bird.expect("Bird combatant identity");
            let stats = profile
                .bird_stats_with_gear(bird, hero.hat, hero.gear.expect("Captured bird equipment"))
                .expect("Valid saved mastery rank");
            hero.level = level as i32;
            hero.mastery_rank = rank;
            hero.max_hp = (stats.health.round_ties_even() as i32).max(1);
            hero.attack = (stats.attack.round_ties_even() as i32).max(0);
            hero.hp = hero.max_hp;
        }
        if changed {
            self.trace_state();
        }
    }
    pub fn experience_earned(&self) -> u32 {
        self.defeat_rewards.xp_earned
    }
    /// XP and current-class mastery are settled separately. Original gold and
    /// special resource samples remain evidence for native inventory restoration.
    pub fn defeat_drops(&self) -> &[DefeatDrop] {
        &self.defeat_rewards.drops
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{progression::Experience, Action, Outcome, ENCOUNTERS};
    #[test]
    fn mid_battle_level_up_refills_hp_but_keeps_knockout_actions_and_effects() {
        let mut profile = Profile {
            unlocked: 3,
            experience: Experience {
                level: 1,
                points: 34,
            },
            ..Profile::default()
        };
        let mut battle = Battle::new_with_seed(&profile, 3, 17).unwrap();
        battle.heroes[0].hp = 71;
        battle.heroes[0].acted = true;
        battle.heroes[0].effects.apply(
            "level-test",
            crate::effects::Source::bird(0),
            3,
            crate::effects::EffectKind::AttackBonus(25.),
        );
        let effects = battle.heroes[0].effects.clone();
        battle.heroes[1].hp = 0;
        battle.heroes[2].hp = 22;
        battle.enemies[0].hp = 0;
        battle.resolve();
        assert_eq!(battle.outcome, Outcome::Active);
        battle.enable_presentation_trace();
        assert!((1..=2).contains(&battle.settle_experience(&mut profile)));
        assert_eq!(profile.level(), 2);
        assert_eq!(
            battle.heroes.iter().map(|hero| hero.hp).collect::<Vec<_>>(),
            battle
                .heroes
                .iter()
                .map(|hero| hero.max_hp)
                .collect::<Vec<_>>()
        );
        assert!(battle.heroes.iter().all(|hero| hero.level == 2));
        assert_eq!(
            (battle.heroes[0].max_hp, battle.heroes[0].attack),
            (127, 24)
        );
        assert_eq!(battle.heroes[0].attack_value(), 30);
        assert_eq!(battle.heroes[0].effects, effects);
        assert!(battle.heroes[0].acted);
        assert!(!battle.heroes[1].alive());
        assert_eq!(battle.heroes[2].level, 2);
        assert!(matches!(battle.take_presentation_events().last(),
            Some(crate::combat_events::CombatEvent::StateChanged(snapshot))
            if snapshot.heroes[0].max_hp == 127 && snapshot.heroes[0].hp == 127));
        assert_eq!(battle.settle_experience(&mut profile), 0);
        assert!(battle.take_presentation_events().is_empty());
    }
    #[test]
    fn level_up_uses_the_skin_captured_when_battle_started() {
        let mut profile = Profile {
            experience: Experience {
                level: 1,
                points: 34,
            },
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, 0).unwrap();
        let skin = battle.heroes[0].hat;
        let elite = crate::HATS
            .iter()
            .position(|hat| hat.id == "skin_eliteknight")
            .unwrap();
        profile.buy_and_equip(elite).unwrap();
        battle.enemies[0].hp = 0;
        battle.resolve();
        battle.settle_experience(&mut profile);
        assert_eq!(profile.level(), 2);
        assert_eq!(battle.heroes[0].hat, skin);
        assert_eq!(
            (battle.heroes[0].max_hp, battle.heroes[0].attack),
            (127, 24)
        );
        assert_ne!(profile.bird_stats(0).unwrap().health, 127.);
    }
    #[test]
    fn defeated_pig_xp_arrives_before_victory_and_cannot_be_claimed_twice() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = Battle::new_with_seed(&profile, 3, 17).unwrap();
        battle.enemies[0].hp = 1;
        battle.act(0, Action::Attack(0)).unwrap();
        assert_eq!(battle.outcome, Outcome::Active);
        let awarded = battle.settle_experience(&mut profile);
        assert!((1..=2).contains(&awarded));
        assert_eq!(profile.experience.points, awarded);
        assert_eq!(battle.settle_experience(&mut profile), 0);
        for hero in &mut battle.heroes {
            hero.hp = 0;
        }
        battle.resolve();
        assert_eq!(battle.outcome, Outcome::Lost);
        assert_eq!(battle.settle_experience(&mut profile), 0);
        assert_eq!(profile.experience.points, awarded);
    }
    #[test]
    fn unscaled_clear_bonus_survives_level_penalty_but_terminal_level_gets_no_xp() {
        for experience in [
            Experience {
                level: 99,
                points: 0,
            },
            Experience {
                level: 100,
                points: 0,
            },
        ] {
            let mut profile = Profile {
                experience,
                ..Profile::default()
            };
            let mut battle = Battle::new_with_seed(&profile, 0, 17).unwrap();
            battle.enemies[0].hp = 0;
            battle.resolve();
            assert_eq!(battle.settle_experience(&mut profile), 0);
            assert_eq!(profile.experience, experience);
            battle.enemies[1].hp = 0;
            battle.resolve();
            let expected = if experience.level == 99 { 5 } else { 0 };
            assert_eq!(battle.settle_experience(&mut profile), expected);
            assert_eq!(profile.experience.points, expected);
            assert_eq!(battle.defeat_drops().last().unwrap().bonus_xp, 5);
            assert_eq!(battle.settle_experience(&mut profile), 0);
            battle.claim(&mut profile).unwrap();
            assert_eq!(profile.experience.points, expected);
        }
    }
    #[test]
    fn wave_replacement_keeps_previous_drops_and_tracks_new_enemies_separately() {
        let stage = ENCOUNTERS.iter().position(|e| e.waves.len() > 1).unwrap();
        let mut profile = Profile {
            unlocked: stage,
            ..Profile::default()
        };
        let mut battle = Battle::new_with_seed(&profile, stage, 3).unwrap();
        let count = battle.enemies.len();
        for enemy in &mut battle.enemies {
            enemy.hp = 0;
        }
        battle.resolve();
        assert_eq!(battle.wave, 2);
        battle.settle_experience(&mut profile);
        assert_eq!(battle.defeat_drops().len(), count);
        assert!(battle.defeat_drops().iter().all(|drop| drop.wave == 1));
        assert!(battle.defeat_drops().iter().all(|drop| drop.bonus_xp == 0));
        battle.enemies[0].hp = 0;
        battle.collect_defeat_loot();
        assert_eq!(battle.defeat_drops().len(), count + 1);
        assert_eq!(battle.defeat_drops().last().unwrap().wave, 2);
    }
}
