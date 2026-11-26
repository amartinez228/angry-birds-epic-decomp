//! Enemy combo selection follows the native BattleService combo routines.
//! Special templates and support feasibility checks are still incomplete.
use crate::{
    effects::{EffectKind, Source},
    percent,
    retaliation::Retaliation,
    Battle, Fighter, SkillDefinition, PIGS, SKILLS,
};

#[derive(Clone, Debug, Default)]
pub struct EnemyAi {
    combo: Option<usize>,
    next: usize,
    charge: Option<Charging>,
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::{effects::Effects, Profile};
    #[test]
    fn enemy_conditional_damage_uses_the_same_curse_rules_as_birds() {
        let mut battle = battle("pig_minion_rogue_bird1_1hit");
        battle.enemies[0].attack = 200;
        let skill = SKILLS
            .iter()
            .find(|skill| skill.id == "pig_attack_pigmies_spectators_b")
            .copied()
            .unwrap();
        battle.heroes[0]
            .effects
            .apply("curse", Source::pig(0), 2, EffectKind::Weakness(10.));
        battle.execute_enemy_skill(0, 0, skill);
        assert_eq!(battle.heroes[0].hp, 9685); // Three 70 * 1.5 hits.
        battle.heroes[0].effects.cleanse();
        battle.execute_enemy_skill(0, 0, skill);
        assert_eq!(battle.heroes[0].hp, 9475);
        // Wet/ink/etc. have no engine status model yet: a stun must not stand
        // in for one of those unrelated conditional flags.
        let wet = SKILLS
            .iter()
            .find(|skill| skill.id == "pig_attack_drone_blue")
            .copied()
            .unwrap();
        battle.heroes[0]
            .effects
            .apply("stun", Source::pig(0), 1, EffectKind::Stun);
        battle.execute_enemy_skill(0, 0, wet);
        assert_eq!(battle.heroes[0].hp, 9275);
    }
    #[test]
    fn collateral_stun_executes_secondary_damage_before_primary_then_stuns_primary() {
        let mut battle = battle("pig_brute_brute_bird1");
        for hero in &mut battle.heroes {
            hero.hp = 1000;
            hero.max_hp = 1000;
        }
        battle.enemies[0].attack = 100;
        battle.enable_presentation_trace();
        let skill = SKILLS
            .iter()
            .find(|skill| skill.id == "pig_attack_brute_battering")
            .copied()
            .unwrap();
        battle.execute_enemy_skill(0, 0, skill);
        assert_eq!(
            battle.heroes.iter().map(|hero| hero.hp).collect::<Vec<_>>(),
            vec![750, 875, 875]
        );
        assert!(battle.heroes[0].effects.is_stunned());
        assert!(!battle.heroes[1].effects.is_stunned() && !battle.heroes[2].effects.is_stunned());
        let events = battle.take_presentation_events();
        let crate::combat_events::CombatEvent::StateChanged(first) = &events[0] else {
            panic!("Secondary damage state");
        };
        assert_eq!(
            first.heroes[0].hp, 1000,
            "Primary damage must follow collateral"
        );
        assert_eq!(first.heroes.iter().filter(|hero| hero.hp == 875).count(), 1);
    }

    fn battle(pig_id: &str) -> Battle {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = Battle::new_with_seed(&profile, 3, 123).unwrap();
        battle.enemies.truncate(1);
        let pig = PIGS.iter().position(|pig| pig.id == pig_id).unwrap();
        battle.enemies[0].pig = Some(pig);
        battle.enemies[0].name = PIGS[pig].name.into();
        battle.enemies[0].hp = 10000;
        battle.enemies[0].max_hp = 10000;
        battle.enemies[0].attack = 10;
        battle.enemies[0]
            .effects
            .apply("forced-target", Source::bird(0), 99, EffectKind::Taunt(0));
        for hero in &mut battle.heroes {
            hero.hp = 10000;
            hero.max_hp = 10000;
        }
        battle
    }

