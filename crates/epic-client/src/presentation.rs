//! Replay deterministic combat snapshots using the recovered original clips.
//! Melee Impact releases the native attack wait. Projectile travel, support
//! timing and full native pacing remain unfinished.
use crate::animation::{AnimationLibrary, ClipTiming};
use crate::projectiles::{self, ProjectileDefinition};
use epic_core::{
    combat_events::{BattleSnapshot, CombatEvent, SkillKind},
    effects::{Side, Source},
    equipment::{pig_loadout, EquipmentDefinition, EQUIPMENT},
    Battle, Fighter, PIGS, SKILLS,
};
use std::collections::VecDeque;
include!("pacing_generated.rs");

const BIRDS: [&str; 5] = [
    "RedBird",
    "YellowBird",
    "WhiteBird",
    "BlackBird",
    "BlueBirds",
];

struct Motion {
    source: Source,
    clip: String,
    started: f32,
    duration: f32,
    hold: bool,
}
struct SkillPlayback {
    motion: Motion,
    impact: f32,
    published: bool,
    states: Vec<BattleSnapshot>,
    name: &'static str,
}

pub struct Flight {
    pub projectile: &'static ProjectileDefinition,
    pub source: Source,
    pub target: Source,
    pub source_asset: &'static str,
    pub target_asset: &'static str,
    pub clip: String,
    pub cue_time: f32,
    pub off_hand: bool,
    pub started: f32,
    pub enemy_count: usize,
}

#[derive(Default)]
pub struct Presentation {
    view: Option<BattleSnapshot>,
    pending: VecDeque<CombatEvent>,
    active: Option<SkillPlayback>,
    reactions: Vec<Motion>,
    flights: Vec<Flight>,
}

fn fighter(snapshot: &BattleSnapshot, source: Source) -> Option<&Fighter> {
    match source.side {
        Side::Birds => snapshot.heroes.get(source.index),
        Side::Pigs => snapshot.enemies.get(source.index),
    }
}
fn asset(snapshot: &BattleSnapshot, source: Source) -> Option<&'static str> {
    let unit = fighter(snapshot, source)?;
    unit.bird
        .map(|bird| BIRDS[bird])
        .or_else(|| unit.pig.map(|pig| PIGS[pig].asset_id))
}

fn action_timing(kind: SkillKind, timing: ClipTiming, melee: bool) -> (f32, f32) {
    // AttackSkillTemplate sets its wait flag after starting the clip and exits
    // on Impact or this shipped timeout. A missing/late cue must not cause an
    // indefinite wait, nor publish early merely because the clip ended.
    let impact = if kind == SkillKind::Attack && melee {
        let timeout = original_pacing::FALL_BACK_TIME_WAIT_FOR_SKILL_IMPACT;
        timing.impact.unwrap_or(timeout).min(timeout)
    } else {
        // Normal ranged attacks yield their animation length in native code.
        // Support/rage sequencing and extra skill action hooks are unfinished.
        timing.duration
    };
    (impact, timing.duration.max(impact))
}

fn is_melee(
    snapshot: &BattleSnapshot,
    source: Source,
    targets: &[Source],
    _timing: ClipTiming,
) -> bool {
    // AttackSkillTemplate.IsMeeleAttack rejects multiple targets, then tests
    // the source's main hand IsRanged (even when using an off-hand animation).
    if targets.len() > 1 {
        return false;
    }
    weapon(snapshot, source, false).is_none_or(|(equipment, _)| !equipment.is_ranged)
}

fn weapon(
    snapshot: &BattleSnapshot,
    source: Source,
    off_hand: bool,
) -> Option<(&'static EquipmentDefinition, i32)> {
    let unit = fighter(snapshot, source)?;
    if let Some(gear) = unit.gear {
        let gear = gear[usize::from(off_hand)];
        return Some((EQUIPMENT.get(gear.definition)?, gear.state.level));
    }
    let loadout = pig_loadout(PIGS[unit.pig?].id)?;
    let index = if off_hand {
        loadout.off_hand?
    } else {
        loadout.main_hand?
    };
    Some((EQUIPMENT.get(index)?, unit.level))
}

