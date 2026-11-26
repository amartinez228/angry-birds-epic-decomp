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
}
