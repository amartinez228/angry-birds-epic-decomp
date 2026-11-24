//! Configuration recovered from original first-visit main-island encounters.
//! Replay selection, power-level scaling and branching rules are separate work.

#[derive(Clone, Copy, Debug)]
pub struct PigDefinition {
    pub id: &'static str,
    pub name: &'static str,
    pub asset_id: &'static str,
    pub base_health: i32,
    pub base_attack: i32,
    pub per_level_health: i32,
    pub per_level_attack: i32,
    pub skills: &'static [usize],
    pub combos: &'static [AiCombo],
    pub passive_skill_id: &'static str,
}

#[derive(Clone, Copy, Debug)]
pub struct AiCombo {
    pub weight: f32,
    pub skills: &'static [usize],
}

#[derive(Clone, Copy, Debug)]
pub struct Spawn {
    pub pig: usize,
    pub amount: u32,
    pub level_difference: i32,
}

#[derive(Clone, Copy, Debug)]
pub struct EncounterWave {
    pub id: &'static str,
    pub spawns: &'static [Spawn],
}

#[derive(Clone, Copy, Debug)]
pub struct Encounter {
    pub id: &'static str,
    pub name: &'static str,
    pub battle_id: &'static str,
    pub base_level: u32,
    pub max_birds: usize,
    pub background_asset_id: &'static str,
    pub music_id: &'static str,
    pub waves: &'static [EncounterWave],
}

include!("campaign_generated.rs");

#[cfg(test)]
mod tests {
    use super::*;
    use crate::SKILLS;

    #[test]
    fn recovered_fixed_campaign_references_are_complete() {
        assert_eq!(ENCOUNTERS.len(), 167);
        assert_eq!(ENCOUNTERS.iter().map(|e| e.waves.len()).sum::<usize>(), 291);
        assert_eq!(PIGS.len(), 140);
        let mut ids = std::collections::HashSet::new();
        for encounter in &ENCOUNTERS {
            assert!(ids.insert(encounter.id));
            assert!((1..=3).contains(&encounter.max_birds));
            assert!(!encounter.waves.is_empty());
            for wave in encounter.waves {
                let count: u32 = wave.spawns.iter().map(|s| s.amount).sum();
                assert!((1..=6).contains(&count));
                for spawn in wave.spawns {
                    let pig = PIGS[spawn.pig];
                    assert!(pig.base_health > 0);
                    assert!(pig.skills.iter().all(|&i| i < SKILLS.len()));
                    assert!(pig.combos.iter().all(|combo| combo.weight >= 0.
                        && !combo.skills.is_empty()
                        && combo.skills.iter().all(|&i| pig.skills.contains(&i))));
                }
            }
        }
    }

    #[test]
    fn first_battle_and_final_castle_match_original_data() {
        let first = ENCOUNTERS[0];
        assert_eq!(first.id, "hotspot_002_battleground");
        assert_eq!(first.battle_id, "battle_001");
        assert_eq!(first.max_birds, 1);
        assert_eq!(first.waves.len(), 1);
        let enemies: Vec<_> = first.waves[0]
            .spawns
            .iter()
            .map(|s| PIGS[s.pig].id)
            .collect();
        assert_eq!(
            enemies,
            [
                "pig_minion_rogue_bird1_1hit",
                "pig_minion_stickpig_bird1_1hit"
            ]
        );
        assert_eq!(ENCOUNTERS.last().unwrap().battle_id, "battle_100");
        assert_eq!(ENCOUNTERS.last().unwrap().waves.len(), 2);
    }
}
