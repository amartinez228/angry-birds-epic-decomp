//! Native healing/stun callbacks within the current integer combat/effect clock.
//! Remaining trigger/perk order, Unity RNG and fractional HP remain pending.
use super::*;

#[test]
fn healing_curse_uses_shared_bird_attack_callback_and_reduces_cleric_healing() {
    let mut battle = battle("skin_cleric", 7);
    let skill = *SKILLS
        .iter()
        .find(|s| s.id == "pig_attack_shaman_shaman")
        .unwrap();
    battle.strike_with(0, 0, skill).unwrap();
    assert!(battle.enemies[0].effects.has_curse());
    battle.heroes[1].effects.apply(
        "shaman",
        Source::pig(0),
        3,
        EffectKind::HealingReduction(50.),
    );
    let cleric = *SKILLS
        .iter()
        .find(|s| s.id == "bird_attack_white_cleric")
        .unwrap();
    battle.strike_with(0, 0, cleric).unwrap();
    assert_eq!(battle.heroes[0].hp, 528); // 110 normalized damage *25% ->28.
    assert_eq!(battle.heroes[1].hp, 514); // Initial28 *50% ->14.
    assert_eq!(battle.heroes[2].hp, 528);
}

fn battle(skin: &str, seed: u64) -> Battle {
    let hat = HATS.iter().position(|hat| hat.id == skin).unwrap();
    let bird = HATS[hat].bird;
    let mut profile = Profile {
        unlocked: 3,
        party: [bird, (bird + 1) % 5, (bird + 2) % 5],
        ..Default::default()
    };
    profile.buy_and_equip(hat).unwrap();
    let mut battle = Battle::new_with_seed(&profile, 3, seed).unwrap();
    for hero in &mut battle.heroes {
        hero.max_hp = 1000;
        hero.hp = 500;
        hero.attack = 100;
    }
    for enemy in &mut battle.enemies {
        enemy.max_hp = 10000;
        enemy.hp = 10000;
        enemy.attack = 200;
    }
    battle
}

#[test]
fn leech_shared_bird_callback_heals_each_hit_without_rng_or_party_healing() {
    let mut battle = battle("skin_paladin", 7);
    let skill = *SKILLS
        .iter()
        .find(|s| s.id == "pig_attack_ninja_black_boss_02")
        .unwrap();
    battle.heroes[0].attack = 5;
    let rng = battle.rng_state;
    battle.strike_with(0, 0, skill).unwrap();
    assert_eq!(battle.enemies[0].hp, 9985);
    assert_eq!(battle.heroes[0].hp, 506); // Three separate 2.5 ->2 heals, not8 at attack end.
    assert_eq!(battle.heroes[1].hp, 500);
    assert_eq!(battle.heroes[2].hp, 500);
    assert_eq!(battle.rng_state, rng);
}

#[test]
fn leech_after_retaliation_refills_hp_without_clearing_bird_knockout() {
    let mut battle = battle("skin_paladin", 7);
    let skill = *SKILLS
        .iter()
        .find(|s| s.id == "pig_attack_ninja_black_boss_02")
        .unwrap();
    battle.heroes[0].hp = 200;
    battle.enemies[0].effects.apply(
        "thorns",
        Source::pig(0),
        3,
        EffectKind::Retaliation(Retaliation::Fixed { damage: 110 }),
    );
    battle.strike_with(0, 0, skill).unwrap();
    assert_eq!(battle.enemies[0].hp, 9700);
    assert_eq!(battle.heroes[0].hp, 50); // 200-110+50-110+50-80+50.
    assert!(battle.heroes[0].knocked_out);
    assert!(!battle.heroes[0].alive());
    assert_eq!(battle.heroes[1].hp, 500);
}