    #[test]
    fn original_brute_charges_three_turns_then_deals_three_hundred_percent() {
        let mut battle = battle("pig_brute_brute_bird1");
        for turns in [3, 2, 1] {
            battle.enemy_action(0);
            assert_eq!(battle.heroes[0].hp, 10000);
            assert_eq!(battle.enemies[0].ai.charging_turns(), Some(turns));
        }
        battle.enemy_action(0);
        assert_eq!(battle.heroes[0].hp, 9970);
        assert_eq!(battle.enemies[0].ai.charging_turns(), None);
        battle.enemy_action(0);
        assert_eq!(battle.enemies[0].ai.charging_turns(), Some(3));
    }

    #[test]
    fn original_guard_captain_shields_then_attacks_three_times_before_repeating() {
        let mut battle = battle("pig_knight_guard_captain_bird1");
        for cycle in 0..2 {
            battle.enemy_action(0);
            assert_eq!(battle.enemies[0].effects.protection(), 30.);
            assert_eq!(battle.heroes[0].hp, 10000 - cycle * 30);
            for _ in 0..3 {
                battle.enemy_action(0);
            }
        }
        assert_eq!(battle.heroes[0].hp, 9940);
    }

    #[test]
    fn original_rogue_hits_twice_and_stops_if_retaliation_kills_attacker() {
        let mut battle = battle("pig_minion_rogue_bird1_1hit");
        battle.enemy_action(0);
        assert_eq!(battle.heroes[0].hp, 9980);
        battle.heroes[0].effects.apply(
            "thorns",
            Source::bird(1),
            3,
            EffectKind::Retaliation(Retaliation::Fixed { damage: 10000 }),
        );
        battle.enemy_action(0);
        assert_eq!(battle.heroes[0].hp, 9970);
        assert!(!battle.enemies[0].alive());
    }

    #[test]
    fn original_pyropig_charge_releases_area_damage() {
        let mut battle = battle("pig_caster_pyropig_bird2");
        battle.enemy_action(0);
        battle.enemy_action(0);
        assert!(battle.heroes.iter().all(|hero| hero.hp == 10000));
        battle.enemy_action(0);
        assert!(battle.heroes.iter().all(|hero| hero.hp == 9980));
    }

    #[test]
    fn original_pirate_multihit_applies_weakness_with_pig_source() {
        let mut battle = battle("pig_pirate_pirate");
        battle.enemy_action(0);
        assert_eq!(battle.heroes[0].hp, 9980);
        assert_eq!(
            battle.heroes[0].attack_value(),
            percent(battle.heroes[0].attack, 80.)
        );
        let debuff = battle.heroes[0]
            .effects
            .entries()
            .iter()
            .find(|effect| matches!(effect.kind, EffectKind::Weakness(_)))
            .unwrap();
        assert_eq!(debuff.source, Source::pig(0));
        assert_eq!(debuff.turns, 1);
    }

    #[test]
    fn original_matey_uses_direct_damage_and_poison_from_attack_power() {
        let mut battle = battle("pig_pirate_matey");
        battle.enemy_action(0);
        assert_eq!(battle.heroes[0].hp, 9996);
        assert_eq!(battle.heroes[0].effects.poison_damage(), 10);
        assert_eq!(battle.heroes[0].effects.entries()[0].turns, 2);
    }

    #[test]
    fn cage_waits_instead_of_attacking() {
        let mut battle = battle("pig_yellow_cage");
        battle.enemy_action(0);
        assert!(battle.heroes.iter().all(|hero| hero.hp == 10000));
        assert_eq!(battle.rage, 0);
    }

    #[test]
    fn weighted_combos_are_seeded_and_preserve_each_full_chain() {
        let mut first = battle("pig_moustache_pirate_captain_boss");
        let mut second = first.clone();
        let mut chains = std::collections::HashSet::new();
        for _ in 0..100 {
            let a = first.next_enemy_skill(0).unwrap();
            let b = second.next_enemy_skill(0).unwrap();
            assert_eq!(a, b);
            chains.insert(a);
            if SKILLS[a].target_type == 2 {
                assert_eq!(
                    SKILLS[first.next_enemy_skill(0).unwrap()].id,
                    "pig_attack_moustache_pirate_captain_01"
                );
                second.next_enemy_skill(0);
            }
        }
        assert_eq!(chains.len(), 2);
    }

