//! Traced damage callbacks for healing, healing reduction and ordinary stun.
//! Fractional HP, complete trigger order and wet/freeze/tentacle effects pending.
use crate::{
    effects::{EffectKind, Side, Source},
    Battle, SkillDefinition,
};

/// Native Random.value comparison is inclusive and runs even at 0/100 percent.
fn stun_succeeds(chance: f32, sample: f32) -> bool {
    sample <= chance / 100.
}

impl Battle {
    pub(crate) fn healing_debuff_attack_finish(
        &mut self,
        source: Source,
        target: Source,
        skill: SkillDefinition,
        normalized_damage: i32,
    ) {
        if skill.template != "AttackAndApplyHealingDebuffSkill"
            || (normalized_damage == 0
                && !skill.has_parameter("alleffect")
                && !skill.has_parameter("nodamage"))
        {
            return;
        }
        let living = match target.side {
            Side::Birds => self.heroes[target.index].alive(),
            Side::Pigs => self.enemies[target.index].alive(),
        };
        if !living {
            return;
        }
        // Once the shared after-damage gate permits it, native
        // ShareableActionPart (0xed9154) draws even at 0/100% chance.
        let sample = self.random_index(1_000_000) as f32 / 999_999.;
        if stun_succeeds(skill.parameter("chance", 0.), sample) {
            let unit = match target.side {
                Side::Birds => &mut self.heroes[target.index],
                Side::Pigs => &mut self.enemies[target.index],
            };
            unit.effects.apply(
                skill.id,
                source,
                skill.duration,
                EffectKind::HealingReduction(skill.parameter("healing_debuff", 0.)),
            );
        }
    }

    pub(crate) fn healing_attack_hit(
        &mut self,
        source: Source,
        skill: SkillDefinition,
        normalized_damage: i32,
    ) {
        if skill.template == "AttackWithLeech" {
            let attacker = match source.side {
                Side::Birds => &mut self.heroes[source.index],
                Side::Pigs => &mut self.enemies[source.index],
            };
            // Native ActionsOnDamageDealt callback has no source-health or
            // positive-damage predicate. HealCurrentTurn handles the queue;
            // restoring HP does not clear a retained bird knockout flag.
            let amount = (normalized_damage as f32 * skill.parameter("heal", 0.)) / 100.;
            attacker.queue_healing(amount);
            attacker.resolve_healing();
            return;
        }
        if skill.template == "AttackWithHealWeakerAlly" {
            let allies = match source.side {
                Side::Birds => &mut self.heroes,
                Side::Pigs => &mut self.enemies,
            };
            // Native callback seeds the choice with the attacker. A strictly
            // lower CurrentHealth/ModifiedHealth ratio replaces it; ties keep
            // the current choice. Eligibility tests HP, not participation.
            let mut selected = source.index;
            for (index, ally) in allies.iter().enumerate().filter(|(_, ally)| ally.hp > 0) {
                if (ally.hp as f32 / ally.max_hp as f32)
                    < (allies[selected].hp as f32 / allies[selected].max_hp as f32)
                {
                    selected = index;
                }
            }
            if allies[selected].hp > 0 {
                let amount = (normalized_damage as f32 * skill.parameter("heal_ally", 0.)) / 100.;
                allies[selected].queue_healing(amount);
                allies[selected].resolve_healing();
            }
            return;
        }
        if skill.template != "AttackWithHealAlly" || normalized_damage <= 0 {
            return;
        }
        let amount = (normalized_damage as f32 * skill.parameter("heal_ally", 0.)) / 100.;
        let allies = match source.side {
            Side::Birds => &mut self.heroes,
            Side::Pigs => &mut self.enemies,
        };
        // Native callback explicitly tests CurrentHealth > 0, independently
        // of the knockout/participation flag. Healing never clears that flag.
        for ally in allies.iter_mut().filter(|ally| ally.hp > 0) {
            ally.queue_healing(amount);
            ally.resolve_healing();
        }
    }

