//! Original gear configuration and native projectile-asset selection.
//! Stat formulas live in stats, owned copies/loadouts in inventory. Acquisition,
//! perks and visual swaps are pending.

#[derive(Clone, Copy, Debug)]
pub struct EquipmentDefinition {
    pub id: &'static str,
    pub asset_base_id: &'static str,
    pub loca_base_id: &'static str,
    pub projectile_asset_id: &'static str,
    pub restricted_bird_id: &'static str,
    pub corresponding_set_item_id: &'static str,
    pub hit_effect_suffix: &'static str,
    pub set_item_skill: &'static str,
    pub pvp_set_item_skill: &'static str,
    pub item_type: i32,
    pub sort_priority: i32,
    pub base_stat: i32,
    pub stat_per_level: i32,
    pub stat_per_quality: i32,
    pub animation_index: i32,
    pub asset_level_offset: i32,
    pub asset_cycle_count: i32,
    pub main_source: i32,
    pub is_ranged: bool,
    pub direct_asset: bool,
    pub direct_projectile: bool,
    pub show_as_new: bool,
    pub hide_in_preview: bool,
    pub stat_per_quality_percent: &'static [i32],
    pub perk_wire_hex: &'static str,
}

#[derive(Clone, Copy, Debug)]
pub struct PigLoadout {
    pub pig_id: &'static str,
    pub main_hand: Option<usize>,
    pub off_hand: Option<usize>,
}

include!("equipment_generated.rs");

impl EquipmentDefinition {
    /// Traced EquipmentGameData.GetProjectileAssetId, x86 0x6d5818.
    /// Native code uses fixed periods (9 main-hand, 8 off-hand), independently
    /// of AssetCycleCount. Negative sentinel levels bypass numbered variants.
    /// Empty configured IDs are normalized to None (no loadable projectile).
    pub fn projectile_asset(&self, level: i32) -> Option<String> {
        if !self.is_ranged || self.projectile_asset_id.is_empty() {
            return None;
        }
        if self.direct_projectile || level < 0 || !matches!(self.item_type, 3 | 4) {
            return Some(self.projectile_asset_id.into());
        }
        let period = if self.item_type == 3 { 9 } else { 8 };
        let mut shifted = level.wrapping_add(self.asset_level_offset);
        if shifted <= 0 {
            shifted = shifted.wrapping_add(period * 3);
        }
        // Rust signed division/remainder truncate toward zero, as native C#.
        let variant = (shifted.wrapping_sub(1) / 3) % period + 1;
        Some(format!(
            "{}_{}{:02}",
            self.projectile_asset_id,
            if variant < 0 { "-" } else { "" },
            variant.abs()
        ))
    }
}

pub fn pig_loadout(pig_id: &str) -> Option<&'static PigLoadout> {
    PIG_LOADOUTS.iter().find(|item| item.pig_id == pig_id)
}

impl PigLoadout {
    /// CharacterAssetController.PlayAttackAnim, native 0x8b9188. Its main-hand
    /// absence branch uses Attack_1; use_offhandanim then chooses slot 10 vs 9.
    pub fn attack_animation_index(&self, use_offhand: bool) -> i32 {
        if self.main_hand.is_none() {
            return 1;
        }
        let selected = if use_offhand {
            self.off_hand
        } else {
            self.main_hand
        };
        selected
            .map(|index| EQUIPMENT[index].animation_index)
            .unwrap_or(1)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn item(id: &str) -> EquipmentDefinition {
        *EQUIPMENT.iter().find(|item| item.id == id).unwrap()
    }
    #[test]
    fn native_bomb_projectile_levels_cycle_every_three_levels_and_wrap_at_27() {
        let bomb = item("bird_weapon_black_bomb_01");
        for (level, suffix) in [
            (0, "09"),
            (1, "01"),
            (3, "01"),
            (4, "02"),
            (27, "09"),
            (28, "01"),
        ] {
            assert_eq!(
                bomb.projectile_asset(level).unwrap(),
                format!("Projectile_BlackBird_Bomb_{suffix}")
            );
        }
        assert_eq!(
            bomb.projectile_asset(-1).as_deref(),
            Some("Projectile_BlackBird_Bomb")
        );
    }
    #[test]
    fn direct_ids_and_nonprojectile_weapons_preserve_native_branches() {
        assert_eq!(
            item("pig_weapon_ninja_asian_bow_01")
                .projectile_asset(80)
                .as_deref(),
            Some("Projectile_NinjaPig_Arrow")
        );
        assert_eq!(item("bird_weapon_red_sword_01").projectile_asset(30), None);
        assert_eq!(
            item("bird_weapon_yellow_staff_start").projectile_asset(1),
            None
        );
    }
    #[test]
    fn offset_and_offhand_period_do_not_use_asset_cycle_count() {
        let mut bomb = item("bird_weapon_black_bomb_01");
        bomb.asset_level_offset = -3;
        bomb.asset_cycle_count = 99;
        assert_eq!(
            bomb.projectile_asset(1).as_deref(),
            Some("Projectile_BlackBird_Bomb_09")
        );
        bomb.item_type = 4;
        bomb.asset_level_offset = 0;
        assert_eq!(
            bomb.projectile_asset(24).as_deref(),
            Some("Projectile_BlackBird_Bomb_08")
        );
        assert_eq!(
            bomb.projectile_asset(25).as_deref(),
            Some("Projectile_BlackBird_Bomb_01")
        );
    }
    #[test]
    fn recovered_loadouts_reference_valid_slots_and_every_campaign_pig() {
        assert_eq!(EQUIPMENT.len(), 312);
        assert_eq!(PIG_LOADOUTS.len(), crate::PIGS.len());
        for pig in crate::PIGS {
            let loadout = pig_loadout(pig.id).unwrap();
            if let Some(index) = loadout.main_hand {
                assert_eq!(EQUIPMENT[index].item_type, 3);
            }
            if let Some(index) = loadout.off_hand {
                assert_eq!(EQUIPMENT[index].item_type, 4);
            }
        }
    }
}