    #[test]
    fn targeting_uses_current_health_and_respects_ally_self_exclusion() {
        let mut battle = battle("pig_shaman_shaman");
        battle.heroes[0].hp = 300;
        battle.heroes[1].hp = 200;
        battle.heroes[2].hp = 100;
        battle.enemies[0].effects = Effects::default();
        let attack = SKILLS
            .iter()
            .find(|skill| skill.id == "pig_attack_shaman_shaman")
            .copied()
            .unwrap();
        assert_eq!(
            battle.enemy_target(
                0,
                SkillDefinition {
                    targeting: 1,
                    ..attack
                }
            ),
            Some(2)
        );
        assert_eq!(
            battle.enemy_target(
                0,
                SkillDefinition {
                    targeting: 3,
                    ..attack
                }
            ),
            Some(0)
        );
        let heal = SKILLS
            .iter()
            .find(|skill| skill.id == "pig_support_shaman_shaman")
            .copied()
            .unwrap();
        assert_eq!(battle.enemy_target(0, heal), Some(0));
        assert_eq!(
            battle.enemy_target(
                0,
                SkillDefinition {
                    target_self: false,
                    ..heal
                }
            ),
            None
        );
    }

    #[test]
    fn enemy_heal_uses_caster_health_and_cleanses() {
        let mut battle = battle("pig_shaman_shaman");
        battle.enemies[0].hp = 100;
        battle.enemies[0]
            .effects
            .apply("poison", Source::bird(0), 3, EffectKind::Poison(30));
        let heal = SKILLS
            .iter()
            .find(|skill| skill.id == "pig_support_shaman_shaman")
            .copied()
            .unwrap();
        battle.execute_enemy_skill(0, 0, heal);
        assert_eq!(battle.enemies[0].hp, 3100);
        assert!(!battle.enemies[0].effects.is_poisoned());
    }

    #[test]
    fn enemy_thorns_react_to_each_bird_hit_and_stop_a_dead_bird() {
        let mut battle = battle("pig_knight_guard_captain_bird1");
        battle.heroes[0].hp = 5;
        battle.enemies[0].effects.apply(
            "thorns",
            Source::pig(0),
            3,
            EffectKind::Retaliation(Retaliation::Fixed { damage: 10 }),
        );
        let before = battle.enemies[0].hp;
        battle.strike(0, 0).unwrap();
        assert_eq!(battle.heroes[0].hp, 0);
        assert_eq!(
            battle.enemies[0].hp,
            before - percent(battle.heroes[0].attack, 115.)
        );
    }

    #[test]
    fn leech_uses_actual_health_removed_and_does_not_revive_dead_attacker() {
        let mut battle = battle("pig_ghost_shipkobold_boss");
        battle.enemies[0].hp = 100;
        battle.heroes[0].hp = 12;
        battle.enemy_action(0);
        assert_eq!(battle.heroes[0].hp, 0);
        assert_eq!(battle.enemies[0].hp, 112);
    }

    #[test]
    fn charge_retargets_when_its_original_target_dies() {
        let mut battle = battle("pig_brute_brute_bird1");
        battle.enemy_action(0);
        battle.heroes[0].hp = 0;
        for _ in 0..3 {
            battle.enemy_action(0);
        }
        assert_eq!(battle.heroes[1].hp + battle.heroes[2].hp, 19970);
        assert_eq!(battle.enemies[0].ai.charging_turns(), None);
    }
}

#[derive(Clone, Copy, Debug)]
struct Charging {
    skill: usize,
    target: usize,
    turns: u32,
}

impl EnemyAi {
    pub fn charging_turns(&self) -> Option<u32> {
        self.charge.map(|charge| charge.turns)
    }
}

