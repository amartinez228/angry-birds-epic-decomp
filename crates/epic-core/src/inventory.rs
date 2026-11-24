//! Owned equipment instances. Acquisition, crafting and perks are separate.
use crate::{equipment::EQUIPMENT, stats::EquipmentStats, stats::BIRDS, Profile};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Gear {
    pub definition: usize,
    pub state: EquipmentStats,
}

impl Gear {
    pub fn new(id: &str, state: EquipmentStats) -> Result<Self, &'static str> {
        let definition = EQUIPMENT
            .iter()
            .position(|item| item.id == id)
            .ok_or("Unknown equipment ID")?;
        let item = EQUIPMENT[definition];
        if item
            .main_stat(state)
            .is_none_or(|value| !value.is_finite() || value < 0.)
        {
            return Err("Invalid equipment stats");
        }
        Ok(Self { definition, state })
    }

    pub fn slot(self) -> usize {
        usize::from(EQUIPMENT[self.definition].item_type == 4)
    }

    pub fn fits(self, bird: usize) -> bool {
        BIRDS.get(bird).is_some_and(|definition| {
            EQUIPMENT[self.definition].restricted_bird_id == definition.id
        })
    }

    pub fn main_stat(self) -> f32 {
        EQUIPMENT[self.definition]
            .main_stat(self.state)
            .expect("Validated owned gear")
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Inventory {
    items: Vec<Gear>,
    hands: [[usize; 2]; 5],
}

impl Default for Inventory {
    fn default() -> Self {
        let mut items = Vec::new();
        let hands = std::array::from_fn(|bird| {
            let definition = &BIRDS[bird];
            let state = EquipmentStats {
                level: definition.inventory_initial_level.max(1),
                ..Default::default()
            };
            [definition.main_hand, definition.off_hand].map(|definition| {
                let index = items.len();
                items.push(Gear { definition, state });
                index
            })
        });
        Self { items, hands }
    }
}

impl Inventory {
    pub fn items(&self) -> &[Gear] {
        &self.items
    }

    pub fn hands(&self, bird: usize) -> Option<[usize; 2]> {
        self.hands.get(bird).copied()
    }

    /// Keep identical drops as distinct instances: quality, enchantments and
    /// future per-instance perks must not merge just because balancing IDs match.
    pub fn add(&mut self, id: &str, state: EquipmentStats) -> Result<usize, &'static str> {
        let gear = Gear::new(id, state)?;
        if self.items.len() >= 4096 {
            return Err("Equipment inventory is full");
        }
        let index = self.items.len();
        self.items.push(gear);
        Ok(index)
    }

    pub fn equip(&mut self, bird: usize, index: usize) -> Result<(), &'static str> {
        let gear = *self.items.get(index).ok_or("Equipment is not owned")?;
        if !gear.fits(bird) {
            return Err("Equipment belongs to another bird");
        }
        self.hands[bird][gear.slot()] = index;
        Ok(())
    }

    pub(crate) fn encode_items(&self) -> String {
        self.items
            .iter()
            .map(|gear| {
                format!(
                    "{}:{}:{}:{}:{}",
                    EQUIPMENT[gear.definition].id,
                    gear.state.level,
                    gear.state.quality,
                    u8::from(gear.state.ancient),
                    gear.state.enchantment_level
                )
            })
            .collect::<Vec<_>>()
            .join(",")
    }

    pub(crate) fn encode_hands(&self) -> String {
        self.hands
            .iter()
            .flatten()
            .map(usize::to_string)
            .collect::<Vec<_>>()
            .join(",")
    }

    pub(crate) fn decode(items: &str, hands: &str) -> Result<Self, &'static str> {
        let mut inventory = Self {
            items: Vec::new(),
            hands: [[0; 2]; 5],
        };
        for item in items.split(',') {
            let fields: Vec<_> = item.split(':').collect();
            if fields.len() != 5 {
                return Err("Invalid saved equipment instance");
            }
            let state = EquipmentStats {
                level: fields[1].parse().map_err(|_| "Invalid equipment level")?,
                quality: fields[2].parse().map_err(|_| "Invalid equipment quality")?,
                ancient: match fields[3] {
                    "0" => false,
                    "1" => true,
                    _ => return Err("Invalid ancient equipment flag"),
                },
                enchantment_level: fields[4].parse().map_err(|_| "Invalid enchantment level")?,
            };
            inventory.add(fields[0], state)?;
        }
        let indices: Vec<usize> = hands
            .split(',')
            .map(|value| value.parse().map_err(|_| "Invalid equipment reference"))
            .collect::<Result<_, _>>()?;
        if indices.len() != 10 {
            return Err("Invalid equipment slot count");
        }
        for (bird, pair) in indices.as_chunks::<2>().0.iter().enumerate() {
            for (slot, &index) in pair.iter().enumerate() {
                let gear = inventory
                    .items
                    .get(index)
                    .ok_or("Equipped item is not owned")?;
                if gear.slot() != slot || !gear.fits(bird) {
                    return Err("Invalid equipped bird or slot");
                }
                inventory.hands[bird][slot] = index;
            }
        }
        Ok(inventory)
    }
}

