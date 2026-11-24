//! Original loot graph evaluation, separate from live reward application.
//! Base campaign wheel delivery lives in victory_rewards; bonus modifiers,
//! rerolls, previews, Unity RNG and exact inventory timing remain pending.
#[derive(Debug)]
pub struct LootEntry {
    pub id: &'static str,
    pub level_min: i32,
    pub level_max: i32,
    pub probability: f32,
    pub base_value: i32,
    pub span: i32,
    pub level_delta: i32,
}
pub struct LootTable {
    pub id: &'static str,
    pub kind: u32,
    pub entries: &'static [LootEntry],
}
pub struct PigDefeatLoot {
    pub id: &'static str,
    pub roots: &'static [(&'static str, i32)],
}
pub struct BattleLoot {
    pub id: &'static str,
    pub wheel: &'static [(&'static str, i32)],
    pub additional: &'static [(&'static str, i32)],
    pub bonus: &'static [(&'static str, i32)],
}
include!("loot_generated.rs");

pub fn battle_bonus_xp(id: &str) -> i32 {
    BATTLE_LOOT
        .iter()
        .find(|row| row.id == id)
        .and_then(|row| row.bonus.iter().find(|(key, _)| *key == "experience"))
        .map_or(0, |(_, amount)| *amount)
}

/// Mirrors the two distinct Unity RNG calls made by loot selection. Callers
/// supply an RNG; no cosmetic/global RNG or combat RNG is silently consumed.
pub trait LootRandom {
    /// Unity Random.value includes both endpoints.
    fn value(&mut self) -> f32;
    /// Integer Random.Range has an exclusive upper endpoint.
    fn range(&mut self, minimum: i32, maximum: i32) -> i32;
}

