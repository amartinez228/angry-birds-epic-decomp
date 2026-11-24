//! Source-scaled secondary hits sampled without replacement. The standard
//! variant runs after primary hits; the stun variant runs before and retains
//! its selected targets for later independent stun rolls.
//! Exact initiative/view membership and remaining native trigger hooks are pending.
use crate::effects::EffectKind;
use crate::{
    effects::{Side, Source},
    Battle, Fighter, SkillDefinition,
};

impl Battle {
    fn collateral_unit(&self, source: Source) -> &Fighter {
        match source.side {
            Side::Birds => &self.heroes[source.index],
            Side::Pigs => &self.enemies[source.index],
        }
    }
    fn collateral_unit_mut(&mut self, source: Source) -> &mut Fighter {
        match source.side {
            Side::Birds => &mut self.heroes[source.index],
            Side::Pigs => &mut self.enemies[source.index],
        }
    }
    pub(crate) fn collateral_hit(
        &mut self,
        source: Source,
        primary: Source,
        skill: SkillDefinition,
    ) -> i32 {
        if skill.template != "AttackWithCollateralDamage" {
            return 0;
        }
        self.apply_collateral(source, primary, skill, None)
    }

    pub(crate) fn collateral_before_hit(
        &mut self,
        source: Source,
        primary: Source,
        skill: SkillDefinition,
        selected: &mut Vec<Source>,
    ) -> i32 {
        if skill.template != "AttackWithCollateralDamageAndStun" {
            return 0;
        }
        self.apply_collateral(source, primary, skill, Some(selected))
    }

    fn apply_collateral(
        &mut self,
        source: Source,
        primary: Source,
        skill: SkillDefinition,
        mut selected: Option<&mut Vec<Source>>,
    ) -> i32 {
        let side = if source.side == Side::Birds {
            Side::Pigs
        } else {
            Side::Birds
        };
        let faction = if side == Side::Pigs {
            &self.enemies
        } else {
            &self.heroes
        };
        let mut candidates: Vec<_> = faction
            .iter()
            .enumerate()
            .filter(|(_, unit)| unit.alive())
            .map(|(index, _)| Source { side, index })
            .filter(|&candidate| candidate != primary)
            .collect();
        let count = (skill.parameter("additional_enemies_affected", 0.).ceil() as usize)
            .min(candidates.len());
        let mut total = 0;
        for _ in 0..count {
            let index = self.random_index(candidates.len());
            let target = candidates.remove(index);
            if let Some(selected) = selected.as_mut() {
                selected.push(target);
            }
            // Native reads ModifiedAttack afresh and ignores the callback's
            // primary-damage argument. Primary death/shield/overkill cannot
            // reduce this damage base. Source death does not cancel this hook.
            let power = self.collateral_unit(source).attack_value();
            let amount = crate::percent(power, skill.parameter("collateral_damage_in_percent", 0.));
            let damage = self.collateral_unit_mut(target).damage(amount);
            total += damage;
            let retaliation = self
                .collateral_unit(target)
                .effects
                .retaliation_damage(damage);
            self.collateral_unit_mut(source).damage(retaliation);
            self.say(format!(
                "{}: collateral hits {} for {damage} damage.",
                skill.name,
                self.collateral_unit(target).name
            ));
            self.trace_state();
        }
        total
    }