    pub(crate) fn stunning_attack_finish(
        &mut self,
        source: Source,
        target: Source,
        skill: SkillDefinition,
        normalized_damage: i32,
    ) {
        if skill.template != "AttackWithStunChanceSkill"
            || (normalized_damage == 0 && !skill.has_parameter("alleffect") && !skill.has_parameter("nodamage"))
            // Original wet-only branch requires the WaterBomb effect key.
            // No WaterBomb status exists in this runtime yet.
            || skill.has_parameter("chance_to_stun_vs_wet")
        {
            return;
        }
        let living = match target.side {
            Side::Birds => self.heroes[target.index].alive(),
            Side::Pigs => self.enemies[target.index].alive(),
        };
        if !living {
            return;
        }
        // Temporary seeded engine, not Unity's original RNG. Include both
        // endpoints and consume one draw even when success is certain/impossible.
        let sample = self.random_index(1_000_000) as f32 / 999_999.;
        if stun_succeeds(skill.parameter("chance", 0.), sample) {
            let unit = match target.side {
                Side::Birds => &mut self.heroes[target.index],
                Side::Pigs => &mut self.enemies[target.index],
            };
            unit.effects.apply(
                skill.id,
                source,
                skill.parameter("duration", 0.) as i32,
                EffectKind::Stun,
            );
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{Profile, SKILLS};
    #[test]
    fn leech_callback_flushes_existing_queue_even_for_zero_damage_and_zero_hp() {
        let skill = *SKILLS
            .iter()
            .find(|s| s.id == "pig_attack_ninja_black_boss_02")
            .unwrap();
        let mut battle = Battle::new(&Profile::default(), 0).unwrap();
        battle.heroes[0].hp = 0;
        battle.heroes[0].knocked_out = true;
        battle.heroes[0].queue_healing(2.5);
        battle.healing_attack_hit(Source::bird(0), skill, 0);
        assert_eq!(battle.heroes[0].hp, 2);
        assert!(battle.heroes[0].knocked_out);
        assert_eq!(battle.heroes[0].resolve_healing(), 0);
        battle.heroes[0].hp = battle.heroes[0].max_hp - 1;
        battle.healing_attack_hit(Source::bird(0), skill, 100);
        assert_eq!(battle.heroes[0].hp, battle.heroes[0].max_hp);
        assert_eq!(battle.heroes[0].resolve_healing(), 0);
    }
    #[test]
    fn healing_curse_callback_obeys_damage_participation_and_random_draw_gates() {
        let skill = *SKILLS
            .iter()
            .find(|s| s.id == "pig_attack_shaman_shaman")
            .unwrap();
        let mut battle = Battle::new(&Profile::default(), 0).unwrap();
        let initial = battle.rng_state;
        battle.healing_debuff_attack_finish(Source::pig(0), Source::bird(0), skill, 0);
        assert_eq!(battle.rng_state, initial);
        assert!(!battle.heroes[0].effects.has_curse());
        battle.heroes[0].knocked_out = true;
        battle.healing_debuff_attack_finish(Source::pig(0), Source::bird(0), skill, 10);
        assert_eq!(battle.rng_state, initial);
        battle.heroes[0].knocked_out = false;
        for chance in [0., 100.] {
            let parameters = if chance == 0. {
                &[("chance", 0.), ("healing_debuff", 50.), ("nodamage", 0.)][..]
            } else {
                &[("chance", 100.), ("healing_debuff", 50.), ("alleffect", 0.)][..]
            };
            let mut control = battle.clone();
            control.random_index(1_000_000);
            battle.healing_debuff_attack_finish(
                Source::pig(0),
                Source::bird(0),
                SkillDefinition {
                    parameters,
                    ..skill
                },
                0,
            );
            assert_eq!(battle.rng_state, control.rng_state);
        }
        assert_eq!(
            battle.heroes[0].effects.entries()[0].kind,
            EffectKind::HealingReduction(50.)
        );
    }
    #[test]
    fn stun_comparison_includes_both_endpoints() {
        assert!(stun_succeeds(0., 0.));
        assert!(!stun_succeeds(0., f32::EPSILON));
        assert!(stun_succeeds(100., 1.));
        assert!(stun_succeeds(15., 0.15));
        assert!(!stun_succeeds(15., 0.15001));
    }
    #[test]
    fn ordinary_stun_consumes_one_roll_even_for_zero_and_certain_chance() {
        let original = *SKILLS
            .iter()
            .find(|s| s.id == "bird_attack_white_bard")
            .unwrap();
        for parameters in [
            &[("chance", 0.), ("duration", 1.)][..],
            &[("chance", 100.), ("duration", 1.)][..],
        ] {
            let skill = SkillDefinition {
                parameters,
                ..original
            };
            let mut battle = Battle::new(&Profile::default(), 0).unwrap();
            let mut control = battle.clone();
            control.random_index(1_000_000);
            battle.stunning_attack_finish(Source::bird(0), Source::pig(0), skill, 1);
            assert_eq!(battle.rng_state, control.rng_state);
        }
    }
    #[test]
    fn zero_damage_and_missing_wet_state_do_not_draw_or_stun() {
        let original = *SKILLS
            .iter()
            .find(|s| s.id == "bird_attack_white_bard")
            .unwrap();
        let mut battle = Battle::new(&Profile::default(), 0).unwrap();
        let before = battle.rng_state;
        battle.stunning_attack_finish(Source::bird(0), Source::pig(0), original, 0);
        let wet = SkillDefinition {
            parameters: &[
                ("chance", 100.),
                ("duration", 1.),
                ("chance_to_stun_vs_wet", 100.),
            ],
            ..original
        };
        battle.stunning_attack_finish(Source::bird(0), Source::pig(0), wet, 10);
        assert_eq!(battle.rng_state, before);
        assert!(!battle.enemies[0].effects.is_stunned());
        let forced = SkillDefinition {
            parameters: &[("chance", 100.), ("duration", 1.), ("alleffect", 0.)],
            ..original
        };
        battle.stunning_attack_finish(Source::bird(0), Source::pig(0), forced, 0);
        assert_ne!(battle.rng_state, before);
        assert!(battle.enemies[0].effects.is_stunned());
    }

    #[test]
    fn healing_callback_uses_source_faction_and_skips_zero_health() {
        let mut battle = Battle::new(&Profile::default(), 0).unwrap();
        let skill = *SKILLS
            .iter()
            .find(|s| s.id == "bird_attack_white_cleric")
            .unwrap();
        for enemy in &mut battle.enemies {
            enemy.hp = 5;
            enemy.max_hp = 100;
        }
        battle.enemies[1].hp = 0;
        let birds: Vec<_> = battle.heroes.iter().map(|h| h.hp).collect();
        battle.healing_attack_hit(Source::pig(0), skill, 40);
        assert_eq!(battle.enemies[0].hp, 15);
        assert_eq!(battle.enemies[1].hp, 0);
        assert_eq!(
            battle.heroes.iter().map(|h| h.hp).collect::<Vec<_>>(),
            birds
        );
    }
}