#[test]
fn leech_fully_blocked_hits_do_not_manufacture_healing() {
    let mut battle = battle("skin_paladin", 7);
    let skill = *SKILLS
        .iter()
        .find(|s| s.id == "pig_attack_ninja_black_boss_02")
        .unwrap();
    battle.enemies[0]
        .effects
        .apply("shield", Source::pig(0), 3, EffectKind::Protection(100.));
    battle.strike_with(0, 0, skill).unwrap();
    assert_eq!(battle.enemies[0].hp, 10000);
    assert!(battle.heroes.iter().all(|hero| hero.hp == 500));
}

#[test]
fn paladin_heals_from_normalized_overkill_damage_and_does_not_use_randomness() {
    let mut battle = battle("skin_paladin", 7);
    battle.enemies[0].hp = 4;
    let rng = battle.rng_state;
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 0);
    assert_eq!(battle.heroes[0].hp, 540); // 135 normalized *30% =40.5 ->40.
    assert_eq!(battle.heroes[1].hp, 500);
    assert_eq!(battle.rng_state, rng);
}

#[test]
fn paladin_compares_float_health_ratios_instead_of_whole_percentages() {
    let mut battle = battle("skin_paladin", 7);
    battle.heroes[0].hp = 700;
    battle.heroes[1].hp = 499;
    battle.heroes[2].hp = 498;
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.heroes[1].hp, 499);
    assert_eq!(battle.heroes[2].hp, 538);
}

#[test]
fn weakest_heal_ties_favor_attacker_then_keep_first_strictly_weaker_candidate() {
    let mut battle = battle("skin_paladin", 7);
    let skill = SKILLS[HATS[battle.heroes[0].hat].attack];
    battle.healing_attack_hit(Source::bird(2), skill, 100);
    assert_eq!(battle.heroes[0].hp, 500);
    assert_eq!(battle.heroes[2].hp, 530);
    battle.heroes[2].hp = 700;
    battle.healing_attack_hit(Source::bird(2), skill, 100);
    assert_eq!(battle.heroes[0].hp, 530);
    assert_eq!(battle.heroes[1].hp, 500);
}

#[test]
fn weakest_heal_reselects_after_each_hit_and_normalizes_each_heal_separately() {
    let mut battle = battle("skin_paladin", 7);
    let original = SKILLS[HATS[battle.heroes[0].hat].attack];
    let skill = SkillDefinition {
        parameters: &[
            ("damage_in_percent", 100.),
            ("heal_ally", 30.),
            ("attack_count", 2.),
        ],
        ..original
    };
    battle.heroes[0].hp = 700;
    battle.heroes[1].hp = 400;
    battle.heroes[2].hp = 410;
    battle.strike_with(0, 0, skill).unwrap();
    assert_eq!(battle.heroes[1].hp, 430);
    assert_eq!(battle.heroes[2].hp, 440);
    let small_hits = SkillDefinition {
        parameters: &[
            ("damage_in_percent", 5.),
            ("heal_ally", 30.),
            ("attack_count", 2.),
        ],
        ..original
    };
    battle.heroes[1].hp = 1;
    battle.strike_with(0, 0, small_hits).unwrap();
    assert_eq!(battle.heroes[1].hp, 5); // Two separate 1.5 ->2 heals, not3 at attack end.
}

#[test]
fn weakest_heal_uses_positive_hp_even_when_knockout_flag_remains_set() {
    let mut battle = battle("skin_paladin", 7);
    battle.heroes[1].hp = 0;
    battle.heroes[1].knocked_out = true;
    battle.heroes[2].hp = 1;
    battle.heroes[2].knocked_out = true;
    battle.heroes[2].effects.apply(
        "shaman",
        Source::pig(0),
        3,
        EffectKind::HealingReduction(50.),
    );
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.heroes[1].hp, 0);
    assert_eq!(battle.heroes[2].hp, 21); // 40.5 ->40, then50% ->20.
    assert!(battle.heroes[2].knocked_out);
}

