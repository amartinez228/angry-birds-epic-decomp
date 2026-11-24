//! Native bird revival with the recreation's shared gold wallet.
//! Original separate inventory currencies, PvP revival, popup/timer,
//! complete initiative, perks and trigger choreography remain unfinished.
use crate::{Battle, Outcome, Profile};
include!("revival_generated.rs");

impl Profile {
    pub fn party_revive_cost(&self) -> u32 {
        if self.first_revive_used {
            PARTY_COST
        } else {
            0
        }
    }
}

impl Battle {
    /// Preserve encounter/wave, pig HP/AI, XP drops, rage and current round.
    /// Native ReviveAllBirds restores all birds and resets both factions' turn
    /// completion flags before clearing/restarting initiative. Exact native
    /// initiative/passive dispatch remains part of the wider reconstruction.
    pub fn revive_party(&mut self, profile: &mut Profile) -> Result<(), &'static str> {
        if self.outcome != Outcome::Lost
            || self.heroes.is_empty()
            || self.heroes.iter().any(|hero| hero.alive())
        {
            return Err("Party revival is available after the party is defeated");
        }
        let cost = profile.party_revive_cost();
        let gold = profile
            .gold
            .checked_sub(cost)
            .ok_or("Not enough gold to revive the party")?;
        for hero in &mut self.heroes {
            hero.hp = hero.max_hp;
            hero.knocked_out = false;
            hero.acted = false;
        }
        for enemy in &mut self.enemies {
            enemy.acted = false;
        }
        profile.gold = gold;
        profile.first_revive_used = true;
        self.outcome = Outcome::Active;
        self.say("The party returns to battle!".into());
        self.resolve();
        self.trace_state();
        if self.outcome == Outcome::Active && self.heroes.iter().all(|hero| !hero.can_act()) {
            self.enemy_turn();
        }
        Ok(())
    }
    pub fn can_revive_bird(&self, target: usize) -> bool {
        self.outcome == Outcome::Active && self.heroes.get(target).is_some_and(|hero| !hero.alive())
    }

    /// PopupSingleBirdRevive pays its requirement before ReviveBird requests
    /// 100% HP. ReviveCombatant normalizes healing to target max-current HP and
    /// clears knockout; ReviveBird then rearms KnockOutOnDefeat, allowing a
    /// later paid revive. This does not spend a different bird's action.
    pub fn revive_bird(
        &mut self,
        profile: &mut Profile,
        target: usize,
    ) -> Result<(), &'static str> {
        if !self.can_revive_bird(target) {
            return Err("Choose a knocked-out bird during an active battle");
        }
        let gold = profile
            .gold
            .checked_sub(SINGLE_BIRD_COST)
            .ok_or("Not enough gold to revive")?;
        let hero = &mut self.heroes[target];
        hero.hp = hero.max_hp;
        hero.knocked_out = false;
        let name = hero.name.clone();
        profile.gold = gold;
        self.say(format!("{name} returns to battle!"));
        self.trace_state();
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    fn defeat_party(battle: &mut Battle) {
        for hero in &mut battle.heroes {
            hero.hp = 0;
            hero.acted = true;
        }
        battle.resolve();
        assert_eq!(battle.outcome, Outcome::Lost);
    }
    #[test]
    fn first_party_revive_is_free_and_keeps_encounter_damage_and_delivered_xp() {
        let (mut profile, mut battle) = fixture();
        profile.gold = 0;
        battle.enemies[0].hp = 0;
        battle.resolve();
        let xp = battle.settle_experience(&mut profile);
        assert!(xp > 0);
        battle.enemies[1].hp = 7;
        battle.enemies[1].acted = true;
        battle.round = 3;
        battle.rage = 67;
        defeat_party(&mut battle);
        battle.revive_party(&mut profile).unwrap();
        assert_eq!(profile.gold, 0);
        assert!(profile.first_revive_used);
        assert_eq!(profile.party_revive_cost(), 10);
        assert_eq!(battle.outcome, Outcome::Active);
        assert!(battle
            .heroes
            .iter()
            .all(|hero| hero.can_act() && hero.hp == hero.max_hp));
        assert_eq!(
            (battle.stage, battle.wave, battle.round, battle.rage),
            (3, 1, 3, 67)
        );
        assert_eq!(
            battle
                .enemies
                .iter()
                .map(|enemy| enemy.hp)
                .collect::<Vec<_>>(),
            vec![0, 7]
        );
        assert!(!battle.enemies[1].acted);
        assert_eq!(battle.settle_experience(&mut profile), 0);
        assert_eq!(battle.experience_earned(), xp);
        assert_eq!(profile.experience.points, xp);
    }
    #[test]
    fn later_party_revives_require_ten_gold_and_failed_requests_preserve_state() {
        let (mut profile, mut battle) = fixture();
        profile.first_revive_used = true;
        profile.gold = 9;
        defeat_party(&mut battle);
        battle.enable_presentation_trace();
        assert!(battle.revive_party(&mut profile).is_err());
        assert_eq!(profile.gold, 9);
        assert!(profile.first_revive_used);
        assert_eq!(battle.outcome, Outcome::Lost);
        assert!(battle.heroes.iter().all(|hero| !hero.alive()));
        assert!(battle.take_presentation_events().is_empty());
        profile.gold = 10;
        battle.revive_party(&mut profile).unwrap();
        assert_eq!(profile.gold, 0);
        assert!(battle.heroes.iter().all(|hero| hero.can_act()));
        assert!(battle.revive_party(&mut profile).is_err());
        assert_eq!(profile.gold, 0);
    }
    #[test]
    fn unavailable_party_revive_does_not_consume_the_free_entitlement() {
        let (mut profile, mut battle) = fixture();
        for outcome in [
            Outcome::Active,
            Outcome::Won,
            Outcome::Claimed,
            Outcome::Lost,
        ] {
            battle.outcome = outcome;
            assert!(battle.revive_party(&mut profile).is_err());
            assert!(!profile.first_revive_used);
            assert_eq!(profile.gold, 500);
        }
    }
    #[test]
    fn party_revival_with_retained_stuns_advances_until_a_bird_can_act() {
        let (mut profile, mut battle) = fixture();
        for (index, hero) in battle.heroes.iter_mut().enumerate() {
            hero.effects.apply(
                "revive-stun",
                crate::effects::Source::bird(index),
                1,
                crate::effects::EffectKind::Stun,
            );
        }
        defeat_party(&mut battle);
        let round = battle.round;
        battle.revive_party(&mut profile).unwrap();
        assert_eq!(battle.outcome, Outcome::Active);
        assert!(battle.round > round);
        assert!(battle.heroes.iter().any(|hero| hero.can_act()));
    }
    fn fixture() -> (Profile, Battle) {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        battle.heroes[1].damage(10000);
        (profile, battle)
    }
    #[test]
    fn original_single_revive_restores_full_health_and_can_be_purchased_after_another_knockout() {
        let (mut profile, mut battle) = fixture();
        battle.heroes[1].acted = true;
        battle.revive_bird(&mut profile, 1).unwrap();
        assert_eq!(profile.gold, 495);
        assert!(!profile.first_revive_used);
        assert!(battle.heroes[1].alive());
        assert_eq!(battle.heroes[1].hp, battle.heroes[1].max_hp);
        assert!(battle.heroes[1].acted);
        assert!(!battle.heroes[0].acted);
        battle.heroes[1].damage(10000);
        assert!(battle.heroes[1].knocked_out);
        battle.revive_bird(&mut profile, 1).unwrap();
        assert_eq!(profile.gold, 490);
        assert!(battle.heroes[1].alive());
    }
    #[test]
    fn failed_or_unavailable_revives_do_not_charge_or_change_battle() {
        let (mut profile, mut battle) = fixture();
        for target in [0, usize::MAX] {
            assert!(battle.revive_bird(&mut profile, target).is_err());
            assert_eq!(profile.gold, 500);
        }
        profile.gold = SINGLE_BIRD_COST - 1;
        assert!(battle.revive_bird(&mut profile, 1).is_err());
        assert!(!battle.heroes[1].alive());
        assert_eq!(profile.gold, 4);
        profile.gold = 500;
        for outcome in [Outcome::Lost, Outcome::Won, Outcome::Claimed] {
            battle.outcome = outcome;
            assert!(battle.revive_bird(&mut profile, 1).is_err());
            assert_eq!(profile.gold, 500);
        }
    }
    #[test]
    fn level_refill_does_not_make_a_knocked_out_bird_ineligible_for_explicit_revive() {
        let (mut profile, mut battle) = fixture();
        // Native stat-cache refresh may refill HP while knockout still prevents participation.
        battle.heroes[1].hp = battle.heroes[1].max_hp;
        assert!(battle.can_revive_bird(1));
        battle.revive_bird(&mut profile, 1).unwrap();
        assert!(battle.heroes[1].can_act());
        assert_eq!(profile.gold, 495);
        assert!(!battle.can_revive_bird(1));
    }
}