impl Battle {
    fn next_enemy_skill(&mut self, enemy: usize) -> Option<usize> {
        let pig = PIGS[self.enemies[enemy].pig?];
        let ai = &self.enemies[enemy].ai;
        let active = ai
            .combo
            .filter(|&index| ai.next < pig.combos[index].skills.len());
        let combo = if let Some(index) = active {
            index
        } else {
            let total: f32 = pig.combos.iter().map(|combo| combo.weight).sum();
            if total <= 0. {
                self.enemies[enemy].ai.combo = None;
                return pig.skills.first().copied();
            }
            let roll = self.random_index(1 << 24) as f32 / (1 << 24) as f32 * total;
            let mut lower = 0.;
            let mut chosen = 0;
            for (index, combo) in pig.combos.iter().enumerate() {
                if roll >= lower {
                    chosen = index;
                }
                lower += combo.weight;
            }
            self.enemies[enemy].ai.next = 0;
            chosen
        };
        let ai = &mut self.enemies[enemy].ai;
        ai.combo = Some(combo);
        let skill = pig.combos[combo].skills[ai.next];
        ai.next += 1;
        Some(skill)
    }

    fn enemy_target(&mut self, enemy: usize, skill: SkillDefinition) -> Option<usize> {
        let support = skill.target_type == 2;
        let faction = if support { &self.enemies } else { &self.heroes };
        let living: Vec<_> = faction
            .iter()
            .enumerate()
            .filter(|(index, fighter)| {
                fighter.alive() && (!support || skill.target_self || *index != enemy)
            })
            .map(|(index, _)| index)
            .collect();
        if living.is_empty() {
            return None;
        }
        if !support {
            if let Some(target) = self.enemies[enemy]
                .effects
                .taunt_target()
                .filter(|target| living.contains(target))
            {
                return Some(target);
            }
        }
        match skill.targeting {
            1 => living.into_iter().min_by_key(|&i| faction[i].hp),
            3 => living.into_iter().max_by_key(|&i| faction[i].hp),
            11..=15 if !support => living
                .into_iter()
                .find(|&i| faction[i].bird == Some((skill.targeting - 11) as usize)),
            16 if support => Some(enemy),
            _ => Some(living[self.random_index(living.len())]),
        }
    }

    pub(crate) fn enemy_action(&mut self, enemy: usize) {
        let (skill_index, target) = if let Some(mut charge) = self.enemies[enemy].ai.charge.take() {
            if charge.turns > 1 {
                charge.turns -= 1;
                self.enemies[enemy].ai.charge = Some(charge);
                self.say(format!(
                    "{} is charging ({}).",
                    self.enemies[enemy].name, charge.turns
                ));
                return;
            }
            let skill = SKILLS[charge.skill];
            let faction = if skill.target_type == 2 {
                &self.enemies
            } else {
                &self.heroes
            };
            let target = if faction.get(charge.target).is_some_and(Fighter::alive) {
                Some(charge.target)
            } else {
                self.enemy_target(enemy, skill)
            };
            let Some(target) = target else {
                return;
            };
            (charge.skill, target)
        } else {
            let Some(index) = self.next_enemy_skill(enemy) else {
                return;
            };
            let skill = SKILLS[index];
            let Some(target) = self.enemy_target(enemy, skill) else {
                return;
            };
            let turns = skill.parameter("charge", 0.) as u32;
            if turns > 0 {
                self.enemies[enemy].ai.charge = Some(Charging {
                    skill: index,
                    target,
                    turns,
                });
                self.say(format!(
                    "{} charges {} ({}).",
                    self.enemies[enemy].name, skill.name, turns
                ));
                return;
            }
            (index, target)
        };
        let skill = SKILLS[skill_index];
        if skill.template != "DoNothingSkill" {
            self.trace_skill(
                Source::pig(enemy),
                skill_index,
                if skill.target_type == 2 {
                    crate::combat_events::SkillKind::Support
                } else {
                    crate::combat_events::SkillKind::Attack
                },
                Some(if skill.target_type == 2 {
                    Source::pig(target)
                } else {
                    Source::bird(target)
                }),
                skill.has_parameter("all"),
            );
        }
        self.execute_enemy_skill(enemy, target, skill);
        self.trace_state();
    }