    pub(crate) fn collateral_stun_finish(
        &mut self,
        source: Source,
        primary: Source,
        skill: SkillDefinition,
        selected: &[Source],
        primary_damage: i32,
    ) {
        // Native participation is represented by living fighters here. The
        // later callback requires primary damage or an explicit effect flag.
        if skill.template != "AttackWithCollateralDamageAndStun"
            || !self.collateral_unit(primary).alive()
            || (primary_damage <= 0
                && !skill.has_parameter("alleffect")
                && !skill.has_parameter("nodamage"))
        {
            return;
        }
        // Native ShareableActionPart rolls once for the main target, then once
        // for every recorded secondary entry, including repeated entries from
        // multiple primary hits. It consumes a roll even at chance zero.
        for (target, chance) in std::iter::once((primary, skill.parameter("chance", 0.))).chain(
            selected
                .iter()
                .map(|&target| (target, skill.parameter("collateral_stun_chance", 0.))),
        ) {
            let rolled = (self.random_index(1_000_000) as f32) < chance * 10000.;
            if rolled && self.collateral_unit(target).alive() {
                self.collateral_unit_mut(target).effects.apply(
                    skill.id,
                    source,
                    skill.parameter("stun_duration", 0.) as i32,
                    EffectKind::Stun,
                );
                self.say(format!(
                    "{} stuns {}.",
                    skill.name,
                    self.collateral_unit(target).name
                ));
            }
        }
        self.trace_state();
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{effects::EffectKind, retaliation::Retaliation, Profile, HATS, PIGS};
    fn stun_skill() -> SkillDefinition {
        crate::SKILLS
            .iter()
            .find(|skill| skill.id == "pig_attack_brute_battering")
            .copied()
            .unwrap()
    }

    #[test]
    fn stun_variant_records_only_selected_extras_and_uses_separate_chance() {
        let mut battle = spies();
        let skill = SkillDefinition {
            parameters: &[
                ("additional_enemies_affected", 1.),
                ("collateral_damage_in_percent", 40.),
                ("chance", 0.),
                ("collateral_stun_chance", 100.),
                ("stun_duration", 2.),
            ],
            ..stun_skill()
        };
        let mut selected = Vec::new();
        assert_eq!(
            battle.collateral_before_hit(Source::bird(0), Source::pig(0), skill, &mut selected),
            40
        );
        assert_eq!(selected.len(), 1);
        assert_eq!(battle.enemies[0].hp, 1000);
        battle.collateral_stun_finish(Source::bird(0), Source::pig(0), skill, &selected, 100);
        assert!(!battle.enemies[0].effects.is_stunned());
        for (i, enemy) in battle.enemies.iter().enumerate().skip(1) {
            assert_eq!(
                enemy.effects.is_stunned(),
                selected.contains(&Source::pig(i))
            );
        }
        let effect = battle.collateral_unit(selected[0]).effects.entries()[0];
        assert_eq!((effect.source, effect.turns), (Source::bird(0), 2));
    }

    #[test]
    fn repeated_secondary_entries_keep_independent_zero_chance_rolls() {
        let mut battle = spies();
        let skill = SkillDefinition {
            parameters: &[
                ("additional_enemies_affected", 2.),
                ("collateral_damage_in_percent", 10.),
                ("chance", 0.),
                ("collateral_stun_chance", 0.),
                ("stun_duration", 1.),
            ],
            ..stun_skill()
        };
        let mut selected = Vec::new();
        for _ in 0..2 {
            battle.collateral_before_hit(Source::bird(0), Source::pig(0), skill, &mut selected);
        }
        assert_eq!(selected.len(), 4);
        let mut control = battle.clone();
        for _ in 0..5 {
            control.random_index(1_000_000);
        }
        battle.collateral_stun_finish(Source::bird(0), Source::pig(0), skill, &selected, 100);
        assert_eq!(battle.random_index(65536), control.random_index(65536));
        assert!(battle
            .enemies
            .iter()
            .all(|enemy| !enemy.effects.is_stunned()));
    }

    #[test]
    fn post_damage_stun_skips_zero_primary_damage_unless_alleffect_is_present() {
        let mut battle = spies();
        let skill = stun_skill();
        battle.collateral_stun_finish(Source::bird(0), Source::pig(0), skill, &[], 0);
        assert!(!battle.enemies[0].effects.is_stunned());
        let forced = SkillDefinition {
            parameters: &[("chance", 100.), ("stun_duration", 1.), ("alleffect", 0.)],
            ..skill
        };
        battle.collateral_stun_finish(Source::bird(0), Source::pig(0), forced, &[], 0);
        assert!(battle.enemies[0].effects.is_stunned());
    }

    #[test]
    fn defeated_primary_skips_its_after_damage_stun_callback() {
        let mut battle = spies();
        battle.enemies[0].hp = 0;
        let skill = SkillDefinition {
            parameters: &[
                ("chance", 100.),
                ("collateral_stun_chance", 100.),
                ("stun_duration", 1.),
            ],
            ..stun_skill()
        };
        battle.collateral_stun_finish(Source::bird(0), Source::pig(0), skill, &[Source::pig(1)], 1);
        assert!(battle
            .enemies
            .iter()
            .all(|enemy| !enemy.effects.is_stunned()));
    }
    fn spies() -> Battle {
        let mut battle = Battle::new(
            &Profile {
                unlocked: 3,
                ..Profile::default()
            },
            3,
        )
        .unwrap();
        battle.heroes[0].hat = HATS.iter().position(|hat| hat.id == "skin_spies").unwrap();
        battle.heroes[0].attack = 100;
        battle.heroes[0].hp = 10000;
        let enemy = battle.enemies[0].clone();
        battle.enemies = vec![enemy.clone(), enemy.clone(), enemy];
        for enemy in &mut battle.enemies {
            enemy.hp = 1000;
            enemy.max_hp = 1000;
        }
        battle
    }
    #[test]
    fn spies_collateral_uses_attack_even_when_primary_is_shielded_or_overkilled() {
        let mut battle = spies();
        battle.enemies[0].effects.apply(
            "immunity",
            Source::pig(0),
            -1,
            EffectKind::Protection(100.),
        );
        battle.strike(0, 0).unwrap();
        assert_eq!(
            battle
                .enemies
                .iter()
                .map(|enemy| enemy.hp)
                .collect::<Vec<_>>(),
            vec![1000, 965, 965]
        );
        let mut overkill = spies();
        overkill.enemies[0].hp = 1;
        overkill.strike(0, 0).unwrap();
        assert_eq!(
            overkill
                .enemies
                .iter()
                .map(|enemy| enemy.hp)
                .collect::<Vec<_>>(),
            vec![0, 965, 965]
        );
    }
    #[test]
    fn source_buffs_and_each_secondary_targets_protection_are_applied() {
        let mut battle = spies();
        battle.heroes[0].attack = 200;
        battle.heroes[0]
            .effects
            .apply("buff", Source::bird(0), -1, EffectKind::AttackBonus(50.));
        battle.enemies[1]
            .effects
            .apply("shield", Source::pig(1), -1, EffectKind::Protection(60.));
        battle.strike(0, 0).unwrap();
        assert_eq!(
            battle
                .enemies
                .iter()
                .map(|enemy| enemy.hp)
                .collect::<Vec<_>>(),
            vec![745, 958, 895]
        );
    }
    #[test]
    fn primary_retaliation_does_not_cancel_secondary_callback_and_dead_targets_are_skipped() {
        let mut battle = spies();
        battle.heroes[0].hp = 1;
        battle.enemies[0].effects.apply(
            "thorns",
            Source::pig(0),
            -1,
            EffectKind::Retaliation(Retaliation::Fixed { damage: 5 }),
        );
        battle.enemies[2].hp = 0;
        battle.strike(0, 0).unwrap();
        assert_eq!(battle.heroes[0].hp, 0);
        assert_eq!(battle.enemies[1].hp, 965);
        assert_eq!(battle.enemies[2].hp, 0);
    }
    #[test]
    fn ninja_hits_primary_once_and_two_distinct_secondary_birds() {
        let mut battle = spies();
        battle.enemies.truncate(1);
        battle.enemies[0].pig = Some(
            PIGS.iter()
                .position(|pig| pig.id == "pig_ninja_bowman")
                .unwrap(),
        );
        battle.enemies[0].attack = 100;
        for hero in &mut battle.heroes {
            hero.hp = 1000;
            hero.max_hp = 1000;
        }
        battle.enemy_action(0);
        let mut damage: Vec<_> = battle.heroes.iter().map(|hero| 1000 - hero.hp).collect();
        damage.sort();
        assert_eq!(damage, vec![50, 50, 100]);
    }
    #[test]
    fn capped_random_selection_is_reproducible_and_never_hits_one_target_twice() {
        let mut battle = spies();
        let enemy = battle.enemies[0].clone();
        battle.enemies.extend([enemy.clone(), enemy.clone(), enemy]);
        let skill = crate::SKILLS
            .iter()
            .find(|skill| skill.id == "pig_attack_ninja_bowman")
            .copied()
            .unwrap();
        let mut repeated = battle.clone();
        repeated.enable_presentation_trace();
        assert_eq!(
            battle.collateral_hit(Source::bird(0), Source::pig(0), skill),
            100
        );
        repeated.collateral_hit(Source::bird(0), Source::pig(0), skill);
        let hp: Vec<_> = battle.enemies.iter().map(|enemy| enemy.hp).collect();
        assert_eq!(
            hp,
            repeated
                .enemies
                .iter()
                .map(|enemy| enemy.hp)
                .collect::<Vec<_>>()
        );
        assert_eq!(hp[0], 1000);
        assert_eq!(hp.iter().filter(|&&hp| hp == 950).count(), 2);
        assert_eq!(repeated.take_presentation_events().len(), 2);
    }
}