#[test]
fn weakest_heal_skips_shielded_damage_and_does_not_redirect_from_dead_caster() {
    let mut shielded = battle("skin_paladin", 7);
    shielded.enemies[0]
        .effects
        .apply("shield", Source::pig(0), 3, EffectKind::Protection(100.));
    shielded.strike(0, 0).unwrap();
    assert!(shielded.heroes.iter().all(|hero| hero.hp == 500));
    let mut retaliation = battle("skin_paladin", 7);
    retaliation.enemies[0].effects.apply(
        "thorns",
        Source::pig(0),
        3,
        EffectKind::Retaliation(Retaliation::Fixed { damage: 1000 }),
    );
    retaliation.strike(0, 0).unwrap();
    assert_eq!(retaliation.heroes[0].hp, 0);
    assert_eq!(retaliation.heroes[1].hp, 500);
    assert_eq!(retaliation.heroes[2].hp, 500);
}

#[test]
fn paladin_per_hit_self_healing_can_survive_the_next_retaliation() {
    let mut battle = battle("skin_paladin", 7);
    let original = SKILLS[HATS[battle.heroes[0].hat].attack];
    let skill = SkillDefinition {
        parameters: &[
            ("damage_in_percent", 100.),
            ("heal_ally", 30.),
            ("attack_count", 2.),
        ],
        ..original
    };
    battle.heroes[0].hp = 200;
    battle.enemies[0].effects.apply(
        "thorns",
        Source::pig(0),
        3,
        EffectKind::Retaliation(Retaliation::Fixed { damage: 110 }),
    );
    battle.strike_with(0, 0, skill).unwrap();
    assert_eq!(battle.heroes[0].hp, 40); // 200-110+30-110+30.
    assert!(battle.heroes[0].alive());
    assert_eq!(battle.enemies[0].hp, 9800);
    assert_eq!(battle.heroes[1].hp, 500);
}

#[test]
fn cleric_heals_positive_health_party_without_clearing_knockout() {
    let mut battle = battle("skin_cleric", 7);
    battle.heroes[1].hp = 995;
    // A level refresh can refill HP while the bird remains knocked out.
    battle.heroes[2].hp = 500;
    battle.heroes[2].knocked_out = true;
    battle.enemies[0]
        .effects
        .apply("shield", Source::pig(0), 3, EffectKind::Protection(50.));
    battle.enable_presentation_trace();
    battle.act(0, Action::Attack(0)).unwrap();
    assert_eq!(battle.enemies[0].hp, 9945); // 110% attack, then 50% defense.
    assert_eq!(battle.heroes[0].hp, 514); // 25% of 55, integer model rounding.
    assert_eq!(battle.heroes[1].hp, 1000);
    assert_eq!(battle.heroes[2].hp, 514);
    assert!(!battle.heroes[2].alive());
    let events = battle.take_presentation_events();
    assert!(
        matches!(events.last(), Some(combat_events::CombatEvent::StateChanged(snapshot))
        if snapshot.heroes[0].hp == 514 && snapshot.heroes[1].hp == 1000)
    );
}

#[test]
fn legacy_cleric_uses_its_own_twenty_percent_healing_coefficient() {
    let mut battle = battle("skin_moonpriest", 7);
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9890);
    assert!(battle.heroes.iter().all(|hero| hero.hp == 522));
}

#[test]
fn cleric_uses_normalized_damage_including_overkill_but_shields_prevent_healing() {
    let mut shielded = battle("skin_cleric", 7);
    shielded.enemies[0]
        .effects
        .apply("shield", Source::pig(0), 3, EffectKind::Protection(100.));
    shielded.strike(0, 0).unwrap();
    assert!(shielded.heroes.iter().all(|hero| hero.hp == 500));
    let mut overkill = battle("skin_cleric", 7);
    overkill.enemies[0].hp = 4;
    overkill.strike(0, 0).unwrap();
    assert!(overkill.heroes.iter().all(|hero| hero.hp == 528));
}