    fn execute_enemy_skill(&mut self, enemy: usize, target: usize, skill: SkillDefinition) {
        if skill.template == "DoNothingSkill" {
            self.say(format!("{} waits.", self.enemies[enemy].name));
            return;
        }
        if skill.target_type == 2 {
            self.enemy_support(enemy, target, skill);
            return;
        }
        if !skill.has_parameter("damage_in_percent") {
            self.say(format!(
                "{}: {} is not implemented yet.",
                self.enemies[enemy].name, skill.name
            ));
            return;
        }
        let source = Source::pig(enemy);
        let power = self.enemies[enemy].attack_value();
        let primary_power = self.enemies[enemy].attack_float_value();
        let mut collateral_targets = Vec::new();
        let mut primary_damage = 0;
        let mut total = 0;
        for i in 0..self.heroes.len() {
            if i != target && !skill.has_parameter("all") {
                continue;
            }
            let mut normalized_damage = 0;
            for _ in 0..skill.parameter("attack_count", 1.) as u32 {
                if !self.heroes[i].alive() || !self.enemies[enemy].alive() {
                    break;
                }
                total += self.collateral_before_hit(
                    source,
                    Source::bird(i),
                    skill,
                    &mut collateral_targets,
                );
                let amount = skill.damage_against(primary_power, &self.heroes[i].effects);
                let normalized_hit = self.heroes[i].damage_amount(amount);
                normalized_damage += normalized_hit;
                let damage = self.heroes[i].receive_normalized_damage(normalized_hit);
                primary_damage += damage;
                total += damage;
                let reaction = self.heroes[i].effects.retaliation_damage(damage);
                self.enemies[enemy].damage(reaction);
                self.healing_attack_hit(source, skill, normalized_hit);
                total += self.collateral_hit(source, Source::bird(i), skill);
            }
            if !self.heroes[i].alive() {
                continue;
            }
            let effect = match skill.template {
                "AttackWithDamageDebuffSkill" => Some((
                    skill.duration,
                    EffectKind::Weakness(skill.parameter("reduction_in_percent", 0.)),
                    skill.parameter("chance", 100.),
                )),
                "AttackWithIncreaseDamageReceived" => Some((
                    skill.duration,
                    EffectKind::Vulnerability(skill.parameter("increase_in_percent", 0.)),
                    skill.parameter("chance", 100.),
                )),
                "AttackAndApplyDotSkill" => Some((
                    skill.duration,
                    EffectKind::Poison(percent(
                        power,
                        skill.parameter("dot_damage_in_percent", 0.),
                    )),
                    skill.parameter("dot_chance", 100.),
                )),
                _ => None,
            };
            if let Some((duration, kind, chance)) = effect {
                if self.roll_percent(chance) {
                    self.heroes[i]
                        .effects
                        .apply(skill.id, source, duration, kind);
                }
            }
            self.stunning_attack_finish(source, Source::bird(i), skill, normalized_damage);
            self.healing_debuff_attack_finish(source, Source::bird(i), skill, normalized_damage);
            if skill.template == "AttackWithPurgeSkill"
                && self.roll_percent(skill.parameter("purge_chance", 0.))
            {
                self.heroes[i].effects.purge();
            }
        }
        self.collateral_stun_finish(
            source,
            Source::bird(target),
            skill,
            &collateral_targets,
            primary_damage,
        );
        if skill.template == "AttackWithLeech" && self.enemies[enemy].alive() {
            self.enemies[enemy].heal_percent(total, skill.parameter("heal", 0.));
        }
        self.rage = (self.rage + 8).min(100);
        if skill.template == "ReduceRageAttackSkill" {
            self.rage = self
                .rage
                .saturating_sub(skill.parameter("ragereduce", 0.) as u32);
        }
        self.say(format!(
            "{} uses {} for {total} damage.",
            self.enemies[enemy].name, skill.name
        ));
    }

