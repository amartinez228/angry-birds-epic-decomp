//! Distinct reactive effects: source-scaled thorn damage versus dealt-damage reflection.

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum Retaliation {
    /// ThornSkill captures source.ModifiedAttack * configured percent at cast time.
    Fixed { damage: i32 },
    /// Rogue taunt/retaliation returns a portion of damage actually received.
    Reflected { percent: f32 },
}

impl Retaliation {
    pub fn damage(self, received: i32) -> i32 {
        match self {
            Self::Fixed { damage, .. } => damage.max(0),
            Self::Reflected { percent, .. } => super::percent(received, percent).max(0),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn thorn_damage_is_fixed_while_reflection_scales_with_received_damage() {
        let thorn = Retaliation::Fixed { damage: 30 };
        assert_eq!(thorn.damage(5), 30);
        assert_eq!(thorn.damage(100), 30);
        let reflection = Retaliation::Reflected { percent: 100. };
        assert_eq!(reflection.damage(5), 5);
        assert_eq!(reflection.damage(100), 100);
    }
}