#[test]
fn cleric_heals_per_hit_before_the_next_retaliation_can_knock_out_the_caster() {
    let mut battle = battle("skin_cleric", 7);
    let original = SKILLS[HATS[battle.heroes[0].hat].attack];
    let skill = SkillDefinition {
        parameters: &[
            ("damage_in_percent", 110.),
            ("heal_ally", 25.),
            ("attack_count", 2.),
        ],
        ..original
    };
    battle.heroes[0].hp = 200;
    battle.enemies[0].effects.apply(
        "thorns",
        Source::pig(0),
        3,
        EffectKind::Retaliation(Retaliation::Fixed { damage: 110 }),
    );
    battle.strike_with(0, 0, skill).unwrap();
    assert!(battle.heroes[0].alive());
    assert_eq!(battle.heroes[0].hp, 36); // 200-110+28-110+28.
    assert_eq!(battle.heroes[1].hp, 556);
}

#[test]
fn cleric_healing_after_retaliation_does_not_revive_the_caster() {
    let mut battle = battle("skin_cleric", 7);
    battle.enemies[0].effects.apply(
        "thorns",
        Source::pig(0),
        3,
        EffectKind::Retaliation(Retaliation::Fixed { damage: 1000 }),
    );
    battle.strike(0, 0).unwrap();
    assert!(!battle.heroes[0].alive());
    assert_eq!(battle.heroes[0].hp, 0);
    assert_eq!(battle.heroes[1].hp, 528);
    assert_eq!(battle.heroes[2].hp, 528);
}

#[test]
fn bard_uses_parameter_duration_and_seeded_fifteen_percent_chance() {
    let mut successes = 0;
    let mut misses = 0;
    for seed in 0..100 {
        let mut first = battle("skin_bard", seed);
        let mut repeat = first.clone();
        first.strike(0, 0).unwrap();
        repeat.strike(0, 0).unwrap();
        assert_eq!(first.enemies[0].hp, 9840);
        assert_eq!(first.enemies[0].effects, repeat.enemies[0].effects);
        assert_eq!(first.rng_state, repeat.rng_state);
        if first.enemies[0].effects.is_stunned() {
            successes += 1;
            let effect = first.enemies[0]
                .effects
                .entries()
                .iter()
                .find(|effect| effect.kind == EffectKind::Stun)
                .unwrap();
            assert_eq!(effect.turns, 1); // Skill's main duration is zero.
            assert_eq!(effect.source, Source::bird(0));
            assert_eq!(effect.skill_id, "bird_attack_white_bard");
        } else {
            misses += 1;
        }
    }
    assert!(successes > 0 && misses > 0);
}

#[test]
fn bard_stun_skips_one_enemy_phase_then_expires() {
    let mut battle = (0..100)
        .find_map(|seed| {
            let mut trial = battle("skin_bard", seed);
            trial.enemies.truncate(1);
            trial.strike(0, 0).unwrap();
            trial.enemies[0].effects.is_stunned().then_some(trial)
        })
        .unwrap();
    battle.enemy_turn();
    assert_eq!(battle.round, 2);
    assert!(battle.heroes.iter().all(|hero| hero.hp == 500));
    assert!(!battle.enemies[0].effects.is_stunned());
    battle.enemy_turn();
    assert!(battle.heroes.iter().any(|hero| hero.hp < 500));
}

#[test]
fn shielded_bard_attack_does_not_roll_or_apply_a_stun() {
    let mut battle = battle("skin_bard", 7);
    battle.enemies[0]
        .effects
        .apply("shield", Source::pig(0), 3, EffectKind::Protection(100.));
    let rng = battle.rng_state;
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.rng_state, rng);
    assert!(!battle.enemies[0].effects.is_stunned());
}

