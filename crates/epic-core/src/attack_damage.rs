//! Conditional attack coefficients traced in original Init/damage callbacks.
//! Final combat rounding/defense ordering remain incomplete. Wet, goo, ink and other
//! unimplemented status conditions deliberately retain ordinary attack damage.
use crate::{effects::Effects, percent, SkillDefinition};

impl SkillDefinition {
    /// Native conditional callbacks return a float and only enable positive
    /// coefficients. Keep the base fraction through that multiplication instead
    /// of rounding twice. Conversion to integer here remains a runtime boundary;
    /// native final combat rounding and defense/callback order need more work.
    pub(crate) fn damage_against(&self, power: i32, target: &Effects) -> i32 {
        let base = percent(power, self.parameter("damage_in_percent", 100.));
        let multiplier = match self.template {
            "AttackWithBonusDamageVsDebuff" if target.has_curse() => {
                self.parameter("damage_against_debuff", 0.)
            }
            "AttackWithBonusDamage" if target.is_stunned() => {
                self.parameter("bonus_damage_vs_stun", 0.)
            }
            _ => return base,
        };
        if multiplier <= 0. {
            return base;
        }
        let fraction = power as f32 * (self.parameter("damage_in_percent", 100.) / 100.);
        (fraction * (multiplier / 100.)).round() as i32
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{
        effects::{EffectKind, Source},
        SKILLS,
    };

    #[test]
    fn conditional_multipliers_keep_fractional_base_damage() {
        let mut target = Effects::default();
        target.apply("curse", Source::bird(0), 3, EffectKind::Stun);
        let stone = SKILLS
            .iter()
            .find(|s| s.template == "AttackWithBonusDamageVsDebuff")
            .unwrap();
        let stone = SkillDefinition {
            parameters: &[("damage_in_percent", 65.), ("damage_against_debuff", 150.)],
            ..*stone
        };
        assert_eq!(stone.damage_against(23, &target), 22); // 14.95 * 1.5, not 15 * 1.5.
        let frost = SKILLS
            .iter()
            .find(|s| s.template == "AttackWithBonusDamage")
            .unwrap();
        let frost = SkillDefinition {
            parameters: &[("damage_in_percent", 90.), ("bonus_damage_vs_stun", 150.)],
            ..*frost
        };
        assert_eq!(frost.damage_against(3, &target), 4); // 2.7 * 1.5, not 3 * 1.5.
        assert_eq!(stone.damage_against(23, &Effects::default()), 15);
    }

    #[test]
    fn nonpositive_coefficients_disable_the_condition_instead_of_zeroing_damage() {
        let mut target = Effects::default();
        target.apply("curse", Source::bird(0), 3, EffectKind::Stun);
        let prototype = SKILLS
            .iter()
            .find(|s| s.template == "AttackWithBonusDamageVsDebuff")
            .unwrap();
        for parameters in [
            &[("damage_in_percent", 65.), ("damage_against_debuff", 0.)][..],
            &[("damage_in_percent", 65.), ("damage_against_debuff", -50.)][..],
            &[("damage_in_percent", 65.)][..],
        ] {
            let skill = SkillDefinition {
                parameters,
                ..*prototype
            };
            assert_eq!(skill.damage_against(100, &target), 65);
        }
    }
}