impl Profile {
    pub fn equip_gear(&mut self, bird: usize, index: usize) -> Result<(), &'static str> {
        self.inventory.equip(bird, index)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::stats::BaseStats;

    #[test]
    fn default_inventory_preserves_existing_stats_and_rejects_cross_bird_swaps() {
        let mut profile = Profile::default();
        assert_eq!(profile.inventory.items().len(), 10);
        for bird in 0..5 {
            assert_eq!(
                profile.bird_stats(bird),
                BIRDS[bird].starter_stats_with_mastery(1, 1, &crate::HATS[profile.equipped[bird]])
            );
        }
        let before = profile.clone();
        assert!(profile.equip_gear(0, 2).is_err());
        assert!(profile.equip_gear(5, 0).is_err());
        assert!(profile.equip_gear(0, usize::MAX).is_err());
        assert_eq!(profile, before);
    }

    #[test]
    fn distinct_owned_instances_change_live_battle_stats_and_round_trip() {
        let mut profile = Profile::default();
        let id = EQUIPMENT[BIRDS[0].main_hand].id;
        let index = profile
            .inventory
            .add(
                id,
                EquipmentStats {
                    level: 2,
                    ancient: true,
                    ..Default::default()
                },
            )
            .unwrap();
        assert_ne!(index, 0);
        assert_eq!(profile.inventory.hands(0), Some([0, 1]));
        assert_eq!(
            profile.bird_stats(0),
            Some(BaseStats {
                health: 120.,
                attack: 23.
            })
        );
        profile.equip_gear(0, index).unwrap();
        assert!(profile.bird_stats(0).unwrap().attack > 23.);
        let battle = crate::Battle::new(&profile, 0).unwrap();
        assert_eq!(
            battle.heroes[0].attack,
            profile.bird_stats(0).unwrap().attack.round() as i32
        );
        assert_eq!(Profile::decode(&profile.encode()), Ok(profile));
    }

    #[test]
    fn malformed_instances_and_loadouts_are_rejected() {
        let inventory = Inventory::default();
        let items = inventory.encode_items();
        let hands = inventory.encode_hands();
        for bad in [
            "",
            "unknown:1:0:0:0",
            "bird_weapon_red_sword_0star:0:0:0:0",
            "bird_weapon_red_sword_0star:1:0:2:0",
            "bird_weapon_red_sword_0star:1:0:0:11",
        ] {
            assert!(Inventory::decode(bad, &hands).is_err());
        }
        for bad in [
            "",
            "0,1",
            "1,0,2,3,4,5,6,7,8,9",
            "0,1,0,1,4,5,6,7,8,9",
            "0,1,2,3,4,5,6,7,8,999",
        ] {
            assert!(Inventory::decode(&items, bad).is_err());
        }
        assert_eq!(Inventory::decode(&items, &hands), Ok(inventory));
    }