#[test]
fn thunderbird_damages_every_enemy_but_only_curses_selected_target() {
    let mut battle = battle("skin_thunderbird", 7);
    battle.strike(0, 1).unwrap();
    assert!(battle.enemies.iter().all(|enemy| enemy.hp == 9950));
    assert_eq!(battle.enemies[0].effects.vulnerability(), 0.);
    assert_eq!(battle.enemies[1].effects.vulnerability(), 25.);
    let effect = &battle.enemies[1].effects.entries()[0];
    assert_eq!(effect.turns, 3);
    assert_eq!(effect.source, Source::bird(0));
    battle.strike(0, 1).unwrap();
    assert_eq!(battle.enemies[0].hp, 9900);
    assert_eq!(battle.enemies[1].hp, 9888); // 62.5 normalizes to even 62.
    assert_eq!(battle.enemies[1].effects.entries().len(), 1);
}

#[test]
fn defeated_thunderbird_target_does_not_redirect_its_curse() {
    let mut battle = battle("skin_thunderbird", 7);
    battle.enemies[1].hp = 1;
    battle.strike(0, 1).unwrap();
    assert!(battle
        .enemies
        .iter()
        .all(|enemy| enemy.effects.vulnerability() == 0.));
    assert_eq!(battle.enemies[0].hp, 9950);
}

#[test]
fn stone_guard_bonus_applies_once_per_hit_for_any_curse_category() {
    for curse in [
        EffectKind::Poison(10),
        EffectKind::Weakness(20.),
        EffectKind::Vulnerability(0.),
        EffectKind::Stun,
        EffectKind::Taunt(0),
    ] {
        let mut battle = battle("skin_stoneguard", 7);
        battle.heroes[0].attack = 200;
        battle.enemies[0]
            .effects
            .apply("curse", Source::bird(1), 3, curse);
        // A second curse does not apply the conditional multiplier twice.
        battle.enemies[0].effects.apply(
            "another-curse",
            Source::bird(2),
            3,
            EffectKind::Weakness(10.),
        );
        battle.act(0, Action::Attack(0)).unwrap();
        assert_eq!(battle.enemies[0].hp, 9610); // 2 * (200 * .65 * 1.5).
        assert_eq!(battle.enemies[1].hp, 10000);
    }
}

#[test]
fn stone_guard_positive_effects_do_not_activate_the_bonus() {
    let mut battle = battle("skin_stoneguard", 7);
    battle.heroes[0].attack = 200;
    for blessing in [
        EffectKind::AttackBonus(100.),
        EffectKind::Regeneration(50),
        EffectKind::Protection(0.),
    ] {
        battle.enemies[0]
            .effects
            .apply("blessing", Source::pig(0), 3, blessing);
    }
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9740);
}

#[test]
fn stone_guard_low_attack_keeps_the_base_fraction_through_each_bonus_hit() {
    let mut battle = battle("skin_stoneguard", 7);
    battle.heroes[0].attack = 23;
    battle.enemies[0]
        .effects
        .apply("curse", Source::bird(1), 3, EffectKind::Weakness(10.));
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9956); // Two rounded 22.425 hits, not two 22.5 hits.
}

#[test]
fn stone_guard_preserves_skill_and_attack_buff_fractions_until_after_defense() {
    for (attack, buff) in [(10, 0.), (7, 50.)] {
        let mut battle = battle("skin_stoneguard", 7);
        battle.heroes[0].attack = attack;
        battle.heroes[0]
            .effects
            .apply("buff", Source::bird(0), 3, EffectKind::AttackBonus(buff));
        battle.enemies[0]
            .effects
            .apply("shield", Source::pig(0), 3, EffectKind::Protection(50.));
        battle.strike(0, 0).unwrap();
        assert_eq!(battle.enemies[0].hp, 9994); // Two 3-point normalized hits.
    }
}

#[test]
fn cleric_normalizes_half_healing_to_even_after_queuing() {
    let mut battle = battle("skin_cleric", 7);
    battle.heroes[0].attack = 9; // 110% normalizes to 10 damage.
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9990);
    assert!(battle.heroes.iter().all(|h| h.hp == 502)); // 25% = 2.5 -> 2.
}