    fn enemy_support(&mut self, enemy: usize, target: usize, skill: SkillDefinition) {
        let source = Source::pig(enemy);
        let power = self.enemies[enemy].attack_value();
        let source_health = self.enemies[enemy].max_hp;
        let selected_health = self.enemies[target].max_hp;
        let supported = matches!(
            skill.template,
            "BlockDamageSkill"
                | "ThornSkill"
                | "IncreaseDamageWithEffectsSkill"
                | "IncreaseDamageAndCleanse"
                | "HealAndCleanseSkill"
        );
        if !supported {
            self.say(format!(
                "{}: {} is not implemented yet.",
                self.enemies[enemy].name, skill.name
            ));
            return;
        }
        for i in 0..self.enemies.len() {
            if !self.enemies[i].alive() || (i != target && !skill.has_parameter("all")) {
                continue;
            }
            let kind = match skill.template {
                "BlockDamageSkill" => Some(EffectKind::Protection(skill.parameter("percent", 0.))),
                "ThornSkill" => Some(EffectKind::Retaliation(Retaliation::Fixed {
                    damage: percent(
                        power,
                        skill.parameter("enemy_damage_retaliated_percent", 0.),
                    ),
                })),
                "IncreaseDamageWithEffectsSkill" | "IncreaseDamageAndCleanse" => Some(
                    EffectKind::AttackBonus(skill.parameter("damage_increase", 0.)),
                ),
                _ => None,
            };
            if let Some(kind) = kind {
                self.enemies[i]
                    .effects
                    .apply(skill.id, source, skill.duration, kind);
            }
            if skill.template == "HealAndCleanseSkill" {
                let health = if skill.has_parameter("invoker") {
                    source_health
                } else if skill.has_parameter("first_target") {
                    selected_health
                } else {
                    self.enemies[i].max_hp
                };
                let extra = if i == target {
                    skill.parameter("additional_percent_on_target", 0.)
                } else {
                    0.
                };
                self.enemies[i]
                    .heal_percent(health, skill.parameter("health_in_percent", 0.) + extra);
            }
            if (!skill.has_parameter("cleanse_target") || i == target)
                && self.roll_percent(skill.parameter("cleanse_chance", 0.))
            {
                self.enemies[i].effects.cleanse();
            }
        }
        self.say(format!("{} uses {}.", self.enemies[enemy].name, skill.name));
    }
}

#[cfg(test)]
mod healing_curse_tests {
    use super::*;

    #[test]
    fn drone_attack_heals_weakest_pig_per_hit_using_original_coefficient() {
        let profile = crate::Profile {
            unlocked: 3,
            ..Default::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        let skill = *SKILLS
            .iter()
            .find(|s| s.id == "pig_attack_drone_snatch_01")
            .unwrap();
        let mut ally = battle.enemies[0].clone();
        ally.hp = 1;
        ally.max_hp = 1000;
        battle.enemies.push(ally);
        let selected = battle.enemies.len() - 1;
        battle.enemies[0].attack = 10;
        for hero in &mut battle.heroes {
            hero.hp = 1000;
            hero.max_hp = 1000;
        }
        battle.heroes[0].hp = 1;
        battle.execute_enemy_skill(0, 0, skill);
        assert_eq!(battle.heroes[0].hp, 0);
        assert_eq!(battle.heroes[1].hp, 1000);
        assert_eq!(battle.enemies[selected].hp, 6); // Ten normalized damage *50%, even on overkill.
    }

    #[test]
    fn shaman_area_attack_curses_survivors_but_skips_shields_and_knockouts() {
        let profile = crate::Profile {
            unlocked: 3,
            ..Default::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        let skill = *SKILLS
            .iter()
            .find(|s| s.id == "pig_attack_shaman_shaman")
            .unwrap();
        for hero in &mut battle.heroes {
            hero.hp = 1000;
            hero.max_hp = 1000;
        }
        battle.enemies[0].attack = 10;
        battle.heroes[1]
            .effects
            .apply("shield", Source::bird(1), 3, EffectKind::Protection(100.));
        battle.heroes[2].hp = 1;
        let mut control = battle.clone();
        control.random_index(1_000_000); // Only the unshielded surviving target rolls.
        battle.execute_enemy_skill(0, 0, skill);
        assert_eq!(battle.rng_state, control.rng_state);
        assert!(battle.heroes[0].effects.has_curse());
        assert!(!battle.heroes[1].effects.has_curse());
        assert!(!battle.heroes[2].effects.has_curse());
        assert!(battle.heroes[2].knocked_out);
        battle.heroes[0].heal(10);
        assert_eq!(battle.heroes[0].hp, 995);
    }
}
