//! One owner for effect values, source identities, duration and cleansing.
//! Native evidence: BattleEffectGameData advances on its source faction's turn
//! event and removes finite effects when elapsed turns reach duration.
use crate::retaliation::Retaliation;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Side {
    Birds,
    Pigs,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Source {
    pub side: Side,
    pub index: usize,
}
impl Source {
    pub fn bird(index: usize) -> Self {
        Self {
            side: Side::Birds,
            index,
        }
    }
    pub fn pig(index: usize) -> Self {
        Self {
            side: Side::Pigs,
            index,
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq)]
pub enum EffectKind {
    Protection(f32),
    AttackBonus(f32),
    Weakness(f32),
    Vulnerability(f32),
    HealingReduction(f32),
    Poison(i32),
    Regeneration(i32),
    Stun,
    Taunt(usize),
    Retaliation(Retaliation),
}
impl EffectKind {
    pub fn is_curse(self) -> bool {
        matches!(
            self,
            Self::Weakness(_)
                | Self::Vulnerability(_)
                | Self::HealingReduction(_)
                | Self::Poison(_)
                | Self::Stun
                | Self::Taunt(_)
        )
    }
}

#[derive(Clone, Copy, Debug, PartialEq)]
pub struct ActiveEffect {
    pub skill_id: &'static str,
    pub source: Source,
    /// Negative durations persist; zero is expired.
    pub turns: i32,
    pub kind: EffectKind,
}

#[derive(Clone, Debug, Default, PartialEq)]
pub struct Effects {
    entries: Vec<ActiveEffect>,
}

impl Effects {
    pub fn entries(&self) -> &[ActiveEffect] {
        &self.entries
    }

    pub fn apply(&mut self, skill_id: &'static str, source: Source, turns: i32, kind: EffectKind) {
        if turns == 0 {
            return;
        }
        // A recast refreshes this source's same named effect, while distinct
        // sources/skills remain separate and can expire independently.
        self.entries.retain(|old| {
            !(old.skill_id == skill_id
                && old.source == source
                && std::mem::discriminant(&old.kind) == std::mem::discriminant(&kind))
        });
        self.entries.push(ActiveEffect {
            skill_id,
            source,
            turns,
            kind,
        });
    }

    pub fn advance_source_turn(&mut self, side: Side) {
        for effect in &mut self.entries {
            if effect.source.side == side && effect.turns > 0 {
                effect.turns -= 1;
            }
        }
        self.entries.retain(|effect| effect.turns != 0);
    }

    pub fn cleanse(&mut self) {
        self.entries.retain(|effect| !effect.kind.is_curse());
    }
    pub fn purge(&mut self) {
        self.entries.retain(|effect| effect.kind.is_curse());
    }
    pub fn has_curse(&self) -> bool {
        self.entries.iter().any(|effect| effect.kind.is_curse())
    }
    pub fn is_stunned(&self) -> bool {
        self.entries.iter().any(|e| e.kind == EffectKind::Stun)
    }
    pub fn is_poisoned(&self) -> bool {
        self.entries
            .iter()
            .any(|e| matches!(e.kind, EffectKind::Poison(_)))
    }
    pub fn is_protected(&self) -> bool {
        self.entries
            .iter()
            .any(|e| matches!(e.kind, EffectKind::Protection(_)))
    }

    pub fn protection(&self) -> f32 {
        self.entries
            .iter()
            .filter_map(|e| match e.kind {
                EffectKind::Protection(value) => Some(value),
                _ => None,
            })
            .sum::<f32>()
            .clamp(0., 100.)
    }
    pub fn attack_percent(&self) -> f32 {
        (100.
            + self
                .entries
                .iter()
                .map(|e| match e.kind {
                    EffectKind::AttackBonus(value) => value,
                    EffectKind::Weakness(value) => -value,
                    _ => 0.,
                })
                .sum::<f32>())
        .max(0.)
    }
    pub fn vulnerability(&self) -> f32 {
        self.entries
            .iter()
            .filter_map(|e| match e.kind {
                EffectKind::Vulnerability(value) => Some(value),
                _ => None,
            })
            .sum()
    }
    pub fn poison_damage(&self) -> i32 {
        self.entries
            .iter()
            .filter_map(|e| match e.kind {
                EffectKind::Poison(value) => Some(value),
                _ => None,
            })
            .sum()
    }
    pub fn regeneration(&self) -> i32 {
        self.entries
            .iter()
            .filter_map(|e| match e.kind {
                EffectKind::Regeneration(value) => Some(value),
                _ => None,
            })
            .sum()
    }
    /// OnReceiveHealing (10), ReduceHealingReceived (43): each effect
    /// multiplies the running float; HealCurrentTurn normalizes after the pass.
    /// Native 0x51a7ff / 0x508843. Other healing trigger operations are pending.
    pub(crate) fn reduce_healing(&self, amount: f32) -> f32 {
        self.entries.iter().fold(amount, |amount, effect| {
            if let EffectKind::HealingReduction(reduction) = effect.kind {
                ((100. - reduction) * amount) / 100.
            } else {
                amount
            }
        })
    }
    pub fn taunt_target(&self) -> Option<usize> {
        self.entries.iter().rev().find_map(|e| match e.kind {
            EffectKind::Taunt(index) => Some(index),
            _ => None,
        })
    }
    pub fn retaliation_damage(&self, received: i32) -> i32 {
        self.entries
            .iter()
            .filter_map(|e| match e.kind {
                EffectKind::Retaliation(value) => Some(value.damage(received)),
                _ => None,
            })
            .sum()
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn finite_effects_tick_only_on_source_faction_and_permanent_effects_persist() {
        let mut effects = Effects::default();
        effects.apply("shield", Source::bird(0), 2, EffectKind::Protection(55.));
        effects.apply("passive", Source::bird(0), -1, EffectKind::AttackBonus(10.));
        effects.advance_source_turn(Side::Pigs);
        assert_eq!(effects.protection(), 55.);
        effects.advance_source_turn(Side::Birds);
        assert_eq!(effects.protection(), 55.);
        effects.advance_source_turn(Side::Birds);
        assert_eq!(effects.protection(), 0.);
        assert_eq!(effects.attack_percent(), 110.);
    }
    #[test]
    fn recast_refreshes_same_effect_without_overwriting_other_sources() {
        let mut effects = Effects::default();
        effects.apply("buff", Source::bird(0), 3, EffectKind::AttackBonus(25.));
        effects.advance_source_turn(Side::Birds);
        effects.apply("buff", Source::bird(0), 3, EffectKind::AttackBonus(25.));
        effects.apply("other", Source::bird(1), 1, EffectKind::AttackBonus(15.));
        assert_eq!(effects.attack_percent(), 140.);
        effects.advance_source_turn(Side::Birds);
        assert_eq!(effects.attack_percent(), 125.);
        assert_eq!(effects.entries().len(), 1);
        assert_eq!(effects.entries()[0].turns, 2);
    }
    #[test]
    fn cleanse_and_purge_remove_opposite_categories_without_changing_the_other() {
        let mut effects = Effects::default();
        effects.apply("shield", Source::bird(0), 2, EffectKind::Protection(55.));
        effects.apply("poison", Source::pig(0), 3, EffectKind::Poison(30));
        let mut purged = effects.clone();
        purged.purge();
        assert_eq!(purged.protection(), 0.);
        assert_eq!(purged.poison_damage(), 30);
        effects.cleanse();
        assert_eq!(effects.protection(), 55.);
        assert!(!effects.is_poisoned());
    }
}
