//! Original x86 NormalizeDamage -> Mathf.RoundToInt boundary.
//! The native body rounds half to even, then cvttsd2si converts to signed int.
pub(crate) fn normalize(value: f32) -> i32 {
    let rounded = value.round_ties_even();
    if !(-2147483648.0..2147483648.0).contains(&rounded) {
        // x86 integer-indefinite result for NaN, infinity and out-of-range.
        i32::MIN
    } else {
        rounded as i32
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn native_midpoints_round_to_even_in_both_directions() {
        for (value, expected) in [
            (0.5, 0),
            (1.5, 2),
            (2.5, 2),
            (3.5, 4),
            (-0.5, 0),
            (-1.5, -2),
            (-2.5, -2),
            (-3.5, -4),
        ] {
            assert_eq!(normalize(value), expected);
        }
        assert_eq!(normalize(2.49999), 2);
        assert_eq!(normalize(2.50001), 3);
    }
    #[test]
    fn x86_conversion_limits_and_invalid_results_match() {
        assert_eq!(normalize(2147483520.), 2147483520);
        for value in [
            2147483648.,
            -2147483648.,
            f32::NAN,
            f32::INFINITY,
            f32::NEG_INFINITY,
        ] {
            assert_eq!(normalize(value), i32::MIN);
        }
    }

    #[test]
    fn heal_queue_accumulates_before_rounding_and_drains_once() {
        let mut battle = crate::Battle::new(&crate::Profile::default(), 0).unwrap();
        let unit = &mut battle.heroes[0];
        unit.hp = 100;
        unit.knocked_out = true;
        unit.queue_healing(0.25);
        unit.queue_healing(0.25);
        assert_eq!(unit.resolve_healing(), 0);
        assert_eq!(unit.hp, 100);
        unit.queue_healing(1.25);
        unit.queue_healing(0.25);
        assert_eq!(unit.resolve_healing(), 2);
        assert_eq!(unit.hp, 102);
        assert_eq!(unit.resolve_healing(), 0);
        assert_eq!(unit.hp, 102);
        assert!(unit.knocked_out);
        unit.queue_healing(50.5);
        assert_eq!(unit.resolve_healing(), 50);
        assert_eq!(unit.hp, unit.max_hp);
        assert_eq!(unit.resolve_healing(), 0);
    }

    #[test]
    fn nonpositive_queued_heals_clear_without_damaging_the_target() {
        let mut battle = crate::Battle::new(&crate::Profile::default(), 0).unwrap();
        let unit = &mut battle.heroes[0];
        let hp = unit.hp;
        unit.queue_healing(-1.5);
        assert_eq!(unit.resolve_healing(), -2);
        assert_eq!(unit.resolve_healing(), 0);
        assert_eq!(unit.hp, hp);
    }

    #[test]
    fn original_healing_curses_reduce_normalized_heals_and_drain_queue() {
        for (skill_id, expected) in [
            ("pig_attack_shaman_shaman", 5),
            ("pig_attack_shaman_witch_doctor_first", 3),
            ("pig_attack_shaman_witch_doctor", 0),
        ] {
            let skill = crate::SKILLS.iter().find(|s| s.id == skill_id).unwrap();
            let mut battle = crate::Battle::new(&crate::Profile::default(), 0).unwrap();
            let unit = &mut battle.heroes[0];
            unit.hp = 1;
            unit.effects.apply(
                skill.id,
                crate::Source::pig(0),
                skill.duration,
                crate::EffectKind::HealingReduction(skill.parameter("healing_debuff", 0.)),
            );
            unit.queue_healing(10.);
            assert_eq!(unit.resolve_healing(), expected, "{skill_id}");
            assert_eq!(unit.hp, 1 + expected);
            assert_eq!(unit.resolve_healing(), 0);
        }
    }

    #[test]
    fn healing_curses_multiply_without_rounding_between_effects() {
        let mut battle = crate::Battle::new(&crate::Profile::default(), 0).unwrap();
        let unit = &mut battle.heroes[0];
        unit.max_hp = 1000;
        unit.hp = 1;
        unit.effects.apply(
            "half",
            crate::Source::pig(0),
            3,
            crate::EffectKind::HealingReduction(50.),
        );
        unit.effects.apply(
            "seventy",
            crate::Source::pig(1),
            3,
            crate::EffectKind::HealingReduction(70.),
        );
        unit.queue_healing(100.);
        assert_eq!(unit.resolve_healing(), 15); // Multiplication, not additive reduction.
        unit.queue_healing(3.);
        assert_eq!(unit.resolve_healing(), 0); // 3 * .5 * .3 = .45; no intermediate 1.5 -> 2.
        assert_eq!(unit.hp, 16);
        unit.effects.cleanse();
        unit.effects.apply(
            "half",
            crate::Source::pig(0),
            3,
            crate::EffectKind::HealingReduction(50.),
        );
        unit.queue_healing(2.6);
        assert_eq!(unit.resolve_healing(), 2); // Initial 2.6 -> 3, then 1.5 -> 2.
    }

    #[test]
    fn healing_curse_cleanse_purge_refresh_and_source_expiry() {
        let mut battle = crate::Battle::new(&crate::Profile::default(), 0).unwrap();
        let unit = &mut battle.heroes[0];
        unit.hp = 1;
        for _ in 0..2 {
            unit.effects.apply(
                "curse",
                crate::Source::pig(0),
                3,
                crate::EffectKind::HealingReduction(50.),
            );
        }
        assert_eq!(unit.effects.entries().len(), 1);
        assert!(unit.effects.has_curse());
        unit.effects.purge();
        unit.effects.advance_source_turn(crate::Side::Birds);
        unit.heal(10);
        assert_eq!(unit.hp, 6);
        for _ in 0..3 {
            unit.effects.advance_source_turn(crate::Side::Pigs);
        }
        assert!(!unit.effects.has_curse());
        unit.heal(10);
        assert_eq!(unit.hp, 16);
        unit.effects.apply(
            "curse",
            crate::Source::pig(0),
            3,
            crate::EffectKind::HealingReduction(100.),
        );
        unit.effects.cleanse();
        unit.heal(10);
        assert_eq!(unit.hp, 26);
    }
}
