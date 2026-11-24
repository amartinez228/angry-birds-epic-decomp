//! Traced original bird/gear growth and mastery/skin stat composition.
//! Owned gear feeds profile stats; downstream fractional combat remains pending.
use crate::{
    equipment::{EquipmentDefinition, EQUIPMENT},
    Hat,
};

pub struct BirdDefinition {
    pub id: &'static str,
    pub base_health: i32,
    pub base_attack: i32,
    pub per_level_health_percent: i32,
    pub per_level_attack_percent: i32,
    pub main_hand: usize,
    pub off_hand: usize,
    pub inventory_initial_level: i32,
}
include!("stats_generated.rs");

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct EquipmentStats {
    pub level: i32,
    pub quality: u32,
    pub ancient: bool,
    pub enchantment_level: usize,
}
impl Default for EquipmentStats {
    fn default() -> Self {
        Self {
            level: 1,
            quality: 0,
            ancient: false,
            enchantment_level: 0,
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq)]
pub struct BaseStats {
    pub health: f32,
    pub attack: f32,
}

/// Native float operations followed by Mathf.Round's ties-to-even behavior.
/// BirdGameData CharacterAttack/Health and EquipmentGameData share this growth.
pub fn level_stat(base: i32, percent_per_level: i32, level: i32) -> f32 {
    let base = base as f32;
    let increment = (percent_per_level as f32 / 100.) * base;
    (level.wrapping_sub(1) as f32 * increment + base).round_ties_even()
}

impl EquipmentDefinition {
    /// EquipmentGameData.GetItemMainStat (0x6d3b8d). Quality percentage clamps
    /// to the last configured entry. Flat quality, rounded percentage quality
    /// and its minimum are separate additions; ancient precedes enchantment.
    pub fn main_stat(&self, state: EquipmentStats) -> Option<f32> {
        if state.level < 1 || state.quality > i32::MAX as u32 {
            return None;
        }
        let enchantment = *ENCHANTMENT_BONUSES.get(state.enchantment_level)?;
        let quality = state.quality as i32;
        let quality_percent = self
            .stat_per_quality_percent
            .get((quality as usize).min(self.stat_per_quality_percent.len().saturating_sub(1)))
            .copied()
            .unwrap_or(0);
        let base = level_stat(self.base_stat, self.stat_per_level, state.level);
        let per_quality = if quality > 0 {
            ((quality_percent as f32 / quality as f32) / 100.) * base
        } else {
            0.
        };
        let percentage_bonus = (per_quality * quality as f32).round_ties_even();
        let minimum = if quality_percent > 0 {
            quality as f32
        } else {
            0.
        };
        let flat = quality.wrapping_mul(self.stat_per_quality) as f32;
        let mut value = (base + flat) + percentage_bonus.max(minimum);
        if state.ancient {
            value += value * (ANCIENT_EQUIPMENT_BONUS / 100.);
        }
        if state.enchantment_level > 0 {
            value += value * (enchantment / 100.);
        }
        Some(value)
    }
}

impl crate::campaign::PigDefinition {
    /// Original CharacterAttack/CharacterHealth getters. Default equipment,
    /// class/skin, difficulty and power-level additions are separate native
    /// stages and still need integration for pigs.
    pub fn character_stats(&self, level: i32) -> BaseStats {
        BaseStats {
            health: level_stat(self.base_health, self.per_level_health, level),
            attack: level_stat(self.base_attack, self.per_level_attack, level),
        }
    }
}

impl BirdDefinition {
    pub fn base_stats(
        &self,
        level: i32,
        main_hand: f32,
        off_hand: f32,
        mastery_rank: usize,
        skin: &Hat,
    ) -> Option<BaseStats> {
        let mastery = *MASTERY_BONUSES.get(mastery_rank.checked_sub(1)?)? as f32;
        let attack = level_stat(self.base_attack, self.per_level_attack_percent, level) + main_hand;
        let health = level_stat(self.base_health, self.per_level_health_percent, level) + off_hand;
        let attack = attack + (mastery / 100.) * attack;
        let health = health + (mastery / 100.) * health;
        Some(BaseStats {
            attack: attack + (skin.bonus_damage_percent / 100.) * attack,
            health: health + (skin.bonus_hp_percent / 100.) * health,
        })
    }

