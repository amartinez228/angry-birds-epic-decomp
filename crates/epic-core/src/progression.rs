//! Original residual-XP thresholds and level transition arithmetic.
//! Reward loot, fractional modifiers and full event choreography are pending.
include!("progression_generated.rs");

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Experience {
    pub level: u32,
    pub points: u32,
}
impl Default for Experience {
    fn default() -> Self {
        Self {
            level: 1,
            points: 0,
        }
    }
}
impl Experience {
    pub fn next_cost(&self) -> Option<u32> {
        EXPERIENCE_COSTS
            .get(self.level.checked_sub(1)? as usize)
            .copied()
    }
    pub fn needed(&self) -> Option<u32> {
        self.next_cost()
            .map(|cost| cost.saturating_sub(self.points))
    }
    /// Native OnExperienceChanged applies one threshold transition per event.
    /// Carry surplus XP, update all bird stats through the shared player level,
    /// and ignore further grants when the current-level row is absent (100).
    pub fn grant(&mut self, points: u32) -> bool {
        let Some(cost) = self.next_cost() else {
            return false;
        };
        self.points = self.points.saturating_add(points);
        if self.points >= cost {
            self.points -= cost;
            self.level += 1;
            true
        } else {
            false
        }
    }

    /// v1-v3 used 100 total XP per level, capped at 50. Preserve the old level
    /// and at least its within-level percentage, rounding upward by <1 new XP.
    /// XP banked at the old cap carries as points into the restored progression.
    /// The client retains the exact original save before writing v4.
    pub fn from_legacy(total: u32) -> Self {
        let level = (1 + total / 100).min(50);
        let mut result = Self { level, points: 0 };
        result.points = if level < 50 {
            let cost = result
                .next_cost()
                .expect("Legacy level has original XP cost");
            ((total % 100) as u64 * cost as u64).div_ceil(100) as u32
        } else {
            total - 4900
        };
        while result.next_cost().is_some_and(|cost| result.points >= cost) {
            result.grant(0);
        }
        result
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn original_costs_are_consumed_and_remaining_xp_carries_forward() {
        let mut xp = Experience::default();
        assert_eq!(xp.needed(), Some(35));
        assert!(xp.grant(50));
        assert_eq!(
            xp,
            Experience {
                level: 2,
                points: 15
            }
        );
        assert_eq!(xp.needed(), Some(38));
        assert!(xp.grant(50));
        assert_eq!(
            xp,
            Experience {
                level: 3,
                points: 12
            }
        );
        assert!(!xp.grant(50));
        assert_eq!(xp.needed(), Some(12));
    }
    #[test]
    fn single_event_retains_surplus_and_terminal_level_ignores_new_awards() {
        let mut xp = Experience::default();
        xp.grant(1000);
        assert_eq!(
            xp,
            Experience {
                level: 2,
                points: 965
            }
        );
        let mut xp = Experience {
            level: 99,
            points: 2289,
        };
        assert!(xp.grant(2));
        assert_eq!(
            xp,
            Experience {
                level: 100,
                points: 1
            }
        );
        assert!(!xp.grant(50));
        assert_eq!(xp.points, 1);
        assert_eq!(xp.needed(), None);
    }
    #[test]
    fn migration_preserves_legacy_levels_and_does_not_reduce_within_level_fraction() {
        for total in 0..4900 {
            let converted = Experience::from_legacy(total);
            let previous_level = 1 + total / 100;
            assert!(converted.level >= previous_level);
            if converted.level == previous_level {
                assert!(
                    converted.points as u64 * 100
                        >= (total % 100) as u64 * converted.next_cost().unwrap() as u64
                );
            }
        }
        assert_eq!(
            Experience::from_legacy(250),
            Experience {
                level: 3,
                points: 37
            }
        );
        assert_eq!(
            Experience::from_legacy(4900),
            Experience {
                level: 50,
                points: 0
            }
        );
        assert_eq!(Experience::from_legacy(u32::MAX).level, MAX_LEVEL);
    }
}
