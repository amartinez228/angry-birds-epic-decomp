//! Optional deterministic presentation trace; simulation has no renderer clock.
use crate::{effects::Source, Battle, Fighter, Outcome};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum SkillKind {
    Attack,
    Support,
    Rage,
}

#[derive(Clone, Debug)]
pub struct BattleSnapshot {
    pub heroes: Vec<Fighter>,
    pub enemies: Vec<Fighter>,
    pub round: u32,
    pub wave: u32,
    pub rage: u32,
    pub outcome: Outcome,
    pub log: Vec<String>,
}

#[derive(Clone, Debug)]
pub enum CombatEvent {
    SkillStarted {
        source: Source,
        skill: usize,
        kind: SkillKind,
        /// Living simulation targets, including zero-damage attacks. Dynamic
        /// rage actions publish their nested attacks separately.
        targets: Vec<Source>,
        before: BattleSnapshot,
    },
    StateChanged(BattleSnapshot),
}

impl Battle {
    pub fn snapshot(&self) -> BattleSnapshot {
        BattleSnapshot {
            heroes: self.heroes.clone(),
            enemies: self.enemies.clone(),
            round: self.round,
            wave: self.wave,
            rage: self.rage,
            outcome: self.outcome,
            log: self.log.clone(),
        }
    }
    pub fn enable_presentation_trace(&mut self) {
        self.presentation_events.get_or_insert_with(Vec::new);
    }
    pub fn take_presentation_events(&mut self) -> Vec<CombatEvent> {
        self.presentation_events
            .as_mut()
            .map(std::mem::take)
            .unwrap_or_default()
    }
    pub(crate) fn trace_skill(
        &mut self,
        source: Source,
        skill: usize,
        kind: SkillKind,
        target: Option<Source>,
        all: bool,
    ) {
        if self.presentation_events.is_none() {
            return;
        }
        {
            let before = self.snapshot();
            let targets = target
                .map(|target| {
                    let faction = if target.side == crate::effects::Side::Birds {
                        &self.heroes
                    } else {
                        &self.enemies
                    };
                    faction
                        .iter()
                        .enumerate()
                        .filter(|(index, unit)| unit.alive() && (all || *index == target.index))
                        .map(|(index, _)| Source {
                            side: target.side,
                            index,
                        })
                        .collect()
                })
                .unwrap_or_default();
            self.presentation_events
                .as_mut()
                .unwrap()
                .push(CombatEvent::SkillStarted {
                    source,
                    skill,
                    kind,
                    targets,
                    before,
                });
        }
    }
    pub(crate) fn trace_state(&mut self) {
        if self.presentation_events.is_none() {
            return;
        }
        {
            let snapshot = self.snapshot();
            let events = self.presentation_events.as_mut().unwrap();
            // Preserve wave/terminal transitions after the damage snapshot;
            // the renderer must have a chance to show the defeated actor.
            events.push(CombatEvent::StateChanged(snapshot));
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{Action, Profile};
    #[test]
    fn tracing_preserves_seeded_combat_and_records_each_actor_in_order() {
        let profile = Profile {
            unlocked: 3,
            party: [0, 1, 3],
            ..Profile::default()
        };
        let mut plain = Battle::new_with_seed(&profile, 3, 123).unwrap();
        for enemy in &mut plain.enemies {
            enemy.hp = 10000;
            enemy.max_hp = 10000;
        }
        let mut traced = plain.clone();
        traced.enable_presentation_trace();
        for actor in 0..3 {
            plain.act(actor, Action::Attack(0)).unwrap();
            traced.act(actor, Action::Attack(0)).unwrap();
        }
        assert_eq!(
            plain
                .heroes
                .iter()
                .map(|fighter| fighter.hp)
                .collect::<Vec<_>>(),
            traced
                .heroes
                .iter()
                .map(|fighter| fighter.hp)
                .collect::<Vec<_>>()
        );
        assert_eq!(
            plain
                .enemies
                .iter()
                .map(|fighter| fighter.hp)
                .collect::<Vec<_>>(),
            traced
                .enemies
                .iter()
                .map(|fighter| fighter.hp)
                .collect::<Vec<_>>()
        );
        assert_eq!(
            (plain.round, plain.wave, plain.rage, plain.outcome),
            (traced.round, traced.wave, traced.rage, traced.outcome)
        );
        let events = traced.take_presentation_events();
        let actors: Vec<_> = events
            .iter()
            .filter_map(|event| match event {
                CombatEvent::SkillStarted { source, .. } => Some(*source),
                _ => None,
            })
            .collect();
        assert_eq!(
            &actors[..3],
            &[Source::bird(0), Source::bird(1), Source::bird(2)]
        );
        assert!(actors
            .iter()
            .any(|actor| actor.side == crate::effects::Side::Pigs));
        assert!(
            matches!(events.last(),Some(CombatEvent::StateChanged(snapshot)) if snapshot.round == traced.round)
        );
        assert!(traced.take_presentation_events().is_empty());
        assert!(plain.take_presentation_events().is_empty());
    }
    #[test]
    fn area_targets_are_preserved_without_damage_and_exclude_dead_units() {
        let mut battle = Battle::new(
            &Profile {
                unlocked: 3,
                ..Profile::default()
            },
            3,
        )
        .unwrap();
        battle.heroes[0].hat = crate::STARTER_HATS[1]; // Mage attacks all pigs.
        battle.heroes[0].attack = 0;
        battle.enemies[1].hp = 0;
        battle.enable_presentation_trace();
        let before = battle.enemies[0].hp;
        battle.act(0, Action::Attack(0)).unwrap();
        let events = battle.take_presentation_events();
        assert!(
            matches!(&events[0], CombatEvent::SkillStarted { targets, .. } if targets == &[Source::pig(0)])
        );
        assert_eq!(battle.enemies[0].hp, before);
    }

    #[test]
    fn rejected_support_does_not_publish_an_action() {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        battle.enable_presentation_trace();
        assert!(battle.act(2, Action::Support(0)).is_err());
        assert!(battle.take_presentation_events().is_empty());
        assert!(battle.heroes[2].can_act());
    }
}
