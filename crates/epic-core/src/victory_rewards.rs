//! Base campaign wheel delivery. Bonus-wheel substitution, rerolls, additional
//! story loot, resource subtype callbacks/caps and equipment perks are pending.
use crate::{
    equipment::EQUIPMENT,
    loot::{self, LootItem, LootRandom},
    stats::EquipmentStats,
    Profile, ENCOUNTERS,
};

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct VictoryRewards {
    pub table: &'static str,
    pub start: usize,
    pub slot_count: usize,
    pub stars: u8,
    pub level: i32,
    pub items: Vec<LootItem>,
}

impl VictoryRewards {
    /// FinishBattlePlayerWin (40931.asm, 0x4fee54..0x4fee89) uses stars as
    /// amount and end-data level. All imported base roots have eight slots and
    /// no {levelrange} placeholder. Fail explicitly if future data differs.
    pub fn roll(
        stage: usize,
        stars: u8,
        level: i32,
        random: &mut impl LootRandom,
    ) -> Result<Self, &'static str> {
        if !(1..=3).contains(&stars) || level < 1 {
            return Err("Invalid victory stars or level");
        }
        let encounter = ENCOUNTERS.get(stage).ok_or("Unknown reward encounter")?;
        let battle = loot::BATTLE_LOOT
            .iter()
            .find(|row| row.id == encounter.battle_id)
            .ok_or("Missing battle rewards")?;
        let &[(id, _)] = battle.wheel else {
            return Err("Unsupported battle wheel roots");
        };
        if id.contains('{') {
            return Err("Wheel level-range substitution needs recovery");
        }
        let table = loot::TABLES
            .iter()
            .find(|row| row.id == id)
            .ok_or("Missing battle wheel")?;
        if !matches!(table.kind, 3 | 4) || table.entries.len() != 8 {
            return Err("Unsupported battle wheel");
        }
        // Native passes a newly built {tableName: 1} map; the configured root
        // map's amount does not replace the battle's performance star count.
        let rolled = loot::roll_with_wheel(id, stars as i32, level, None, random)
            .map_err(|_| "Battle wheel evaluation failed")?;
        Ok(Self {
            table: id,
            start: rolled.wheel_index.ok_or("Missing selected wheel slot")?,
            slot_count: table.entries.len(),
            stars,
            level,
            items: rolled.items,
        })
    }

    pub fn selected(&self, slot: usize) -> bool {
        slot < self.slot_count
            && (0..self.stars as usize)
                .any(|offset| (self.start + offset) % self.slot_count == slot)
    }

    /// Apply a complete receipt atomically. Identical equipment drops stay
    /// separate owned instances and never replace a chosen loadout.
    pub(crate) fn deposit(&self, profile: &mut Profile) -> Result<u32, &'static str> {
        let mut updated = profile.clone();
        let mut gold = 0u32;
        for item in &self.items {
            let amount = u32::try_from(item.value).map_err(|_| "Negative wheel reward")?;
            if amount == 0 {
                continue;
            }
            if item.id == "gold" {
                gold = gold.checked_add(amount).ok_or("Wheel gold overflow")?;
                updated.gold = updated.gold.checked_add(amount).ok_or("Gold wallet full")?;
            } else if EQUIPMENT.iter().any(|row| row.id == item.id) {
                let available = 4096usize.saturating_sub(updated.inventory.items().len());
                if amount as usize > available {
                    return Err("Equipment inventory is full");
                }
                for _ in 0..amount {
                    updated.inventory.add(
                        &item.id,
                        EquipmentStats {
                            level: item.level,
                            quality: item.quality,
                            ancient: item.ancient,
                            enchantment_level: 0,
                        },
                    )?;
                }
            } else {
                updated.resources.deposit(&item.id, amount, item.level)?;
            }
        }
        *profile = updated;
        Ok(gold)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{loot::SeededLoot, Battle, Outcome};

    fn won(profile: &Profile) -> Battle {
        let mut battle = Battle::new_with_seed(profile, 0, 7).unwrap();
        for enemy in &mut battle.enemies {
            enemy.hp = 0;
        }
        battle.resolve();
        assert_eq!(battle.outcome, Outcome::Won);
        battle
    }

    #[test]
    fn tutorial_three_stars_deliver_original_sword_vial_and_seashell_once() {
        let mut profile = Profile::default();
        let mut battle = won(&profile);
        assert_eq!(battle.claim(&mut profile), Ok(200));
        let receipt = battle.victory_rewards().unwrap();
        assert_eq!(
            (receipt.table, receipt.start, receipt.stars, receipt.level),
            ("battle_southbeach_01", 0, 3, 1)
        );
        assert!((0..3).all(|slot| receipt.selected(slot)));
        assert!(!receipt.selected(3));
        assert_eq!(profile.inventory.items().len(), 11);
        let gear = profile.inventory.items()[10];
        assert_eq!(
            EQUIPMENT[gear.definition].id,
            "bird_weapon_red_sword_introwheel"
        );
        assert_eq!(profile.inventory.hands(0), Some([0, 1]));
        assert_eq!(profile.resources.get("ingredient_vial").unwrap().value, 9);
        assert_eq!(profile.resources.get("resource_seashell").unwrap().value, 5);
        let claimed = profile.clone();
        assert!(battle.claim(&mut profile).is_err());
        assert_eq!(profile, claimed);
        assert_eq!(Profile::decode(&profile.encode()), Ok(claimed));
    }

    #[test]
    fn failure_keeps_entire_profile_and_victory_claimable_then_retries_same_roll() {
        let mut profile = Profile::default();
        profile
            .resources
            .deposit("ingredient_vial", u32::MAX - 8, 1)
            .unwrap();
        let mut battle = won(&profile);
        let before = profile.clone();
        assert!(battle.claim(&mut profile).is_err());
        assert_eq!(profile, before); // Includes gold, XP, stars and partial gear.
        assert_eq!(battle.outcome, Outcome::Won);
        assert!(battle.victory_rewards().is_none());
        profile.resources = crate::resources::Resources::starting();
        let mut retry = battle.clone();
        let mut other = profile.clone();
        assert_eq!(battle.claim(&mut profile), retry.claim(&mut other));
        assert_eq!(profile, other);
        assert_eq!(battle.victory_rewards(), retry.victory_rewards());
    }

    #[test]
    fn lost_and_active_battles_cannot_claim_and_replays_award_a_new_victory() {
        let mut profile = Profile::default();
        let mut battle = Battle::new(&profile, 0).unwrap();
        let before = profile.clone();
        assert!(battle.claim(&mut profile).is_err());
        battle.outcome = Outcome::Lost;
        assert!(battle.claim(&mut profile).is_err());
        assert_eq!(profile, before);
        won(&profile).claim(&mut profile).unwrap();
        won(&profile).claim(&mut profile).unwrap();
        assert_eq!(profile.inventory.items().len(), 12);
        assert_eq!(profile.stars[0], 3);
        assert_eq!(profile.resources.get("ingredient_vial").unwrap().value, 10);
    }

    #[test]
    fn victory_uses_level_after_xp_and_preserves_combat_rng_and_loadout_stats() {
        let mut profile = Profile::default();
        profile.experience.grant(34);
        let mut battle = won(&profile);
        let random = battle.rng_state;
        battle.claim(&mut profile).unwrap();
        assert_eq!(profile.level(), 2);
        assert_eq!(battle.victory_rewards().unwrap().level, 2);
        assert_eq!(profile.inventory.items()[10].state.level, 2);
        assert_eq!(battle.rng_state, random);
        assert_eq!(profile.inventory.hands(0), Some([0, 1]));
        assert_eq!(
            profile.bird_stats(0),
            profile.bird_stats_for_hat(0, battle.heroes[0].hat)
        );
    }

    #[test]
    fn full_gear_inventory_and_wallet_never_partially_pay_a_victory() {
        let mut profile = Profile::default();
        let id = EQUIPMENT[profile.inventory.items()[0].definition].id;
        while profile.inventory.items().len() < 4096 {
            profile
                .inventory
                .add(id, EquipmentStats::default())
                .unwrap();
        }
        let before = profile.clone();
        let mut battle = won(&profile);
        assert_eq!(
            battle.claim(&mut profile),
            Err("Equipment inventory is full")
        );
        assert_eq!(profile, before);
        assert_eq!(battle.outcome, Outcome::Won);
        let mut profile = Profile {
            gold: u32::MAX,
            ..Default::default()
        };
        let before = profile.clone();
        let mut battle = won(&profile);
        assert_eq!(battle.claim(&mut profile), Err("Gold wallet full"));
        assert_eq!(profile, before);
        assert_eq!(battle.outcome, Outcome::Won);
    }

    #[test]
    fn every_campaign_slot_and_star_count_resolves_and_deposits_known_items() {
        struct Slot(i32);
        impl LootRandom for Slot {
            fn value(&mut self) -> f32 {
                0.
            }
            fn range(&mut self, min: i32, max: i32) -> i32 {
                if min == 0 && max == 8 {
                    self.0
                } else {
                    min
                }
            }
        }
        for stage in 0..ENCOUNTERS.len() {
            for stars in 1..=3 {
                for start in 0..8 {
                    let rewards = VictoryRewards::roll(stage, stars, 1, &mut Slot(start)).unwrap();
                    let mut profile = Profile::default();
                    rewards.deposit(&mut profile).unwrap();
                    assert_eq!(
                        (0..8).filter(|&slot| rewards.selected(slot)).count(),
                        stars as usize
                    );
                }
            }
        }
        let mut rng = SeededLoot::new(3);
        assert!(VictoryRewards::roll(0, 0, 1, &mut rng).is_err());
        assert!(VictoryRewards::roll(0, 4, 1, &mut rng).is_err());
        assert!(VictoryRewards::roll(0, 1, 0, &mut rng).is_err());
        assert!(VictoryRewards::roll(usize::MAX, 1, 1, &mut rng).is_err());
    }
}