#[test]
fn stone_guard_bonus_stops_on_cleanse_or_expiry_but_survives_purge() {
    let mut battle = battle("skin_stoneguard", 7);
    battle.heroes[0].attack = 200;
    battle.enemies[0]
        .effects
        .apply("curse", Source::bird(1), 1, EffectKind::Weakness(10.));
    battle.enemies[0].effects.purge();
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9610);
    battle.enemies[0].effects.advance_source_turn(Side::Birds);
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9350);
    battle.enemies[0]
        .effects
        .apply("curse", Source::bird(1), 3, EffectKind::Poison(10));
    battle.enemies[0].effects.cleanse();
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9090);
}

#[test]
fn frost_savage_requires_stun_and_loses_bonus_when_it_expires() {
    let mut battle = battle("skin_winterfighter", 7);
    battle.heroes[0].attack = 200;
    battle.enemies[0]
        .effects
        .apply("poison", Source::bird(1), 3, EffectKind::Poison(10));
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9820); // Poison alone is not the stun condition.
    battle.enemies[0]
        .effects
        .apply("stun", Source::bird(1), 1, EffectKind::Stun);
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9550);
    battle.enemies[0].effects.advance_source_turn(Side::Birds);
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9370);
}

#[test]
fn conditional_damage_keeps_attack_buffs_and_target_defenses() {
    let mut battle = battle("skin_winterfighter", 7);
    battle.heroes[0].attack = 200;
    battle.heroes[0]
        .effects
        .apply("buff", Source::bird(0), 3, EffectKind::AttackBonus(50.));
    for effect in [
        EffectKind::Stun,
        EffectKind::Vulnerability(100.),
        EffectKind::Protection(50.),
    ] {
        battle.enemies[0]
            .effects
            .apply("defense", Source::pig(0), 3, effect);
    }
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9595); // 200 *1.5 *.9 *1.5 *2 *.5.
    battle.enemies[0]
        .effects
        .apply("immunity", Source::pig(0), 3, EffectKind::Protection(100.));
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9595);
}

#[test]
fn stone_guard_multihit_stops_on_knockout_or_retaliation() {
    let mut battle = battle("skin_stoneguard", 7);
    battle.heroes[0].attack = 200;
    battle.enemies[0]
        .effects
        .apply("curse", Source::bird(1), 3, EffectKind::Weakness(10.));
    battle.enemies[0].effects.apply(
        "thorns",
        Source::pig(0),
        3,
        EffectKind::Retaliation(Retaliation::Fixed { damage: 1000 }),
    );
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 9805);
    assert!(!battle.heroes[0].alive());
    let mut battle = self::battle("skin_stoneguard", 7);
    battle.enemies[0].hp = 1;
    battle.strike(0, 0).unwrap();
    assert_eq!(battle.enemies[0].hp, 0);
}

#[test]
fn bard_stun_enables_frost_savage_bonus_through_real_party_actions() {
    let mut profile = Profile {
        unlocked: 3,
        party: [2, 3, 0],
        ..Default::default()
    };
    for skin in ["skin_bard", "skin_winterfighter"] {
        profile
            .buy_and_equip(HATS.iter().position(|hat| hat.id == skin).unwrap())
            .unwrap();
    }
    let mut battle = Battle::new_with_seed(&profile, 3, 3).unwrap();
    for hero in &mut battle.heroes {
        hero.attack = 200;
    }
    for enemy in &mut battle.enemies {
        enemy.hp = 10000;
        enemy.max_hp = 10000;
    }
    battle.act(0, Action::Attack(0)).unwrap();
    assert!(battle.enemies[0].effects.is_stunned());
    assert_eq!(battle.enemies[0].hp, 9680);
    battle.act(1, Action::Attack(0)).unwrap();
    assert_eq!(battle.enemies[0].hp, 9410);
    assert_eq!(battle.round, 1);
    assert!(battle.heroes[2].can_act());
}
