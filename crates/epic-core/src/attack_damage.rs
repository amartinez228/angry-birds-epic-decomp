//! Conditional attack coefficients from recovered configuration/descriptions.
//! Native callback bodies/rounding remain unverified. Wet, goo, ink and other
//! unimplemented status conditions deliberately retain ordinary attack damage.
use crate::{effects::Effects, percent, SkillDefinition};

impl SkillDefinition {
    /// Current integer engine order: modified attack, base skill percentage,
    /// conditional multiplier, then the target's normal damage defenses.
    pub(crate) fn damage_against(&self, power: i32, target: &Effects) -> i32 {
        let base = percent(power, self.parameter("damage_in_percent", 100.));
        let multiplier = match self.template {
            "AttackWithBonusDamageVsDebuff" if target.has_curse() => {
                self.parameter("damage_against_debuff", 100.)
            }
            "AttackWithBonusDamage" if target.is_stunned() => {
                self.parameter("bonus_damage_vs_stun", 100.)
            }
            _ => return base,
        };
        percent(base, multiplier)
    }
}
