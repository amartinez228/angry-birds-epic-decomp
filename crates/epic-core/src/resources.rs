//! Stored resource values and recovered starting inventory. Subtype callbacks,
//! caps, crafting and consumable use are separate work. Base campaign wheel
//! rewards deposit values through victory_rewards.
use std::collections::BTreeMap;

#[derive(Debug)]
pub struct ResourceDefinition {
    pub id: &'static str,
    pub name: &'static str,
    /// UI label; recipes use their serialized product's recovered name.
    pub label: &'static str,
    pub item_type: i32,
}

include!("resources_generated.rs");

pub fn definition(id: &str) -> Option<&'static ResourceDefinition> {
    DEFINITIONS
        .binary_search_by_key(&id, |item| item.id)
        .ok()
        .map(|index| &DEFINITIONS[index])
}

fn stored_definition(id: &str) -> Result<&'static ResourceDefinition, &'static str> {
    let item = definition(id).ok_or("Unknown resource ID")?;
    if matches!(id, "gold" | "experience") {
        return Err("Gold and experience use their dedicated profile fields");
    }
    Ok(item)
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Stack {
    pub value: u32,
    /// First-deposit level, retained when later deposits merge their values.
    /// Recipe level behavior and other subtype effects still need recovery.
    pub level: i32,
}

#[derive(Clone, Debug, Default, PartialEq, Eq)]
pub struct Resources {
    items: BTreeMap<&'static str, Stack>,
}

impl Resources {
    /// New profiles and pre-v9 migrations receive the same level-one starting
    /// resources. Migration never applies initial XP or alters the gold wallet.
    pub fn starting() -> Self {
        let mut result = Self::default();
        for &(id, value, delta) in INITIAL {
            if !matches!(id, "gold" | "experience") {
                result
                    .deposit(id, value, 1 + delta)
                    .expect("Verified starting resources");
            }
        }
        result
    }

    pub fn get(&self, id: &str) -> Option<Stack> {
        self.items.get(id).copied()
    }

    pub fn items(&self) -> impl ExactSizeIterator<Item = (&'static str, Stack)> + '_ {
        self.items.iter().map(|(&id, &stack)| (id, stack))
    }

    /// Store values only; this does not unlock systems or execute item effects.
    /// Checked arithmetic keeps a rejected deposit from changing the inventory.
    pub fn deposit(&mut self, id: &str, value: u32, level: i32) -> Result<(), &'static str> {
        let item = stored_definition(id)?;
        if level < 1 {
            return Err("Invalid resource level");
        }
        if value == 0 {
            return Ok(());
        }
        if let Some(stack) = self.items.get_mut(item.id) {
            stack.value = stack
                .value
                .checked_add(value)
                .ok_or("Resource quantity overflow")?;
        } else {
            self.items.insert(item.id, Stack { value, level });
        }
        Ok(())
    }

    pub(crate) fn encode(&self) -> String {
        if self.items.is_empty() {
            return "-".into();
        }
        self.items()
            .map(|(id, stack)| format!("{id}:{}:{}", stack.value, stack.level))
            .collect::<Vec<_>>()
            .join(",")
    }

    pub(crate) fn decode(text: &str) -> Result<Self, &'static str> {
        let mut result = Self::default();
        if text == "-" {
            return Ok(result);
        }
        for record in text.split(',') {
            let fields: Vec<_> = record.split(':').collect();
            if fields.len() != 3 || result.items.contains_key(fields[0]) {
                return Err("Invalid or duplicate saved resource");
            }
            let value = fields[1].parse().map_err(|_| "Invalid resource quantity")?;
            if value == 0 {
                return Err("Empty saved resource stack");
            }
            let level = fields[2].parse().map_err(|_| "Invalid resource level")?;
            result.deposit(fields[0], value, level)?;
        }
        Ok(result)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{inventory::Inventory, stats::EquipmentStats, Profile};

    #[test]
    fn recovered_starters_keep_recipe_values_levels_and_separate_wallets() {
        assert_eq!(DEFINITIONS.len(), 617);
        assert_eq!(INITIAL.len(), 24);
        let profile = Profile::default();
        assert_eq!(profile.resources.items().len(), 23);
        assert_eq!(
            profile.resources.get("resource_wood"),
            Some(Stack { value: 6, level: 1 })
        );
        assert_eq!(
            profile.resources.get("recipe_vial"),
            Some(Stack { value: 2, level: 1 })
        );
        assert_eq!(
            profile.resources.get("recipe_weapon_red_lance_01"),
            Some(Stack { value: 1, level: 2 })
        );
        assert_eq!(profile.resources.get("experience"), None);
        assert_eq!(profile.resources.get("gold"), None);
        assert_eq!(profile.gold, 500);
        assert_eq!(profile.experience.points, 0);
        assert_eq!(Profile::decode(&profile.encode()), Ok(profile));
    }

    #[test]
    fn deposits_merge_values_keep_first_level_and_reject_overflow_atomically() {
        let mut items = Resources::default();
        items.deposit("resource_wood", u32::MAX - 1, 2).unwrap();
        items.deposit("resource_wood", 1, 20).unwrap();
        assert_eq!(
            items.get("resource_wood"),
            Some(Stack {
                value: u32::MAX,
                level: 2
            })
        );
        let before = items.clone();
        assert!(items.deposit("resource_wood", 1, 1).is_err());
        for (id, level) in [
            ("unknown", 1),
            ("gold", 1),
            ("experience", 1),
            ("resource_stone", 0),
        ] {
            assert!(items.deposit(id, 1, level).is_err());
        }
        assert_eq!(items, before);
        assert_eq!(Resources::decode(&items.encode()), Ok(items));
    }

    #[test]
    fn malformed_resource_saves_are_rejected() {
        for bad in [
            "",
            "-,-",
            "unknown:1:1",
            "gold:1:1",
            "experience:1:1",
            "resource_wood:1",
            "resource_wood:1:1:2",
            "resource_wood:0:1",
            "resource_wood:-1:1",
            "resource_wood:4294967296:1",
            "resource_wood:1:0",
            "resource_wood:1:-1",
            "resource_wood:1:2147483648",
            "resource_wood:1:1,resource_wood:2:2",
        ] {
            assert!(Resources::decode(bad).is_err(), "accepted {bad}");
        }
        let profile = Profile {
            resources: Resources::default(),
            ..Default::default()
        };
        assert_eq!(Profile::decode(&profile.encode()), Ok(profile));
    }

    #[test]
    fn v8_migration_preserves_gear_progress_and_deposits_starters_once() {
        let mut profile = Profile {
            gold: 321,
            first_revive_used: true,
            ..Default::default()
        };
        profile.experience.grant(250);
        profile.stars[0] = 3;
        let gear = profile
            .inventory
            .add(
                crate::equipment::EQUIPMENT[crate::stats::BIRDS[0].main_hand].id,
                EquipmentStats {
                    level: 3,
                    ..Default::default()
                },
            )
            .unwrap();
        profile.equip_gear(0, gear).unwrap();
        let encoded = profile.encode();
        let mut lines: Vec<_> = encoded.lines().take(13).collect();
        lines[0] = "EPIC_RUST_8";
        let mut migrated = Profile::decode(&lines.join("\n")).unwrap();
        assert_eq!(migrated, profile);
        assert_ne!(migrated.inventory, Inventory::default());
        migrated.resources.deposit("resource_wood", 9, 10).unwrap();
        let reloaded = Profile::decode(&migrated.encode()).unwrap();
        assert_eq!(reloaded, migrated);
        assert_eq!(reloaded.resources.get("resource_wood").unwrap().value, 15);
        // A valid v9 empty inventory stays empty, rather than being reseeded.
        migrated.resources = Resources::default();
        assert_eq!(Profile::decode(&migrated.encode()), Ok(migrated));
    }
}