fn attack_name(snapshot: &BattleSnapshot, source: Source, skill: usize) -> String {
    let index = if weapon(snapshot, source, false).is_some() {
        weapon(
            snapshot,
            source,
            SKILLS[skill].has_parameter("use_offhandanim"),
        )
        .map_or(1, |(equipment, _)| equipment.animation_index)
    } else {
        1
    };
    format!("Action_Attack_{index}")
}

fn plan_flight(
    before: &BattleSnapshot,
    source: Source,
    targets: &[Source],
    skill: usize,
    clip: &str,
    timing: ClipTiming,
    started: f32,
) -> Option<Flight> {
    // Weapon IDs and level variants are known. Skill overrides, multiple-target
    // routing and repeated launches are still pending.
    if targets.len() != 1 || is_melee(before, source, targets, timing) {
        return None;
    }
    let cue_time = timing.projectile?;
    let off_hand = SKILLS[skill].has_parameter("use_offhandanim");
    let (equipment, level) = weapon(before, source, off_hand)?;
    // Pig level-cycled variants need their native sentinel-level routing traced.
    if !equipment.is_ranged || (source.side == Side::Pigs && !equipment.direct_projectile) {
        return None;
    }
    let id = equipment.projectile_asset(level)?;
    let projectile = projectiles::definition(&id)?;
    if !projectile.visible() {
        return None;
    }
    Some(Flight {
        projectile,
        source,
        target: targets[0],
        source_asset: asset(before, source)?,
        target_asset: asset(before, targets[0])?,
        clip: clip.into(),
        cue_time,
        off_hand,
        started: started + cue_time,
        enemy_count: before.enemies.len(),
    })
}