    #[test]
    fn level_and_mastery_refresh_keep_owned_gear_and_the_battle_skin() {
        let mut profile = Profile::default();
        let id = EQUIPMENT[BIRDS[0].main_hand].id;
        let index = profile
            .inventory
            .add(
                id,
                EquipmentStats {
                    ancient: true,
                    ..Default::default()
                },
            )
            .unwrap();
        profile.equip_gear(0, index).unwrap();
        let mut battle = crate::Battle::new(&profile, 0).unwrap();
        let battle_hat = battle.heroes[0].hat;
        profile.experience.grant(35);
        // A changed camp hat must not replace the captured battle class.
        profile.gold = 10000;
        let elite = crate::HATS
            .iter()
            .position(|hat| hat.id == "skin_eliteknight")
            .unwrap();
        profile.buy_and_equip(elite).unwrap();
        let class = crate::mastery::CLASSES
            .iter()
            .position(|class| class.id == crate::HATS[battle_hat].class_id)
            .unwrap();
        profile.mastery[class].rank = 2;
        battle.refresh_bird_stats(&profile);
        let expected = profile.bird_stats_for_hat(0, battle_hat).unwrap();
        assert_eq!(
            battle.heroes[0].attack,
            expected.attack.round_ties_even() as i32
        );
        assert_eq!(
            battle.heroes[0].max_hp,
            expected.health.round_ties_even() as i32
        );
        let implicit = BIRDS[0]
            .starter_stats_with_mastery(2, 2, &crate::HATS[battle_hat])
            .unwrap();
        assert!(expected.attack > implicit.attack);
        assert_ne!(expected, profile.bird_stats(0).unwrap());
    }

    #[test]
    fn battle_captures_owned_hands_across_camp_changes_and_level_refresh() {
        let mut profile = Profile {
            unlocked: 3,
            party: [3, 4, 0],
            ..Default::default()
        };
        let bomb = profile
            .inventory
            .add(
                "bird_weapon_black_bomb_01",
                EquipmentStats {
                    level: 4,
                    quality: 2,
                    ..Default::default()
                },
            )
            .unwrap();
        profile.equip_gear(3, bomb).unwrap();
        let mut battle = crate::Battle::new(&profile, 3).unwrap();
        let captured = battle.heroes[0].gear.unwrap();
        assert_eq!(captured[0], profile.inventory.items()[bomb]);
        assert_eq!(battle.snapshot().heroes[0].gear, Some(captured));
        assert!(battle.enemies.iter().all(|pig| pig.gear.is_none()));
        let pistol = profile
            .inventory
            .add(
                "bird_weapon_black_pistol_01",
                EquipmentStats {
                    level: 9,
                    ancient: true,
                    ..Default::default()
                },
            )
            .unwrap();
        profile.equip_gear(3, pistol).unwrap();
        profile.experience.grant(35);
        battle.refresh_bird_stats(&profile);
        let expected = profile
            .bird_stats_with_gear(3, battle.heroes[0].hat, captured)
            .unwrap();
        assert_eq!(battle.heroes[0].level, 2);
        assert_eq!(battle.heroes[0].gear, Some(captured));
        assert_eq!(
            battle.heroes[0].attack,
            expected.attack.round_ties_even() as i32
        );
        assert_ne!(
            battle.heroes[0].attack,
            profile.bird_stats(3).unwrap().attack.round_ties_even() as i32
        );
        let class = crate::mastery::CLASSES
            .iter()
            .position(|class| class.id == crate::HATS[battle.heroes[0].hat].class_id)
            .unwrap();
        profile.mastery[class].rank = 2;
        battle.refresh_bird_stats(&profile);
        let expected = profile
            .bird_stats_with_gear(3, battle.heroes[0].hat, captured)
            .unwrap();
        assert_eq!(battle.heroes[0].gear, Some(captured));
        assert_eq!(battle.heroes[0].mastery_rank, 2);
        assert_eq!(
            battle.heroes[0].attack,
            expected.attack.round_ties_even() as i32
        );
        let next = crate::Battle::new(&profile, 3).unwrap();
        assert_eq!(
            next.heroes[0].gear.unwrap()[0],
            profile.inventory.items()[pistol]
        );
        assert_eq!(Profile::decode(&profile.encode()), Ok(profile));
    }

    #[test]
    fn version_seven_migrates_to_initial_hands_without_changing_progress() {
        let mut profile = Profile {
            gold: 4321,
            first_revive_used: true,
            ..Default::default()
        };
        profile.stars[0] = 3;
        let encoded = profile.encode();
        let mut lines: Vec<_> = encoded.lines().take(11).collect();
        lines[0] = "EPIC_RUST_7";
        assert_eq!(Profile::decode(&lines.join("\n")), Ok(profile));
    }
}