/// Temporary deterministic loot RNG. Unity's exact RNG and its global ordering
/// with combat/visual calls still need recovery; keep this state explicit.
#[derive(Clone, Debug)]
pub struct SeededLoot {
    state: u64,
}
impl SeededLoot {
    pub fn new(seed: u64) -> Self {
        Self { state: seed.max(1) }
    }
    fn next(&mut self) -> u64 {
        self.state ^= self.state << 13;
        self.state ^= self.state >> 7;
        self.state ^= self.state << 17;
        self.state
    }
}
impl LootRandom for SeededLoot {
    fn value(&mut self) -> f32 {
        (self.next() >> 40) as f32 / 16777215.
    }
    fn range(&mut self, minimum: i32, maximum: i32) -> i32 {
        let width = (maximum as i64 - minimum as i64) as u64;
        minimum.wrapping_add((self.next() % width) as i32)
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct LootItem {
    pub id: String,
    pub value: i32,
    pub level: i32,
    pub quality: u32,
    pub ancient: bool,
}
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum LootError {
    UnknownPig,
    InvalidWheel,
    InvalidRandomValue,
    InvalidSpan,
    DuplicateAncientKey,
}

impl LootEntry {
    pub fn applicable(&self, level: i32) -> bool {
        self.level_min <= level && (self.level_max == 0 || level < self.level_max)
    }
}
fn table(id: &str) -> Option<&'static LootTable> {
    TABLES.iter().find(|table| table.id == id)
}

/// CharacterController.GetXpDifferenceFactor: equal levels return 1; otherwise
/// choose the first sorted Difference >= pigLevel-playerLevel, with fallback 1.
/// Do not interpolate or manufacture a missing zero-difference table row.
pub fn xp_multiplier(player_level: i32, pig_level: i32) -> f32 {
    let difference = pig_level as f32 - player_level as f32;
    if difference == 0. {
        return 1.;
    }
    XP_SCALING
        .iter()
        .find(|&&(threshold, _)| threshold >= difference)
        .map(|&(_, percent)| percent / 100.)
        .unwrap_or(1.)
}
pub fn scaled_xp(value: i32, player_level: i32, pig_level: i32) -> i32 {
    // Native cvttss2si truncates the scaled float; it does not round to nearest.
    (value as f32 * xp_multiplier(player_level, pig_level)) as i32
}

pub fn roll(
    id: &str,
    amount: i32,
    level: i32,
    random: &mut impl LootRandom,
) -> Result<Vec<LootItem>, LootError> {
    Ok(roll_with_wheel(id, amount, level, None, random)?.items)
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct RolledLoot {
    pub items: Vec<LootItem>,
    /// Root wheel's selected start. Nested wheels have independent output refs.
    pub wheel_index: Option<usize>,
}

/// Native GenerateLootForcedWheelIndex overrides a root type-3 wheel. Type 4
/// always uses the supplied index (zero by default). Nested calls clear the
/// forced flag and use their own initially zero index, as ProcessLootEntry does.
pub fn roll_with_wheel(
    id: &str,
    amount: i32,
    level: i32,
    forced_index: Option<i32>,
    random: &mut impl LootRandom,
) -> Result<RolledLoot, LootError> {
    let mut engine = Engine {
        random,
        items: Vec::new(),
        forced_root: forced_index,
        root_selection: None,
    };
    engine.generate(id, amount, level, 0)?;
    Ok(RolledLoot {
        items: engine.items,
        wheel_index: engine.root_selection,
    })
}
pub fn pig_defeat(
    id: &str,
    level: i32,
    random: &mut impl LootRandom,
) -> Result<Vec<LootItem>, LootError> {
    let pig = PIG_DEFEAT_LOOT
        .iter()
        .find(|pig| pig.id == id)
        .ok_or(LootError::UnknownPig)?;
    let mut engine = Engine {
        random,
        items: Vec::new(),
        forced_root: None,
        root_selection: None,
    };
    for &(id, amount) in pig.roots {
        engine.generate(id, amount, level, 0)?;
    }
    Ok(engine.items)
}

struct Engine<'a, R> {
    random: &'a mut R,
    items: Vec<LootItem>,
    forced_root: Option<i32>,
    root_selection: Option<usize>,
}
impl<R: LootRandom> Engine<'_, R> {
    fn value(&mut self) -> Result<f32, LootError> {
        let value = self.random.value();
        if value.is_finite() && (0. ..=1.).contains(&value) {
            Ok(value)
        } else {
            Err(LootError::InvalidRandomValue)
        }
    }
    fn add(&mut self, id: &str, value: i32, level: i32) -> Result<(), LootError> {
        if let Some(item) = self.items.iter_mut().find(|item| item.id == id) {
            item.value = item.value.wrapping_add(value);
            return Ok(());
        }
        let ancient = id.starts_with("ancient_");
        let id = if ancient {
            id.replace("ancient_", "")
        } else {
            id.to_owned()
        };
        // Native checks before stripping the prefix, then Dictionary.Add may
        // collide with a normalized key. Surface that case explicitly.
        if self.items.iter().any(|item| item.id == id) {
            return Err(LootError::DuplicateAncientKey);
        }
        self.items.push(LootItem {
            id,
            value,
            level,
            quality: 0,
            ancient,
        });
        Ok(())
    }
    fn entry(&mut self, entry: &LootEntry, level: i32, depth: u8) -> Result<(), LootError> {
        let end = entry
            .span
            .checked_add(1)
            .filter(|&value| value > 0)
            .ok_or(LootError::InvalidSpan)?;
        let offset = self.random.range(0, end);
        if !(0..end).contains(&offset) {
            return Err(LootError::InvalidRandomValue);
        }
        let value = entry.base_value.wrapping_add(offset).max(0);
        let level = level.wrapping_add(entry.level_delta).max(0);
        if table(entry.id).is_some() {
            self.generate(entry.id, value, level, depth + 1)
        } else if value > 0 {
            self.add(entry.id, value, level)
        } else {
            Ok(())
        }
    }
    fn generate(&mut self, id: &str, amount: i32, level: i32, depth: u8) -> Result<(), LootError> {
        if depth >= 10 {
            return Ok(());
        }
        let Some(table) = table(id) else {
            return if amount > 0 {
                self.add(id, amount, level)
            } else {
                Ok(())
            };
        };
        match table.kind {
            0 => {
                let mut accepted = 0;
                for entry in table.entries {
                    if entry.applicable(level) && entry.probability >= self.value()? {
                        self.entry(entry, level, depth)?;
                        accepted += 1;
                        if amount != -1 && accepted >= amount {
                            break;
                        }
                    }
                }
            }
            1 => {
                let eligible: Vec<_> = table
                    .entries
                    .iter()
                    .filter(|e| e.applicable(level))
                    .collect();
                let total: f32 = eligible.iter().map(|e| e.probability).sum();
                for _ in 0..amount.max(0) {
                    let target = self.value()? * total;
                    let mut accumulated = 0.;
                    for entry in &eligible {
                        accumulated += entry.probability;
                        if accumulated >= target {
                            self.entry(entry, level, depth)?;
                            break;
                        }
                    }
                }
            }
            3 | 4 => {
                let count =
                    i32::try_from(table.entries.len()).map_err(|_| LootError::InvalidWheel)?;
                if count == 0 {
                    return Err(LootError::InvalidWheel);
                }
                let forced = if depth == 0 { self.forced_root } else { None };
                let start = if table.kind == 4 || forced.is_some() {
                    forced.unwrap_or(0)
                } else {
                    // GetLootIndexFromWheel consumes one integer draw even
                    // when the caller requests zero rewards. No weights or
                    // eligibility filters apply to wheel slots.
                    let index = self.random.range(0, count);
                    if !(0..count).contains(&index) {
                        return Err(LootError::InvalidRandomValue);
                    }
                    index
                };
                if start < 0 {
                    return Err(LootError::InvalidWheel);
                }
                if depth == 0 {
                    self.root_selection = Some(start as usize);
                }
                for offset in 0..amount.max(0) {
                    let index = start.wrapping_add(offset) % count;
                    let index = usize::try_from(index).map_err(|_| LootError::InvalidWheel)?;
                    self.entry(&table.entries[index], level, depth)?;
                }
            }
            _ => {
                for _ in 0..amount.max(0) {
                    // Native inventory tables intentionally bypass entry
                    // level/probability checks and process every entry.
                    for entry in table.entries {
                        self.entry(entry, level, depth)?;
                    }
                }
            }
        }
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    struct Fixed {
        value: f32,
        values: usize,
        ranges: usize,
    }
    impl LootRandom for Fixed {
        fn value(&mut self) -> f32 {
            self.values += 1;
            self.value
        }
        fn range(&mut self, min: i32, max: i32) -> i32 {
            self.ranges += 1;
            assert!(max > min);
            min
        }
    }
    fn fixed(value: f32) -> Fixed {
        Fixed {
            value,
            values: 0,
            ranges: 0,
        }
    }
    #[test]
    fn original_xp_band_boundaries_and_inclusive_weight_endpoints_are_preserved() {
        let mut random = fixed(0.);
        assert_eq!(
            roll("loot_pig3_defeated_exp", 1, 10, &mut random).unwrap()[0].value,
            1
        );
        random.value = 1.;
        assert_eq!(
            roll("loot_pig3_defeated_exp", 1, 10, &mut random).unwrap()[0].value,
            2
        );
        random.value = 0.;
        assert_eq!(
            roll("loot_pig3_defeated_exp", 1, 11, &mut random).unwrap()[0].value,
            2
        );
        assert_eq!((random.values, random.ranges), (3, 3));
    }
    #[test]
    fn actual_pig_defeat_roots_emit_original_gold_xp_and_mastery_items() {
        let mut random = fixed(0.);
        let items = pig_defeat("pig_minion_rogue_bird1_1hit", 1, &mut random).unwrap();
        assert_eq!(
            items
                .iter()
                .find(|item| item.id == "experience")
                .unwrap()
                .value,
            1
        );
        assert!(items.iter().any(|item| item.id == "gold"));
        assert!(items.iter().all(|item| item.level >= 0 && item.value > 0));
        assert_eq!(TABLES.len(), 2044);
        assert_eq!(
            TABLES
                .iter()
                .map(|table| table.entries.len())
                .sum::<usize>(),
            9761
        );
        for pig in crate::PIGS {
            assert!(pig_defeat(pig.id, 1, &mut random).is_ok(), "{}", pig.id);
        }
    }
    #[test]
    fn level_difference_scaling_uses_source_upper_bounds_and_truncation() {
        assert_eq!(xp_multiplier(10, 10), 1.);
        assert_eq!(xp_multiplier(10, 8), 0.95);
        assert_eq!(xp_multiplier(10, 9), 1.05);
        assert_eq!(xp_multiplier(1, 100), 1.);
        assert_eq!(scaled_xp(1, 10, 8), 0);
        assert_eq!(scaled_xp(10, 10, 20), 20);
    }
    #[test]
    fn invalid_rng_is_an_explicit_error() {
        assert_eq!(
            roll("loot_pig3_defeated_exp", 1, 1, &mut fixed(f32::NAN)),
            Err(LootError::InvalidRandomValue)
        );
    }

    #[test]
    fn original_tutorial_forced_wheel_awards_consecutive_slots_without_start_draw() {
        let mut random = fixed(0.);
        let rolled = roll_with_wheel("battle_southbeach_01", 3, 7, None, &mut random).unwrap();
        assert_eq!(rolled.wheel_index, Some(0));
        assert_eq!(
            rolled
                .items
                .iter()
                .map(|item| (item.id.as_str(), item.value, item.level))
                .collect::<Vec<_>>(),
            [
                ("bird_weapon_red_sword_introwheel", 1, 7),
                ("ingredient_vial", 1, 7),
                ("resource_seashell", 1, 7)
            ]
        );
        assert_eq!((random.values, random.ranges), (0, 3));
    }

    #[test]
    fn forced_start_wraps_and_combines_duplicate_items_but_does_not_reroll_start() {
        let mut random = fixed(0.);
        let rolled = roll_with_wheel("dummy_battle_01", 3, 4, Some(7), &mut random).unwrap();
        assert_eq!(rolled.wheel_index, Some(7));
        assert_eq!(
            rolled
                .items
                .iter()
                .map(|item| item.id.as_str())
                .collect::<Vec<_>>(),
            [
                "resource_wood",
                "bird_weapon_red_sword_01",
                "resource_seashell"
            ]
        );
        assert_eq!((random.values, random.ranges), (0, 3));
        let combined = roll_with_wheel("dummy_battle_01", 9, 4, Some(0), &mut random).unwrap();
        assert_eq!(combined.items[0].value, 3);
        assert_eq!(combined.items.len(), 4);
        assert_eq!(
            roll_with_wheel("dummy_battle_01", 1, 4, Some(-1), &mut random),
            Err(LootError::InvalidWheel)
        );
    }

    #[test]
    fn normal_wheel_draws_one_start_even_for_zero_rewards_and_preserves_bounds() {
        struct Last {
            calls: Vec<(i32, i32)>,
        }
        impl LootRandom for Last {
            fn value(&mut self) -> f32 {
                panic!("Wheel does not draw weighted floats")
            }
            fn range(&mut self, min: i32, max: i32) -> i32 {
                self.calls.push((min, max));
                max - 1
            }
        }
        let mut random = Last { calls: Vec::new() };
        let rolled = roll_with_wheel("dummy_battle_01", 2, 4, None, &mut random).unwrap();
        assert_eq!(rolled.wheel_index, Some(7));
        assert_eq!(random.calls, [(0, 8), (0, 1), (0, 1)]);
        assert_eq!(rolled.items[0].id, "resource_wood");
        let zero = roll_with_wheel("dummy_battle_01", 0, 4, None, &mut random).unwrap();
        assert!(zero.items.is_empty());
        assert_eq!(zero.wheel_index, Some(7));
        assert_eq!(random.calls.last(), Some(&(0, 8)));
    }
}