impl Presentation {
    pub fn reset(&mut self, snapshot: BattleSnapshot) {
        *self = Self {
            view: Some(snapshot),
            ..Self::default()
        };
    }
    pub fn synchronize(&mut self, battle: &Battle, now: f32) {
        if !self.busy(now) {
            self.view = Some(battle.snapshot());
        }
    }
    pub fn view(&self) -> &BattleSnapshot {
        self.view.as_ref().expect("Initialized battle view")
    }
    pub fn enqueue(&mut self, events: Vec<CombatEvent>) {
        self.pending.extend(events);
    }
    pub fn busy(&self, now: f32) -> bool {
        self.active.is_some()
            || !self.pending.is_empty()
            || self
                .reactions
                .iter()
                .any(|motion| now < motion.started + motion.duration)
    }
    pub fn active_name(&self) -> Option<&'static str> {
        self.active.as_ref().map(|active| active.name)
    }
    pub fn active_source(&self) -> Option<Source> {
        self.active.as_ref().map(|active| active.motion.source)
    }
    pub fn flights(&self, now: f32) -> impl Iterator<Item = &Flight> {
        self.flights.iter().filter(move |flight| {
            now >= flight.started && now < flight.started + flight.projectile.duration
        })
    }
    pub fn clip_for(&self, source: Source, now: f32) -> Option<(&str, f32)> {
        if let Some(active) = &self.active {
            if active.motion.source == source
                && self
                    .view
                    .as_ref()
                    .and_then(|view| fighter(view, source))
                    .is_some_and(Fighter::alive)
            {
                return Some((&active.motion.clip, (now - active.motion.started).max(0.)));
            }
        }
        self.reactions
            .iter()
            .find(|motion| {
                motion.source == source && (motion.hold || now < motion.started + motion.duration)
            })
            .map(|motion| (motion.clip.as_str(), (now - motion.started).max(0.)))
    }

    fn publish(&mut self, snapshot: BattleSnapshot, when: f32, animations: &AnimationLibrary) {
        if let Some(before) = &self.view {
            if before.wave != snapshot.wave {
                self.reactions.clear();
                self.flights.clear();
            } else {
                for side in [Side::Birds, Side::Pigs] {
                    let count = if side == Side::Birds {
                        snapshot.heroes.len()
                    } else {
                        snapshot.enemies.len()
                    };
                    for index in 0..count {
                        let source = Source { side, index };
                        let Some(previous) = fighter(before, source) else {
                            continue;
                        };
                        let current = fighter(&snapshot, source).unwrap();
                        let name = if !previous.alive() && current.alive() {
                            if current.bird.is_some() {
                                "KnockedOutEnd"
                            } else {
                                "Resurrection"
                            }
                        } else if current.hp < previous.hp {
                            if current.alive() {
                                "Hit"
                            } else if current.knocked_out {
                                "KnockedOut"
                            } else {
                                "Defeated"
                            }
                        } else {
                            continue;
                        };
                        let timing = asset(&snapshot, source)
                            .and_then(|asset| animations.actor(asset))
                            .and_then(|actor| actor.timing(name));
                        if let Some(timing) = timing {
                            self.reactions.retain(|motion| motion.source != source);
                            self.reactions.push(Motion {
                                source,
                                clip: name.into(),
                                started: when,
                                duration: timing.duration,
                                hold: !current.alive(),
                            });
                        }
                    }
                }
            }
        }
        self.view = Some(snapshot);
    }

    pub fn tick(&mut self, now: f32, animations: &AnimationLibrary) {
        self.flights
            .retain(|flight| now < flight.started + flight.projectile.duration);
        let mut cursor = now;
        loop {
            if let Some(active) = &mut self.active {
                if !active.published && now >= active.motion.started + active.impact {
                    active.published = true;
                    let when = active.motion.started + active.impact;
                    let states = std::mem::take(&mut active.states);
                    for state in states {
                        self.publish(state, when, animations);
                    }
                }
                let active = self.active.as_ref().unwrap();
                if now < active.motion.started + active.motion.duration {
                    return;
                }
                cursor = active.motion.started + active.motion.duration;
                self.active = None;
            }
            // Finish a defeated actor's original clip before replacing a wave.
            if let Some(CombatEvent::StateChanged(snapshot)) = self.pending.front() {
                if self
                    .view
                    .as_ref()
                    .is_some_and(|view| view.wave != snapshot.wave)
                {
                    let end = self
                        .reactions
                        .iter()
                        .map(|motion| motion.started + motion.duration)
                        .fold(cursor, f32::max);
                    if now < end {
                        return;
                    }
                    cursor = cursor.max(end);
                }
            }
            match self.pending.pop_front() {
                Some(CombatEvent::StateChanged(snapshot)) => {
                    self.publish(snapshot, cursor, animations)
                }
                Some(CombatEvent::SkillStarted {
                    source,
                    skill,
                    kind,
                    targets,
                    before,
                }) => {
                    let requested = match kind {
                        SkillKind::Attack => attack_name(&before, source, skill),
                        SkillKind::Support => "Action_Support".into(),
                        SkillKind::Rage => "Action_Rage".into(),
                    };
                    let actor = asset(&before, source).and_then(|asset| animations.actor(asset));
                    let clip = actor
                        .map(|actor| {
                            if actor.has_clip(&requested) {
                                requested.as_str()
                            } else {
                                actor.default_name()
                            }
                        })
                        .unwrap_or("Idle");
                    let timing = actor
                        .and_then(|actor| actor.timing(clip))
                        .unwrap_or(ClipTiming {
                            duration: 0.,
                            impact: None,
                            projectile: None,
                        });
                    let (impact, duration) =
                        action_timing(kind, timing, is_melee(&before, source, &targets, timing));
                    let flight = if kind == SkillKind::Attack {
                        plan_flight(&before, source, &targets, skill, clip, timing, cursor)
                    } else {
                        None
                    };
                    let mut states = Vec::new();
                    while matches!(self.pending.front(),Some(CombatEvent::StateChanged(snapshot)) if snapshot.wave==before.wave)
                    {
                        if let Some(CombatEvent::StateChanged(snapshot)) = self.pending.pop_front()
                        {
                            states.push(snapshot);
                        }
                    }
                    self.publish(before, cursor, animations);
                    if let Some(flight) = flight {
                        self.flights.push(flight);
                    }
                    self.active = Some(SkillPlayback {
                        motion: Motion {
                            source,
                            clip: clip.into(),
                            started: cursor,
                            duration,
                            hold: false,
                        },
                        impact,
                        published: false,
                        states,
                        name: SKILLS[skill].name,
                    });
                }
                None => return,
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn owned_bomb_selects_original_attack_three_and_level_cycled_projectile() {
        let library = AnimationLibrary::embedded();
        let mut profile = epic_core::Profile {
            unlocked: 3,
            party: [3, 4, 0],
            ..Default::default()
        };
        let bomb = profile
            .inventory
            .add(
                "bird_weapon_black_bomb_01",
                epic_core::stats::EquipmentStats {
                    level: 4,
                    ..Default::default()
                },
            )
            .unwrap();
        profile.equip_gear(3, bomb).unwrap();
        let mut battle = Battle::new(&profile, 3).unwrap();
        for enemy in &mut battle.enemies {
            enemy.hp = 10000;
            enemy.max_hp = 10000;
        }
        battle.enable_presentation_trace();
        let mut presentation = Presentation::default();
        presentation.reset(battle.snapshot());
        battle.act(0, epic_core::Action::Attack(0)).unwrap();
        // Change the current camp selection before replaying the queued action.
        let pistol = profile
            .inventory
            .add("bird_weapon_black_pistol_01", Default::default())
            .unwrap();
        profile.equip_gear(3, pistol).unwrap();
        presentation.enqueue(battle.take_presentation_events());
        presentation.tick(0., &library);
        assert_eq!(
            presentation.clip_for(Source::bird(0), 0.).unwrap().0,
            "Action_Attack_3"
        );
        let timing = library
            .actor("BlackBird")
            .unwrap()
            .timing("Action_Attack_3")
            .unwrap();
        let cue = timing.projectile.expect("Recovered bomb launch cue");
        assert_eq!(presentation.flights(cue - 0.001).count(), 0);
        presentation.tick(cue + 0.1, &library);
        let flight = presentation
            .flights(cue + 0.1)
            .next()
            .expect("Player bomb in flight");
        assert_eq!(flight.projectile.id, "Projectile_BlackBird_Bomb_02");
        assert_eq!(flight.source, Source::bird(0));
        assert_eq!(flight.target, Source::pig(0));
        assert!(!flight.off_hand);
        presentation.tick(cue + 0.2, &library);
        assert_eq!(presentation.flights(cue + 0.2).count(), 0);
    }

    #[test]
    fn player_ranged_flag_and_offhand_animation_follow_captured_equipment() {
        let mut profile = epic_core::Profile {
            unlocked: 3,
            party: [4, 3, 0],
            ..Default::default()
        };
        let battle = Battle::new(&profile, 3).unwrap();
        let before = battle.snapshot();
        let library = AnimationLibrary::embedded();
        let blue_timing = library
            .actor("BlueBirds")
            .unwrap()
            .timing("Action_Attack_1")
            .unwrap();
        let blue = plan_flight(
            &before,
            Source::bird(0),
            &[Source::pig(0)],
            epic_core::HATS[before.heroes[0].hat].attack,
            "Action_Attack_1",
            blue_timing,
            0.,
        )
        .expect("Original starter bow projectile");
        assert_eq!(blue.projectile.id, "Projectile_BlueBirds_Bow_01");
        let timing = ClipTiming {
            duration: 2.,
            impact: Some(0.3),
            projectile: None,
        };
        assert!(!is_melee(
            &before,
            Source::bird(0),
            &[Source::pig(0)],
            timing
        ));
        assert_eq!(action_timing(SkillKind::Attack, timing, false), (2., 2.));
        let skill = SKILLS
            .iter()
            .position(|s| s.has_parameter("use_offhandanim"))
            .unwrap();
        let index = before.heroes[0].gear.unwrap()[1].definition;
        assert_eq!(
            attack_name(&before, Source::bird(0), skill),
            format!("Action_Attack_{}", EQUIPMENT[index].animation_index)
        );
        let glove = profile
            .inventory
            .add("bird_weapon_black_punching_glove_start", Default::default())
            .unwrap();
        profile.equip_gear(3, glove).unwrap();
        let next = Battle::new(&profile, 3).unwrap().snapshot();
        assert!(is_melee(&next, Source::bird(1), &[Source::pig(0)], timing));
        assert!(plan_flight(
            &next,
            Source::bird(1),
            &[Source::pig(0)],
            skill,
            "Action_Attack_1",
            ClipTiming {
                projectile: Some(0.1),
                ..timing
            },
            0.
        )
        .is_none());
    }
    use epic_core::{Action, Profile};
    #[test]
    fn ranged_weapon_without_projectile_cue_waits_for_clip_completion() {
        let mut fight = Battle::new(
            &Profile {
                unlocked: 3,
                ..Profile::default()
            },
            3,
        )
        .unwrap();
        fight.enemies[0].pig = Some(
            PIGS.iter()
                .position(|pig| pig.id == "pig_caster_pyropig_bird2")
                .unwrap(),
        );
        let clip = ClipTiming {
            duration: 1.,
            impact: Some(0.25),
            projectile: None,
        };
        let melee = is_melee(&fight.snapshot(), Source::pig(0), &[Source::bird(0)], clip);
        assert!(!melee);
        assert_eq!(action_timing(SkillKind::Attack, clip, melee), (1., 1.));
    }
    #[test]
    fn multiple_living_targets_take_the_non_melee_timing_path() {
        let fight = Battle::new(
            &Profile {
                unlocked: 3,
                ..Profile::default()
            },
            3,
        )
        .unwrap();
        let clip = ClipTiming {
            duration: 1.,
            impact: Some(0.25),
            projectile: None,
        };
        let before = fight.snapshot();
        assert!(is_melee(&before, Source::bird(0), &[Source::pig(0)], clip));
        assert!(!is_melee(
            &before,
            Source::bird(0),
            &[Source::pig(0), Source::pig(1)],
            clip
        ));
        assert_eq!(action_timing(SkillKind::Attack, clip, false), (1., 1.));
    }
    #[test]
    fn ninja_bowman_uses_original_equipment_attack_index() {
        let library = AnimationLibrary::embedded();
        let mut fight = Battle::new(
            &Profile {
                unlocked: 3,
                ..Profile::default()
            },
            3,
        )
        .unwrap();
        let pig = PIGS
            .iter()
            .position(|pig| pig.id == "pig_ninja_bowman")
            .unwrap();
        fight.enemies[0].pig = Some(pig);
        let skill = PIGS[pig].skills[0];
        let before = fight.snapshot();
        assert_eq!(
            attack_name(&before, Source::pig(0), skill),
            "Action_Attack_2"
        );
        let mut presentation = Presentation::default();
        presentation.reset(before.clone());
        presentation.enqueue(vec![CombatEvent::SkillStarted {
            source: Source::pig(0),
            skill,
            kind: SkillKind::Attack,
            targets: vec![Source::bird(0)],
            before,
        }]);
        presentation.tick(0., &library);
        assert_eq!(
            presentation.clip_for(Source::pig(0), 0.).unwrap().0,
            "Action_Attack_2"
        );
        let cue = library
            .actor("NinjaPig")
            .unwrap()
            .timing("Action_Attack_2")
            .unwrap()
            .projectile
            .expect("Original projectile cue");
        assert_eq!(presentation.flights(cue - 0.001).count(), 0);
        presentation.tick(cue + 0.125, &library);
        let flight = presentation
            .flights(cue + 0.125)
            .next()
            .expect("Live original arrow");
        assert_eq!(flight.projectile.id, "Projectile_NinjaPig_Arrow");
        assert_eq!(flight.target, Source::bird(0));
        presentation.tick(cue + 0.25, &library);
        assert_eq!(presentation.flights(cue + 0.25).count(), 0);
    }
    #[test]
    fn missing_or_late_melee_cue_uses_shipped_timeout_instead_of_clip_end() {
        let clip = ClipTiming {
            duration: 0.5,
            impact: None,
            projectile: None,
        };
        assert_eq!(action_timing(SkillKind::Attack, clip, true), (1.5, 1.5));
        assert_eq!(
            action_timing(
                SkillKind::Attack,
                ClipTiming {
                    impact: Some(2.),
                    duration: 3.,
                    ..clip
                },
                true
            ),
            (1.5, 3.)
        );
        assert_eq!(
            action_timing(
                SkillKind::Attack,
                ClipTiming {
                    impact: Some(0.375),
                    ..clip
                },
                true
            ),
            (0.375, 0.5)
        );
    }
    #[test]
    fn melee_snapshot_publishes_at_original_impact_and_input_stays_busy_until_reaction_end() {
        let library = AnimationLibrary::embedded();
        let mut fight = Battle::new(
            &Profile {
                unlocked: 3,
                ..Profile::default()
            },
            3,
        )
        .unwrap();
        for enemy in &mut fight.enemies {
            enemy.hp = 10000;
            enemy.max_hp = 10000;
        }
        fight.enable_presentation_trace();
        let mut presentation = Presentation::default();
        presentation.reset(fight.snapshot());
        let before = fight.enemies[0].hp;
        fight.act(0, Action::Attack(0)).unwrap();
        let after = fight.enemies[0].hp;
        presentation.enqueue(fight.take_presentation_events());
        presentation.tick(0., &library);
        assert_eq!(presentation.view().enemies[0].hp, before);
        assert_eq!(
            presentation.clip_for(Source::bird(0), 0.).unwrap().0,
            "Action_Attack_1"
        );
        presentation.tick(0.374, &library);
        assert_eq!(presentation.view().enemies[0].hp, before);
        presentation.tick(0.375, &library);
        assert_eq!(presentation.view().enemies[0].hp, after);
        assert!(presentation.busy(0.375));
        assert_eq!(
            presentation.clip_for(Source::pig(0), 0.375).unwrap().0,
            "Hit"
        );
        presentation.tick(100., &library);
        assert!(!presentation.busy(100.));
        assert_eq!(presentation.view().rage, fight.rage);
    }
    #[test]
    fn revived_birds_replace_held_knockout_pose_with_original_recovery_clip() {
        let library = AnimationLibrary::embedded();
        for bird in 0..5 {
            let mut profile = Profile {
                unlocked: 3,
                party: [bird, (bird + 1) % 5, (bird + 2) % 5],
                ..Profile::default()
            };
            let mut fight = Battle::new(&profile, 3).unwrap();
            fight.enable_presentation_trace();
            let mut presentation = Presentation::default();
            presentation.reset(fight.snapshot());
            fight.heroes[0].hp = 0;
            fight.heroes[0].knocked_out = true;
            presentation.enqueue(vec![CombatEvent::StateChanged(fight.snapshot())]);
            presentation.tick(0., &library);
            assert_eq!(
                presentation.clip_for(Source::bird(0), 0.).unwrap().0,
                "KnockedOut"
            );
            fight.revive_bird(&mut profile, 0).unwrap();
            presentation.enqueue(fight.take_presentation_events());
            presentation.tick(100., &library);
            assert_eq!(
                presentation.clip_for(Source::bird(0), 100.).unwrap().0,
                "KnockedOutEnd"
            );
            assert!(presentation.view().heroes[0].alive());
            assert!(presentation.busy(100.));
            presentation.tick(10000., &library);
            assert!(!presentation.busy(10000.));
            assert!(presentation.clip_for(Source::bird(0), 10000.).is_none());
        }
    }
    #[test]
    fn level_up_stats_follow_the_queued_action_and_reach_the_visible_birds() {
        let library = AnimationLibrary::embedded();
        let mut profile = Profile {
            unlocked: 3,
            experience: epic_core::progression::Experience {
                level: 1,
                points: 34,
            },
            ..Profile::default()
        };
        let mut fight = Battle::new(&profile, 3).unwrap();
        fight.enemies[0].hp = 1;
        fight.heroes[0].hp = 71;
        fight.enable_presentation_trace();
        let mut presentation = Presentation::default();
        presentation.reset(fight.snapshot());
        fight.act(0, Action::Attack(0)).unwrap();
        presentation.enqueue(fight.take_presentation_events());
        assert!(fight.settle_experience(&mut profile) > 0);
        presentation.enqueue(fight.take_presentation_events());
        presentation.tick(0., &library);
        assert_eq!(presentation.view().heroes[0].max_hp, 120);
        presentation.tick(100., &library);
        assert!(!presentation.busy(100.));
        let hero = &presentation.view().heroes[0];
        assert_eq!(
            (hero.level, hero.max_hp, hero.hp, hero.attack),
            (2, 127, 127, 24)
        );
        assert!(hero.acted);
    }
    #[test]
    fn defeated_actor_finishes_before_the_next_wave_replaces_it() {
        let library = AnimationLibrary::embedded();
        let stage = epic_core::ENCOUNTERS
            .iter()
            .position(|encounter| encounter.waves.len() > 1)
            .unwrap();
        let mut fight = Battle::new(
            &Profile {
                unlocked: stage,
                ..Profile::default()
            },
            stage,
        )
        .unwrap();
        fight.enemies.truncate(1);
        fight.enemies[0].hp = 1;
        fight.heroes[0].attack = 10000;
        let original = fight.snapshot();
        let defeated_duration = library
            .actor(asset(&original, Source::pig(0)).unwrap())
            .unwrap()
            .timing("Defeated")
            .unwrap()
            .duration;
        let attack = library
            .actor("RedBird")
            .unwrap()
            .timing("Action_Attack_1")
            .unwrap();
        let impact = attack.impact.unwrap();
        let mut presentation = Presentation::default();
        presentation.reset(original.clone());
        fight.enable_presentation_trace();
        fight.act(0, Action::Attack(0)).unwrap();
        assert!(fight.wave > original.wave);
        presentation.enqueue(fight.take_presentation_events());
        presentation.tick(0., &library);
        presentation.tick(impact, &library);
        assert_eq!(presentation.view().wave, original.wave);
        assert!(!presentation.view().enemies[0].alive());
        presentation.tick(
            (attack.duration.max(impact + defeated_duration) - 0.001).max(impact),
            &library,
        );
        assert_eq!(presentation.view().wave, original.wave);
        presentation.tick(100., &library);
        assert_eq!(presentation.view().wave, fight.wave);
        assert!(presentation.view().enemies.iter().all(Fighter::alive));
    }

    #[test]
    fn a_delayed_render_frame_replays_the_entire_phase_to_the_simulated_state() {
        let library = AnimationLibrary::embedded();
        let mut fight = Battle::new(
            &Profile {
                unlocked: 3,
                party: [0, 1, 3],
                ..Profile::default()
            },
            3,
        )
        .unwrap();
        for enemy in &mut fight.enemies {
            enemy.hp = 10000;
            enemy.max_hp = 10000;
        }
        let mut presentation = Presentation::default();
        presentation.reset(fight.snapshot());
        fight.enable_presentation_trace();
        for hero in 0..3 {
            fight.act(hero, Action::Attack(0)).unwrap();
        }
        presentation.enqueue(fight.take_presentation_events());
        presentation.tick(0., &library);
        presentation.tick(100., &library);
        assert!(!presentation.busy(100.));
        assert_eq!(
            presentation
                .view()
                .heroes
                .iter()
                .map(|hero| hero.hp)
                .collect::<Vec<_>>(),
            fight.heroes.iter().map(|hero| hero.hp).collect::<Vec<_>>()
        );
        assert_eq!(
            (
                presentation.view().round,
                presentation.view().wave,
                presentation.view().rage,
                presentation.view().outcome
            ),
            (fight.round, fight.wave, fight.rage, fight.outcome)
        );
    }
}