    /// Original initial inventory totals, also used to verify old-save migration.
    /// Keep starter items at creation level as birds grow.
    pub fn starter_stats(&self, level: i32, skin: &Hat) -> BaseStats {
        self.starter_stats_with_mastery(level, 1, skin)
            .expect("Valid starting mastery")
    }

    /// Original class mastery multiplies the combined character/starter gear
    /// stats before skin bonuses; profiles pass their shared class mastery rank.
    pub fn starter_stats_with_mastery(
        &self,
        level: i32,
        mastery_rank: usize,
        skin: &Hat,
    ) -> Option<BaseStats> {
        let state = EquipmentStats {
            level: self.inventory_initial_level.max(1),
            ..EquipmentStats::default()
        };
        let main = EQUIPMENT[self.main_hand]
            .main_stat(state)
            .expect("Valid starter main hand");
        let off = EQUIPMENT[self.off_hand]
            .main_stat(state)
            .expect("Valid starter off hand");
        self.base_stats(level, main, off, mastery_rank, skin)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{HATS, STARTER_HATS};
    #[test]
    fn original_starter_hands_and_bird_bases_produce_original_level_one_totals() {
        let expected = [(120., 23.), (60., 34.), (93., 23.), (96., 37.), (76., 37.)];
        for (bird, (health, attack)) in expected.into_iter().enumerate() {
            assert_eq!(
                BIRDS[bird].starter_stats(1, &HATS[STARTER_HATS[bird]]),
                BaseStats { health, attack }
            );
        }
        assert_eq!(
            BIRDS[0].starter_stats(10, &HATS[STARTER_HATS[0]]),
            BaseStats {
                health: 185.,
                attack: 36.
            }
        );
    }
    #[test]
    fn native_growth_rounds_half_to_even_and_uses_percent_of_base() {
        assert_eq!(level_stat(18, 25, 2), 22.);
        assert_eq!(level_stat(18, 25, 4), 32.);
        assert_eq!(level_stat(7, 20, 10), 20.);
        assert_eq!(level_stat(-18, 25, 2), -22.);
    }
    #[test]
    fn gear_quality_clamps_and_ancient_then_enchantment_preserve_fractional_stats() {
        let shield = EQUIPMENT
            .iter()
            .find(|item| item.id == "bird_offhand_red_shield_start")
            .unwrap();
        let state = EquipmentStats {
            level: 2,
            quality: 3,
            ..EquipmentStats::default()
        };
        assert_eq!(shield.main_stat(state), Some(137.)); // 105 + round(31.5) = 137.
        assert_eq!(
            shield.main_stat(EquipmentStats {
                quality: 6,
                ..state
            }),
            Some(137.)
        );
        let enhanced = shield
            .main_stat(EquipmentStats {
                ancient: true,
                enchantment_level: 2,
                ..state
            })
            .unwrap();
        assert!((enhanced - 165.77).abs() < 0.0001);
        assert!(shield
            .main_stat(EquipmentStats {
                enchantment_level: 11,
                ..state
            })
            .is_none());
    }
    #[test]
    fn mastery_applies_to_both_character_and_gear_before_skin() {
        let mut skin = HATS[STARTER_HATS[0]];
        skin.bonus_hp_percent = 10.;
        skin.bonus_damage_percent = 20.;
        let stats = BIRDS[0].base_stats(1, 16., 84., 2, &skin).unwrap();
        assert!((stats.health - 134.64).abs() < 0.0001);
        assert!((stats.attack - 28.152).abs() < 0.0001);
        assert!(BIRDS[0].base_stats(1, 16., 84., 0, &skin).is_none());
    }

    #[test]
    fn every_original_gear_definition_has_finite_stats_across_supported_levels() {
        for item in &EQUIPMENT {
            for level in [1, 2, 10, 50, 100] {
                for quality in 0..=3 {
                    for enchantment_level in [0, 5, 10] {
                        let value = item
                            .main_stat(EquipmentStats {
                                level,
                                quality,
                                ancient: true,
                                enchantment_level,
                            })
                            .unwrap();
                        assert!(value.is_finite() && value >= 0., "{}", item.id);
                    }
                }
            }
        }
    }
}
