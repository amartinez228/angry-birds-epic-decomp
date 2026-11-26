//! Deterministic, renderer-independent reconstruction prototype.
//! Catalog, class links, skill coefficients and skin bonuses are recovered data.
//! Original base-stat formulas are in stats; XP/inventory progression, enemy
//! difficulty, status timing and incomplete templates remain provisional.

mod attack_damage;
mod class_actions;
pub mod collateral;
pub mod combat_events;
mod combat_math;
pub mod effects;
pub mod equipment;
pub mod inventory;
pub mod metadata;
use effects::{EffectKind, Effects, Side, Source};
#[cfg(test)]
mod class_attack_tests;
pub mod defeat_rewards;
pub mod enemy;
pub mod loot;
pub mod mastery;
pub mod progression;
pub mod resources;
pub mod retaliation;
pub mod revival;
pub mod scoring;
pub mod stats;
pub mod victory_rewards;
use retaliation::Retaliation;

pub const BIRD_NAMES: [&str; 5] = ["Red", "Chuck", "Matilda", "Bomb", "The Blues"];
pub mod campaign;
pub use campaign::{ENCOUNTERS, PIGS, STAGE_NAMES};

#[derive(Clone, Copy, Debug)]
pub struct SkillDefinition {
    pub id: &'static str,
    pub name: &'static str,
    pub template: &'static str,
    /// Original signed duration; -1 denotes a persistent/passive effect.
    pub duration: i32,
    pub parameters: &'static [(&'static str, f32)],
    /// Original SkillTargetTypes and PigTargetingBehavior numeric values.
    pub target_type: u32,
    pub targeting: u32,
    pub target_self: bool,
}
impl SkillDefinition {
    pub fn has_parameter(&self, name: &str) -> bool {
        self.parameters.iter().any(|(key, _)| *key == name)
    }
    pub fn parameter(&self, name: &str, default: f32) -> f32 {
        self.parameters
            .iter()
            .find(|(key, _)| *key == name)
            .map(|(_, value)| *value)
            .unwrap_or(default)
    }
}
#[derive(Clone, Copy, Debug)]
pub struct Hat {
    pub id: &'static str,
    pub name: &'static str,
    pub bird: usize,
    pub price: u32,
    pub class_id: &'static str,
    pub asset_id: &'static str,
    pub bonus_hp_percent: f32,
    pub bonus_damage_percent: f32,
    pub attack: usize,
    pub support: usize,
    pub passive_skill_id: &'static str,
}
include!("catalog_generated.rs");

// The original prototype's exact ordering, for lossless v1 ownership migration.
const LEGACY_HATS: [&str; 30] = [
    "skin_knight",
    "skin_guardian",
    "skin_samurai",
    "skin_avenger",
    "skin_paladin",
    "skin_stoneguard",
    "skin_mage",
    "skin_lightningbird",
    "skin_rainbird",
    "skin_wizard",
    "skin_thunderbird",
    "skin_illusionist",
    "skin_cleric",
    "skin_druid",
    "skin_princess",
    "skin_bard",
    "skin_priest",
    "skin_witch",
    "skin_pirate",
    "skin_cannoneer",
    "skin_berserk",
    "skin_captn",
    "skin_seadog",
    "skin_winterfighter",
    "skin_tricksters",
    "skin_rogues",
    "skin_marksmen",
    "skin_skulkers",
    "skin_treasurehunters",
    "skin_spies",
];
fn hat_index(id: &str) -> Result<usize, &'static str> {
    HATS.iter()
        .position(|hat| hat.id == id)
        .ok_or("Unknown saved hat ID")
}
fn percent(value: i32, multiplier: f32) -> i32 {
    (value as f32 * multiplier / 100.).round() as i32
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Profile {
    pub gold: u32,
    /// Original per-level residual XP and player level (save version 4+).
    pub experience: progression::Experience,
    /// Original full-party revive entitlement, persisted since save version 5.
    pub first_revive_used: bool,
    pub stars: [u8; ENCOUNTERS.len()],
    pub mastery: [mastery::Progress; mastery::CLASSES.len()],
    pub inventory: inventory::Inventory,
    pub resources: resources::Resources,
    /// Highest unlocked stage, always inside STAGE_NAMES.
    pub unlocked: usize,
    pub owned: [bool; HATS.len()],
    pub equipped: [usize; 5],
    pub party: [usize; 3],
}

impl Default for Profile {
    fn default() -> Self {
        let mut owned = [false; HATS.len()];
        for i in STARTER_HATS {
            owned[i] = true;
        }
        Self {
            gold: 500,
            experience: progression::Experience::default(),
            first_revive_used: false,
            stars: [0; ENCOUNTERS.len()],
            mastery: [mastery::Progress::default(); mastery::CLASSES.len()],
            inventory: inventory::Inventory::default(),
            resources: resources::Resources::starting(),
            unlocked: 0,
            owned,
            equipped: STARTER_HATS,
            party: [0, 1, 2],
        }
    }
}

impl Profile {
    pub fn level(&self) -> u32 {
        self.experience.level
    }

    pub fn bird_stats(&self, bird: usize) -> Option<stats::BaseStats> {
        self.bird_stats_for_hat(bird, *self.equipped.get(bird)?)
    }

    pub(crate) fn bird_stats_for_hat(
        &self,
        bird: usize,
        hat_index: usize,
    ) -> Option<stats::BaseStats> {
        let hands = self.inventory.hands(bird)?;
        self.bird_stats_with_gear(
            bird,
            hat_index,
            [
                *self.inventory.items().get(hands[0])?,
                *self.inventory.items().get(hands[1])?,
            ],
        )
    }

    pub(crate) fn bird_stats_with_gear(
        &self,
        bird: usize,
        hat_index: usize,
        gear: [inventory::Gear; 2],
    ) -> Option<stats::BaseStats> {
        let definition = stats::BIRDS.get(bird)?;
        let hat = HATS.get(hat_index)?;
        if hat.bird != bird {
            return None;
        }
        definition.base_stats(
            self.level() as i32,
            gear[0].main_stat(),
            gear[1].main_stat(),
            self.mastery_for_hat(hat_index)?.rank as usize,
            hat,
        )
    }

    /// Every catalog entry uses earned gold. No premium/event/time requirements.
    pub fn buy_and_equip(&mut self, index: usize) -> Result<(), &'static str> {
        let hat = HATS.get(index).ok_or("Unknown hat")?;
        if !self.owned[index] {
            self.gold = self
                .gold
                .checked_sub(hat.price)
                .ok_or("Earn more gold in battle")?;
            self.owned[index] = true;
        }
        self.equipped[hat.bird] = index;
        Ok(())
    }

    pub fn set_party(&mut self, slot: usize, bird: usize) -> Result<(), &'static str> {
        if slot >= 3 || bird >= 5 {
            return Err("Unknown party slot or bird");
        }
        if let Some(other) = self.party.iter().position(|&value| value == bird) {
            self.party.swap(slot, other);
        } else {
            self.party[slot] = bird;
        }
        Ok(())
    }

    pub fn encode(&self) -> String {
        format!(
            "EPIC_RUST_9\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n{}\n",
            self.gold,
            self.experience.points,
            self.experience.level,
            ENCOUNTERS[self.unlocked].id,
            self.owned
                .iter()
                .enumerate()
                .filter(|(_, owned)| **owned)
                .map(|(i, _)| HATS[i].id)
                .collect::<Vec<_>>()
                .join(","),
            self.equipped
                .iter()
                .map(|&i| HATS[i].id)
                .collect::<Vec<_>>()
                .join(","),
            self.party
                .iter()
                .map(|v| v.to_string())
                .collect::<Vec<_>>()
                .join(","),
            u8::from(self.first_revive_used),
            self.encode_stars(),
            self.encode_mastery(),
            self.inventory.encode_items(),
            self.inventory.encode_hands(),
            self.resources.encode()
        )
    }

    pub fn decode(text: &str) -> Result<Self, &'static str> {
        let lines: Vec<_> = text.lines().collect();
        let version = lines.first().copied().ok_or("Empty save")?;
        let resourced = version == "EPIC_RUST_9";
        let inventoried = resourced || version == "EPIC_RUST_8";
        let mastered = inventoried || version == "EPIC_RUST_7";
        let collected = mastered || version == "EPIC_RUST_6";
        let revival = collected || version == "EPIC_RUST_5";
        let modern = revival || version == "EPIC_RUST_4";
        if lines.len()
            != if resourced {
                14
            } else if inventoried {
                13
            } else if mastered {
                11
            } else if collected {
                10
            } else if revival {
                9
            } else if modern {
                8
            } else {
                7
            }
            || ![
                "EPIC_RUST_1",
                "EPIC_RUST_2",
                "EPIC_RUST_3",
                "EPIC_RUST_4",
                "EPIC_RUST_5",
                "EPIC_RUST_6",
                "EPIC_RUST_7",
                "EPIC_RUST_8",
                "EPIC_RUST_9",
            ]
            .contains(&version)
        {
            return Err("Unrecognized save format");
        }
        let number = |s: &str| s.parse::<u32>().map_err(|_| "Invalid save number");
        let gold = number(lines[1])?;
        let stars = if collected {
            Self::decode_stars(lines[9])?
        } else {
            [0; ENCOUNTERS.len()]
        };
        let first_revive_used = if revival {
            match lines[8] {
                "0" => false,
                "1" => true,
                _ => return Err("Invalid first-revive flag"),
            }
        } else {
            false
        };
        let xp = number(lines[2])?;
        let experience = if modern {
            let level = number(lines[3])?;
            if !(1..=progression::MAX_LEVEL).contains(&level) {
                return Err("Invalid player level");
            }
            progression::Experience { level, points: xp }
        } else {
            progression::Experience::from_legacy(xp)
        };
        let shift = usize::from(modern);
        let unlocked = if modern || version == "EPIC_RUST_3" {
            ENCOUNTERS
                .iter()
                .position(|e| e.id == lines[3 + shift])
                .ok_or("Unknown saved encounter ID")?
        } else {
            number(lines[3])? as usize
        };
        if unlocked >= STAGE_NAMES.len() {
            return Err("Invalid unlocked stage");
        }
        let mut owned = [false; HATS.len()];
        let equipment: Vec<usize> = if lines[0] == "EPIC_RUST_1" {
            if lines[4 + shift].len() != LEGACY_HATS.len() {
                return Err("Invalid legacy hat flags");
            }
            for (i, flag) in lines[4 + shift].bytes().enumerate() {
                match flag {
                    b'0' => {}
                    b'1' => owned[hat_index(LEGACY_HATS[i])?] = true,
                    _ => return Err("Invalid legacy hat flag"),
                }
            }
            lines[5 + shift]
                .split(',')
                .map(|v| {
                    let old = number(v)? as usize;
                    hat_index(LEGACY_HATS.get(old).ok_or("Invalid legacy hat index")?)
                })
                .collect::<Result<_, _>>()?
        } else {
            if !lines[4 + shift].is_empty() {
                for id in lines[4 + shift].split(',') {
                    owned[hat_index(id)?] = true;
                }
            }
            lines[5 + shift]
                .split(',')
                .map(hat_index)
                .collect::<Result<_, _>>()?
        };
        let party: Vec<_> = lines[6 + shift]
            .split(',')
            .map(number)
            .collect::<Result<_, _>>()?;
        if equipment.len() != 5 || party.len() != 3 {
            return Err("Invalid equipment or party");
        }
        let mut equipped = [0; 5];
        for (bird, &index) in equipment.iter().enumerate() {
            if HATS[index].bird != bird || !owned[index] {
                return Err("Equipped hat is invalid or unowned");
            }
            equipped[bird] = index;
        }
        let party = [party[0] as usize, party[1] as usize, party[2] as usize];
        if party.iter().any(|&v| v >= 5)
            || party[0] == party[1]
            || party[1] == party[2]
            || party[0] == party[2]
        {
            return Err("Invalid party");
        }
        let mastery = if mastered {
            Self::decode_mastery(lines[10], &owned)?
        } else {
            [mastery::Progress::default(); mastery::CLASSES.len()]
        };
        Ok(Self {
            gold,
            first_revive_used,
            stars,
            mastery,
            inventory: if inventoried {
                inventory::Inventory::decode(lines[11], lines[12])?
            } else {
                inventory::Inventory::default()
            },
            resources: if resourced {
                resources::Resources::decode(lines[13])?
            } else {
                resources::Resources::starting()
            },
            experience,
            unlocked,
            owned,
            equipped,
            party,
        })
    }
}

#[derive(Clone, Debug)]
pub struct Fighter {
    /// Native HealDamage accumulates this float until HealCurrentTurn drains it.
    summed_heal_per_turn: f32,
    /// Bird equipment captured at battle entry, including each owned copy's
    /// level. Pig loadouts continue to resolve from their recovered definition.
    pub gear: Option<[inventory::Gear; 2]>,
    pub level: i32,
    pub mastery_rank: u32,
    /// Bird knockout remains separate from health (a stat refresh can refill HP).
    pub knocked_out: bool,
    pub(crate) loot_rewarded: bool,
    pub name: String,
    pub bird: Option<usize>,
    pub hat: usize,
    pub pig: Option<usize>,
    pub hp: i32,
    pub max_hp: i32,
    pub attack: i32,
    pub acted: bool,
    pub effects: Effects,
    pub ai: enemy::EnemyAi,
}

impl Fighter {
    pub fn alive(&self) -> bool {
        self.hp > 0 && !self.knocked_out
    }
    pub fn can_act(&self) -> bool {
        self.alive() && !self.acted && !self.effects.is_stunned()
    }
    pub fn attack_value(&self) -> i32 {
        percent(self.attack, self.effects.attack_percent()).max(0)
    }
    fn attack_float_value(&self) -> f32 {
        (self.attack as f32 * (self.effects.attack_percent() / 100.)).max(0.)
    }
    fn damage(&mut self, amount: i32) -> i32 {
        let amount = self.damage_amount(amount as f32);
        self.receive_normalized_damage(amount)
    }
    fn receive_normalized_damage(&mut self, amount: i32) -> i32 {
        let removed = self.hp.min(amount);
        self.hp -= removed;
        if self.hp <= 0 && self.bird.is_some() {
            self.knocked_out = true;
        }
        removed
    }
    fn damage_amount(&self, amount: f32) -> i32 {
        let amount = amount * ((100. + self.effects.vulnerability()) / 100.);
        let amount = amount * ((100. - self.effects.protection()) / 100.);
        combat_math::normalize(amount).max(0)
    }
    fn heal(&mut self, amount: i32) {
        self.queue_healing(amount as f32);
        self.resolve_healing();
    }
    fn heal_percent(&mut self, base: i32, percentage: f32) {
        self.queue_healing((base as f32 * percentage) / 100.);
        self.resolve_healing();
    }
    fn queue_healing(&mut self, amount: f32) {
        self.summed_heal_per_turn += amount;
    }
    fn resolve_healing(&mut self) -> i32 {
        let mut normalized = combat_math::normalize(self.summed_heal_per_turn);
        self.summed_heal_per_turn = 0.;
        if normalized > 0 {
            normalized = combat_math::normalize(self.effects.reduce_healing(normalized as f32));
            self.hp = self.hp.saturating_add(normalized).min(self.max_hp);
        }
        normalized
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Outcome {
    Active,
    Won,
    Lost,
    Claimed,
}
#[derive(Clone, Copy, Debug)]
pub enum Action {
    Attack(usize),
    Support(usize),
    Pepper,
}

#[derive(Clone, Debug)]
pub struct Battle {
    pub heroes: Vec<Fighter>,
    pub enemies: Vec<Fighter>,
    pub stage: usize,
    pub round: u32,
    pub wave: u32,
    pub waves: u32,
    pub rage: u32,
    pub outcome: Outcome,
    pub log: Vec<String>,
    rng_state: u64,
    presentation_events: Option<Vec<combat_events::CombatEvent>>,
    defeat_rewards: defeat_rewards::DefeatRewards,
    scoring: scoring::Ledger,
    victory_rewards: Option<victory_rewards::VictoryRewards>,
    wheel_random: loot::SeededLoot,
}

impl Battle {
    pub fn new(profile: &Profile, stage: usize) -> Result<Self, &'static str> {
        Self::new_with_seed(profile, stage, stage as u64 ^ 0x4550494352555354)
    }

    pub fn new_with_seed(profile: &Profile, stage: usize, seed: u64) -> Result<Self, &'static str> {
        if stage >= STAGE_NAMES.len() || stage > profile.unlocked {
            return Err("Stage is locked");
        }
        let heroes = profile
            .party
            .iter()
            .take(ENCOUNTERS[stage].max_birds)
            .map(|&bird| {
                let hat = profile.equipped[bird];
                let stats = profile.bird_stats(bird).expect("Valid party bird stats");
                // The current combat engine stores whole-number HP/attack.
                // Preserve native float getter results in the stats module;
                // exact native damage/HP precision remains separate work.
                let max_hp = (stats.health.round_ties_even() as i32).max(1);
                Fighter {
                    summed_heal_per_turn: 0.,
                    gear: Some(
                        profile
                            .inventory
                            .hands(bird)
                            .unwrap()
                            .map(|index| profile.inventory.items()[index]),
                    ),
                    mastery_rank: profile
                        .mastery_for_hat(hat)
                        .expect("Original party class")
                        .rank,
                    knocked_out: false,
                    level: profile.level() as i32,
                    loot_rewarded: false,
                    name: BIRD_NAMES[bird].into(),
                    bird: Some(bird),
                    hat,
                    pig: None,
                    hp: max_hp,
                    max_hp,
                    attack: (stats.attack.round_ties_even() as i32).max(0),
                    acted: false,
                    effects: Effects::default(),
                    ai: enemy::EnemyAi::default(),
                }
            })
            .collect();
        let mut battle = Self {
            heroes,
            enemies: vec![],
            stage,
            round: 1,
            wave: 1,
            waves: ENCOUNTERS[stage].waves.len() as u32,
            rage: 0,
            outcome: Outcome::Active,
            rng_state: seed,
            presentation_events: None,
            defeat_rewards: defeat_rewards::DefeatRewards::new(seed ^ 0x4c4f4f545f455049),
            scoring: scoring::Ledger::default(),
            victory_rewards: None,
            wheel_random: loot::SeededLoot::new(seed ^ 0x574845454c5f4550),
            log: vec![format!(
                "{}: choose a bird, then a target.",
                STAGE_NAMES[stage]
            )],
        };
        battle.spawn_wave();
        Ok(battle)
    }

    fn spawn_wave(&mut self) {
        self.scoring.wave_turn = 0;
        let encounter = ENCOUNTERS[self.stage];
        self.enemies = encounter.waves[self.wave as usize - 1]
            .spawns
            .iter()
            .flat_map(|spawn| {
                let pig = PIGS[spawn.pig];
                let level = (encounter.base_level as i32 + spawn.level_difference).max(1);
                let stats = pig.character_stats(level);
                let max_hp = (stats.health as i32).max(1);
                (0..spawn.amount).map(move |_| Fighter {
                    summed_heal_per_turn: 0.,
                    gear: None,
                    mastery_rank: 0,
                    knocked_out: false,
                    level,
                    loot_rewarded: false,
                    name: pig.name.into(),
                    bird: None,
                    hat: 0,
                    pig: Some(spawn.pig),
                    hp: max_hp,
                    max_hp,
                    attack: (stats.attack as i32).max(0),
                    acted: false,
                    effects: Effects::default(),
                    ai: enemy::EnemyAi::default(),
                })
            })
            .collect();
    }

    fn say(&mut self, message: String) {
        self.log.push(message);
        if self.log.len() > 5 {
            self.log.remove(0);
        }
    }

    fn strike(&mut self, hero: usize, target: usize) -> Result<(), &'static str> {
        let attack = SKILLS[HATS[self.heroes[hero].hat].attack];
        self.strike_with(hero, target, attack)
    }

    fn strike_with(
        &mut self,
        hero: usize,
        target: usize,
        attack: SkillDefinition,
    ) -> Result<(), &'static str> {
        let actor = &self.heroes[hero];
        let name = actor.name.clone();
        let power = actor.attack_value();
        let primary_power = actor.attack_float_value();
        if !self.enemies.get(target).is_some_and(Fighter::alive) {
            return Err("Choose a living pig");
        }
        self.trace_skill(
            Source::bird(hero),
            HATS[self.heroes[hero].hat].attack,
            combat_events::SkillKind::Attack,
            Some(Source::pig(target)),
            attack.parameter("all", 0.) > 0.,
        );
        let hits = attack.parameter("attack_count", 1.) as u32;
        let mut collateral_targets = Vec::new();
        let mut primary_damage = 0;
        let all = attack.parameter("all", 0.) > 0.;
        let mut total = 0;
        for i in 0..self.enemies.len() {
            if (i != target && !all) || !self.enemies[i].alive() {
                continue;
            }
            let mut normalized_damage = 0;
            for _ in 0..hits {
                if !self.heroes[hero].alive() || !self.enemies[i].alive() {
                    break;
                }
                total += self.collateral_before_hit(
                    Source::bird(hero),
                    Source::pig(i),
                    attack,
                    &mut collateral_targets,
                );
                let damage_per_hit = attack.damage_against(primary_power, &self.enemies[i].effects);
                let normalized_hit = self.enemies[i].damage_amount(damage_per_hit);
                normalized_damage += normalized_hit;
                let damage = self.enemies[i].receive_normalized_damage(normalized_hit);
                primary_damage += damage;
                total += damage;
                let reaction = self.enemies[i].effects.retaliation_damage(damage);
                self.heroes[hero].damage(reaction);
                self.healing_attack_hit(Source::bird(hero), attack, normalized_hit);
                total += self.collateral_hit(Source::bird(hero), Source::pig(i), attack);
            }
            if !self.enemies[i].alive() {
                continue;
            }
            let source = Source::bird(hero);
            if attack.template == "AttackAndApplyDotSkill"
                && self.roll_percent(attack.parameter("dot_chance", 100.))
            {
                self.enemies[i].effects.apply(
                    attack.id,
                    source,
                    attack.duration,
                    EffectKind::Poison(percent(
                        power,
                        attack.parameter("dot_damage_in_percent", 0.),
                    )),
                );
            }
            if attack.template == "SimpleAttackWithTauntSkill" {
                self.enemies[i].effects.apply(
                    attack.id,
                    source,
                    attack.duration,
                    EffectKind::Taunt(hero),
                );
            }
            if attack.template == "AttackWithDamageDebuffSkill"
                && self.roll_percent(attack.parameter("chance", 100.))
            {
                self.enemies[i].effects.apply(
                    attack.id,
                    source,
                    attack.duration,
                    EffectKind::Weakness(attack.parameter("reduction_in_percent", 0.)),
                );
            }
            if attack.template == "AttackWithIncreaseDamageReceived"
                && (!attack.has_parameter("effect_only_target") || i == target)
                && self.roll_percent(attack.parameter("chance", 100.))
            {
                self.enemies[i].effects.apply(
                    attack.id,
                    source,
                    attack.duration,
                    EffectKind::Vulnerability(attack.parameter("increase_in_percent", 0.)),
                );
            }
            self.stunning_attack_finish(source, Source::pig(i), attack, normalized_damage);
            self.healing_debuff_attack_finish(source, Source::pig(i), attack, normalized_damage);
            if attack.template == "AttackWithPurgeSkill"
                && self.roll_percent(attack.parameter("purge_chance", 0.))
            {
                self.enemies[i].effects.purge();
            }
        }
        self.collateral_stun_finish(
            Source::bird(hero),
            Source::pig(target),
            attack,
            &collateral_targets,
            primary_damage,
        );
        self.say(format!("{name}: {} deals {total} damage.", attack.name));
        self.trace_state();
        Ok(())
    }

    fn random_index(&mut self, length: usize) -> usize {
        let limit = u64::MAX - u64::MAX % length as u64;
        loop {
            self.rng_state = self.rng_state.wrapping_add(0x9e3779b97f4a7c15);
            let mut value = self.rng_state;
            value = (value ^ (value >> 30)).wrapping_mul(0xbf58476d1ce4e5b9);
            value = (value ^ (value >> 27)).wrapping_mul(0x94d049bb133111eb);
            value ^= value >> 31;
            if value < limit {
                return (value % length as u64) as usize;
            }
        }
    }

    fn roll_percent(&mut self, percent: f32) -> bool {
        if percent >= 100. {
            true
        } else if percent <= 0. {
            false
        } else {
            (self.random_index(1_000_000) as f32) < percent * 10000.
        }
    }

    fn advance_effect_clock(&mut self, side: Side) {
        for fighter in self.heroes.iter_mut().chain(self.enemies.iter_mut()) {
            fighter.effects.advance_source_turn(side);
        }
    }

    fn random_enemy(&mut self) -> Option<usize> {
        let living: Vec<_> = self
            .enemies
            .iter()
            .enumerate()
            .filter(|(_, e)| e.alive())
            .map(|(i, _)| i)
            .collect();
        if living.is_empty() {
            None
        } else {
            Some(living[self.random_index(living.len())])
        }
    }

    pub fn act(&mut self, hero: usize, action: Action) -> Result<(), &'static str> {
        if self.outcome != Outcome::Active {
            return Err("Battle has ended");
        }
        let actor = self.heroes.get(hero).ok_or("Unknown bird")?;
        if !actor.can_act() {
            return Err("Choose a bird that can still act");
        }
        let name = actor.name.clone();
        let power = actor.attack_value();
        let support = SKILLS[HATS[actor.hat].support];
        match action {
            Action::Attack(target) => {
                self.strike(hero, target)?;
                self.rage = (self.rage + 12).min(100);
            }
            Action::Support(target) => {
                if !self.heroes.get(target).is_some_and(Fighter::alive) {
                    return Err("Choose a living ally");
                }
                if ![
                    "BlockDamageSkill",
                    "ProtectAndBlockDamage",
                    "TauntAndDefendSkill",
                    "ThornSkill",
                    "ApplyTauntAndRetaliation",
                    "HealAndCleanseSkill",
                    "HealAndHotSkill",
                    "IncreaseDamageWithEffectsSkill",
                    "IncreaseDamageAndCleanse",
                    "OrderAttackSkill",
                ]
                .contains(&support.template)
                    || (support.template == "OrderAttackSkill" && support.has_parameter("image"))
                {
                    return Err("This support ability is not available in this build yet");
                }
                let source = Source::bird(hero);
                self.trace_skill(
                    source,
                    HATS[self.heroes[hero].hat].support,
                    combat_events::SkillKind::Support,
                    Some(Source::bird(target)),
                    support.has_parameter("all"),
                );
                if support.template == "OrderAttackSkill" {
                    if let Some(enemy) = self.random_enemy() {
                        self.strike(target, enemy)?;
                    }
                } else {
                    let all = support.has_parameter("all");
                    let caster_health = self.heroes[hero].max_hp;
                    for i in 0..self.heroes.len() {
                        if (i != target && !all) || !self.heroes[i].alive() {
                            continue;
                        }
                        match support.template {
                            "BlockDamageSkill"
                            | "ProtectAndBlockDamage"
                            | "TauntAndDefendSkill" => {
                                let protection = support.parameter("percent", 0.)
                                    + if i == target {
                                        support.parameter("extra_percent_on_target", 0.)
                                    } else {
                                        0.
                                    };
                                self.heroes[i].effects.apply(
                                    support.id,
                                    source,
                                    support.duration,
                                    EffectKind::Protection(protection),
                                );
                            }
                            "ThornSkill" => {
                                let reaction = Retaliation::Fixed {
                                    damage: percent(
                                        power,
                                        support.parameter("enemy_damage_retaliated_percent", 0.),
                                    ),
                                };
                                self.heroes[i].effects.apply(
                                    support.id,
                                    source,
                                    support.duration,
                                    EffectKind::Retaliation(reaction),
                                );
                            }
                            "ApplyTauntAndRetaliation" => {
                                let reaction = Retaliation::Reflected {
                                    percent: support
                                        .parameter("enemy_damage_retaliated_percent", 0.),
                                };
                                self.heroes[i].effects.apply(
                                    support.id,
                                    source,
                                    support.duration,
                                    EffectKind::Retaliation(reaction),
                                );
                            }
                            "IncreaseDamageWithEffectsSkill" | "IncreaseDamageAndCleanse" => {
                                self.heroes[i].effects.apply(
                                    support.id,
                                    source,
                                    support.duration,
                                    EffectKind::AttackBonus(
                                        support.parameter("damage_increase", 0.),
                                    ),
                                );
                                let sacrifice = percent(
                                    self.heroes[i].max_hp,
                                    support.parameter("damage_friend", 0.),
                                );
                                self.heroes[i].hp = (self.heroes[i].hp - sacrifice).max(0);
                                if support.template == "IncreaseDamageAndCleanse"
                                    && self.roll_percent(support.parameter("cleanse_chance", 0.))
                                {
                                    self.heroes[i].effects.cleanse();
                                }
                            }
                            "HealAndCleanseSkill" | "HealAndHotSkill" => {
                                let base = if support.has_parameter("invoker") {
                                    caster_health
                                } else if support.has_parameter("first_target") {
                                    self.heroes[target].max_hp
                                } else {
                                    self.heroes[i].max_hp
                                };
                                let amount = support.parameter("health_in_percent", 0.)
                                    + if i == target {
                                        support.parameter("additional_percent_on_target", 0.)
                                    } else {
                                        0.
                                    };
                                self.heroes[i].heal_percent(base, amount);
                                if (!support.has_parameter("cleanse_target") || i == target)
                                    && self.roll_percent(support.parameter("cleanse_chance", 0.))
                                {
                                    self.heroes[i].effects.cleanse();
                                }
                                if support.template == "HealAndHotSkill"
                                    && self.roll_percent(support.parameter("hot_chance", 0.))
                                {
                                    self.heroes[i].effects.apply(
                                        support.id,
                                        source,
                                        support.duration,
                                        EffectKind::Regeneration(percent(
                                            base,
                                            support.parameter("hot_in_percent", 0.),
                                        )),
                                    );
                                }
                            }
                            _ => unreachable!(),
                        }
                    }
                    if matches!(
                        support.template,
                        "TauntAndDefendSkill" | "ApplyTauntAndRetaliation"
                    ) {
                        for enemy in self.enemies.iter_mut().filter(|enemy| enemy.alive()) {
                            enemy.effects.apply(
                                support.id,
                                source,
                                support.duration,
                                EffectKind::Taunt(target),
                            );
                        }
                    }
                }
                self.say(format!("{name} uses {}.", support.name));
                self.rage = (self.rage + 8).min(100);
            }
            Action::Pepper => {
                if self.rage < 100 {
                    return Err("Rage pepper needs 100 rage");
                }
                let bird = self.heroes[hero]
                    .bird
                    .ok_or("Rage pepper requires a bird")?;
                let rage_skill = SKILLS[RAGE_SKILLS[bird]];
                self.trace_skill(
                    Source::bird(hero),
                    RAGE_SKILLS[bird],
                    combat_events::SkillKind::Rage,
                    None,
                    false,
                );
                self.rage = 0;
                match bird {
                    0 => {
                        if let Some(target) = self
                            .enemies
                            .iter()
                            .enumerate()
                            .filter(|(_, e)| e.alive())
                            .max_by_key(|(_, e)| e.hp)
                            .map(|(i, _)| i)
                        {
                            self.enemies[target].damage(percent(
                                power,
                                rage_skill.parameter("damage_in_percent", 0.),
                            ));
                        }
                    }
                    1 => {
                        for _ in 0..rage_skill.parameter("attack_count", 0.) as usize {
                            let Some(target) = self.random_enemy() else {
                                break;
                            };
                            let living: Vec<_> = self
                                .heroes
                                .iter()
                                .enumerate()
                                .filter(|(_, h)| h.alive())
                                .map(|(i, _)| i)
                                .collect();
                            if living.is_empty() {
                                break;
                            }
                            let attacker = living[self.random_index(living.len())];
                            self.strike(attacker, target)?;
                        }
                    }
                    2 => {
                        for ally in self.heroes.iter_mut().filter(|h| h.alive()) {
                            ally.heal_percent(
                                ally.max_hp,
                                rage_skill.parameter("health_in_percent", 0.),
                            );
                            ally.effects.cleanse();
                        }
                    }
                    3 => {
                        for enemy in self.enemies.iter_mut().filter(|e| e.alive()) {
                            enemy.damage(percent(
                                power,
                                rage_skill.parameter("damage_in_percent", 0.),
                            ));
                        }
                    }
                    4 => {
                        if let Some(target) = self.random_enemy() {
                            self.enemies[target].damage(percent(
                                power,
                                rage_skill.parameter("damage_in_percent", 0.),
                            ));
                        }
                        if let Some(target) = self.random_enemy() {
                            self.enemies[target].effects.apply(
                                rage_skill.id,
                                Source::bird(hero),
                                rage_skill.parameter("stun_duration", 1.) as i32,
                                EffectKind::Stun,
                            );
                        }
                        if let Some(target) = self.random_enemy() {
                            self.enemies[target].effects.purge();
                        }
                    }
                    _ => unreachable!(),
                }
                self.say(format!("{name} uses {}!", rage_skill.name));
            }
        }
        self.trace_state();
        self.heroes[hero].acted = true;
        self.resolve();
        if self.outcome == Outcome::Active && self.heroes.iter().all(|h| !h.can_act()) {
            self.enemy_turn();
        }
        self.trace_state();
        Ok(())
    }

    fn resolve(&mut self) {
        for hero in &mut self.heroes {
            if hero.hp <= 0 {
                hero.knocked_out = true;
            }
        }
        self.collect_defeat_loot();
        if self.heroes.iter().all(|h| !h.alive()) {
            self.outcome = Outcome::Lost;
            return;
        }
        if self.enemies.iter().all(|e| !e.alive()) {
            if self.wave == self.waves {
                self.outcome = Outcome::Won;
                self.say("Victory! Collect your gold at camp.".into());
            } else {
                self.wave += 1;
                for hero in &mut self.heroes {
                    hero.acted = hero.effects.is_stunned();
                }
                self.spawn_wave();
                self.say(format!("Wave {} approaches!", self.wave));
            }
        }
    }

    fn enemy_turn(&mut self) {
        loop {
            self.advance_effect_clock(Side::Pigs);
            for i in 0..self.enemies.len() {
                if !self.enemies[i].alive() {
                    continue;
                }
                self.enemies[i].hp =
                    (self.enemies[i].hp - self.enemies[i].effects.poison_damage()).max(0);
                if self.enemies[i].alive() {
                    let heal = self.enemies[i].effects.regeneration();
                    self.enemies[i].heal(heal);
                }
                if !self.enemies[i].alive() || self.enemies[i].effects.is_stunned() {
                    continue;
                }
                self.enemy_action(i);
            }
            // Pig defeat callbacks score against the old wave-round counter,
            // before the complete initiative cycle advances.
            self.collect_defeat_loot();
            self.scoring.wave_turn = self.scoring.wave_turn.wrapping_add(1);
            self.round += 1;
            for hero in self.heroes.iter_mut().filter(|h| h.alive()) {
                hero.hp = (hero.hp - hero.effects.poison_damage()).max(0);
                if hero.alive() {
                    hero.heal(hero.effects.regeneration());
                }
            }
            self.advance_effect_clock(Side::Birds);
            for hero in &mut self.heroes {
                hero.acted = hero.effects.is_stunned();
            }
            self.resolve();
            if self.outcome != Outcome::Active || self.heroes.iter().any(Fighter::can_act) {
                break;
            }
        }
    }

    pub fn reward(&self) -> u32 {
        200 + self.stage as u32 * 25
    }

    pub fn claim(&mut self, profile: &mut Profile) -> Result<u32, &'static str> {
        if self.outcome != Outcome::Won {
            return Err("No unclaimed victory");
        }
        // Commit all reward/progression changes together. Capacity or invalid
        // reward errors must not pay gold, consume RNG, or lose the victory.
        let mut completed = self.clone();
        let mut updated = profile.clone();
        completed.settle_experience(&mut updated);
        completed.settle_mastery(&mut updated);
        let stars = completed.result_score().expect("Won battle score").stars;
        let receipt = victory_rewards::VictoryRewards::roll(
            self.stage,
            stars,
            updated.level() as i32,
            &mut completed.wheel_random,
        )?;
        let wheel_gold = receipt.deposit(&mut updated)?;
        let gold = self
            .reward()
            .checked_add(wheel_gold)
            .ok_or("Reward gold overflow")?;
        updated.gold = updated
            .gold
            .checked_add(self.reward())
            .ok_or("Gold wallet full")?;
        updated.stars[self.stage] = updated.stars[self.stage].max(stars);
        updated.unlocked = updated
            .unlocked
            .max((self.stage + 1).min(STAGE_NAMES.len() - 1));
        completed.victory_rewards = Some(receipt);
        completed.outcome = Outcome::Claimed;
        *profile = updated;
        *self = completed;
        Ok(gold)
    }

    pub fn victory_rewards(&self) -> Option<&victory_rewards::VictoryRewards> {
        self.victory_rewards.as_ref()
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn every_hat_can_be_bought_with_gold_and_equipped() {
        let mut profile = Profile {
            gold: 100_000,
            ..Profile::default()
        };
        for (i, hat) in HATS.iter().enumerate() {
            let before = profile.gold;
            let owned = profile.owned[i];
            profile.buy_and_equip(i).unwrap();
            assert!(profile.owned[i]);
            assert_eq!(profile.gold, before - if owned { 0 } else { hat.price });
            assert_eq!(profile.equipped[hat.bird], i);
            let paid = profile.gold;
            profile.buy_and_equip(i).unwrap();
            assert_eq!(profile.gold, paid);
        }
    }

    #[test]
    fn insufficient_gold_is_atomic() {
        let mut profile = Profile {
            gold: 0,
            ..Profile::default()
        };
        let original = profile.clone();
        assert!(profile.buy_and_equip(5).is_err());
        assert_eq!(profile, original);
    }

    #[test]
    fn save_round_trip_and_reject_invalid_equipment() {
        let mut profile = Profile::default();
        profile.buy_and_equip(5).unwrap();
        profile.set_party(0, 4).unwrap();
        assert_eq!(Profile::decode(&profile.encode()).unwrap(), profile);
        let broken = profile.encode().replace("skin_mage", "skin_knight");
        assert!(Profile::decode(&broken).is_err());
        assert!(Profile::decode("EPIC_RUST_2").is_err());
    }

    #[test]
    fn invalid_actions_do_not_consume_a_turn() {
        let mut battle = Battle::new(&Profile::default(), 0).unwrap();
        assert!(battle.act(0, Action::Pepper).is_err());
        assert!(!battle.heroes[0].acted);
        assert!(battle.act(0, Action::Attack(50)).is_err());
        assert!(!battle.heroes[0].acted);
    }

    #[test]
    fn starter_party_can_win_and_rewards_cannot_be_claimed_twice() {
        let mut profile = Profile::default();
        let mut battle = Battle::new(&profile, 0).unwrap();
        for _ in 0..200 {
            if battle.outcome != Outcome::Active {
                break;
            }
            let hero = battle
                .heroes
                .iter()
                .position(|h| h.alive() && !h.acted)
                .unwrap();
            let enemy = battle.enemies.iter().position(Fighter::alive).unwrap();
            battle.act(hero, Action::Attack(enemy)).unwrap();
        }
        assert_eq!(battle.outcome, Outcome::Won);
        assert_eq!(battle.claim(&mut profile).unwrap(), 200);
        assert_eq!(
            profile.experience,
            progression::Experience {
                level: 1,
                points: 7
            }
        );
        assert_eq!(
            profile.bird_stats(0).unwrap(),
            stats::BaseStats {
                health: 120.,
                attack: 23.
            }
        );
        assert_eq!(profile.unlocked, 1);
        assert!(battle.claim(&mut profile).is_err());
        assert_eq!(profile.experience.points, 7);
        assert_eq!(profile.gold, 700);
    }

    #[test]
    fn locked_stages_and_duplicate_party_are_rejected() {
        let mut profile = Profile::default();
        assert!(Battle::new(&profile, 1).is_err());
        profile.set_party(0, 1).unwrap();
        assert_eq!(profile.party, [1, 0, 2]);
        assert!(profile.set_party(3, 1).is_err());
    }

    #[test]
    fn legacy_save_migrates_gold_party_owned_and_equipment() {
        let save =
            "EPIC_RUST_1\n321\n250\n2\n100001100000100000100000100000\n5,6,12,18,24\n4,1,0\n";
        let profile = Profile::decode(save).unwrap();
        assert_eq!(
            (
                profile.gold,
                profile.level(),
                profile.experience.points,
                profile.unlocked
            ),
            (321, 3, 37, 2)
        );
        assert_eq!(profile.party, [4, 1, 0]);
        assert_eq!(HATS[profile.equipped[0]].id, "skin_stoneguard");
        assert!(profile.owned[hat_index("skin_knight").unwrap()]);
        assert!(!profile.owned[hat_index("skin_eliteknight").unwrap()]);
        assert_eq!(Profile::decode(&profile.encode()).unwrap(), profile);
    }

    #[test]
    fn catalog_links_unique_original_skins_to_skills_and_starters() {
        let ids: std::collections::HashSet<_> = HATS.iter().map(|h| h.id).collect();
        assert_eq!(ids.len(), 116);
        for hat in HATS {
            assert!(hat.bird < 5);
            assert!(hat.attack < SKILLS.len() && hat.support < SKILLS.len());
        }
        for (bird, index) in STARTER_HATS.iter().enumerate() {
            assert_eq!(HATS[*index].bird, bird);
            assert_eq!(HATS[*index].price, 0);
        }
    }

    #[test]
    fn samurai_uses_recovered_three_hit_coefficient() {
        let mut profile = Profile::default();
        profile
            .buy_and_equip(hat_index("skin_samurai").unwrap())
            .unwrap();
        let mut battle = Battle::new(&profile, 0).unwrap();
        battle.enemies[0].hp = 1000;
        battle.enemies[0].max_hp = 1000;
        let expected = percent(battle.heroes[0].attack, 50.) * 3;
        battle.act(0, Action::Attack(0)).unwrap();
        assert_eq!(battle.enemies[0].hp, 1000 - expected);
    }

    #[test]
    fn knight_protection_uses_recovered_55_percent_reduction() {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        battle.act(0, Action::Support(1)).unwrap();
        assert_eq!(battle.heroes[1].effects.protection(), 55.);
        let before = battle.heroes[1].hp;
        let removed = battle.heroes[1].damage(100);
        assert_eq!(removed, 45);
        assert_eq!(battle.heroes[1].hp, before - 45);
    }

    #[test]
    fn every_imported_encounter_spawns_all_original_waves() {
        let profile = Profile {
            unlocked: ENCOUNTERS.len() - 1,
            ..Profile::default()
        };
        for (stage, encounter) in ENCOUNTERS.iter().enumerate() {
            let mut battle = Battle::new(&profile, stage).unwrap();
            assert_eq!(battle.heroes.len(), encounter.max_birds);
            for (wave_index, original) in encounter.waves.iter().enumerate() {
                assert_eq!(battle.wave as usize, wave_index + 1);
                let expected: Vec<_> = original
                    .spawns
                    .iter()
                    .flat_map(|spawn| std::iter::repeat_n(spawn.pig, spawn.amount as usize))
                    .collect();
                assert_eq!(
                    battle
                        .enemies
                        .iter()
                        .map(|e| e.pig.unwrap())
                        .collect::<Vec<_>>(),
                    expected
                );
                for enemy in &mut battle.enemies {
                    enemy.hp = 0;
                }
                battle.resolve();
            }
            assert_eq!(battle.outcome, Outcome::Won);
        }
    }

    #[test]
    fn progress_uses_original_encounter_id_and_reads_previous_numeric_save() {
        let profile = Profile {
            unlocked: 166,
            ..Profile::default()
        };
        let save = profile.encode();
        assert_eq!(save.lines().nth(4), Some("hotspot_114_castle"));
        assert_eq!(Profile::decode(&save).unwrap(), profile);
        let mut lines: Vec<_> = save.lines().map(str::to_string).collect();
        lines[0] = "EPIC_RUST_2".into();
        lines.truncate(8);
        lines.remove(3);
        lines[3] = "11".into();
        assert_eq!(Profile::decode(&lines.join("\n")).unwrap().unlocked, 11);
    }

    #[test]
    fn v3_xp_migrates_once_and_current_format_retains_native_residual_progress() {
        let base = Profile::default().encode();
        let mut lines: Vec<_> = base.lines().map(str::to_owned).collect();
        lines[0] = "EPIC_RUST_3".into();
        lines.truncate(8);
        lines.remove(3);
        lines[2] = "250".into();
        let migrated = Profile::decode(&lines.join("\n")).unwrap();
        assert_eq!(
            migrated.experience,
            progression::Experience {
                level: 3,
                points: 37
            }
        );
        assert_eq!(Profile::decode(&migrated.encode()).unwrap(), migrated);
        let mut bad: Vec<_> = migrated.encode().lines().map(str::to_owned).collect();
        for invalid in ["0", "101"] {
            bad[3] = invalid.into();
            assert!(Profile::decode(&bad.join("\n")).is_err());
        }
    }

    #[test]
    fn v4_migration_preserves_progress_and_v5_strictly_persists_first_revive_usage() {
        let mut profile = Profile {
            experience: progression::Experience {
                level: 3,
                points: 37,
            },
            unlocked: 100,
            party: [4, 2, 1],
            ..Profile::default()
        };
        profile
            .buy_and_equip(hat_index("skin_eliteknight").unwrap())
            .unwrap();
        let mut old: Vec<_> = profile.encode().lines().map(str::to_owned).collect();
        old.truncate(8);
        old[0] = "EPIC_RUST_4".into();
        assert_eq!(Profile::decode(&old.join("\n")).unwrap(), profile);
        profile.first_revive_used = true;
        assert_eq!(Profile::decode(&profile.encode()).unwrap(), profile);
        let mut current: Vec<_> = profile.encode().lines().map(str::to_owned).collect();
        for invalid in ["2", "true", "-1", ""] {
            current[8] = invalid.into();
            assert!(Profile::decode(&current.join("\n")).is_err());
        }
        current.pop();
        assert!(Profile::decode(&current.join("\n")).is_err());
    }

    fn rage_test_battle() -> Battle {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        battle.rage = 100;
        battle
    }

    #[test]
    fn heroic_strike_hits_most_health_enemy_for_recovered_500_percent() {
        let mut battle = rage_test_battle();
        let high = battle
            .enemies
            .iter()
            .enumerate()
            .max_by_key(|(_, e)| e.hp)
            .unwrap()
            .0;
        let expected = (battle.enemies[high].hp - percent(battle.heroes[0].attack, 500.)).max(0);
        let other: Vec<_> = battle
            .enemies
            .iter()
            .enumerate()
            .filter(|(i, _)| *i != high)
            .map(|(i, e)| (i, e.hp))
            .collect();
        battle.act(0, Action::Pepper).unwrap();
        assert_eq!(battle.enemies[high].hp, expected);
        for (i, hp) in other {
            assert_eq!(battle.enemies[i].hp, hp);
        }
        assert_eq!(battle.rage, 0);
    }

    #[test]
    fn matilda_rage_heals_max_health_percentage_and_cleanses() {
        let mut battle = rage_test_battle();
        for (index, ally) in battle.heroes.iter_mut().enumerate() {
            ally.hp = 10;
            ally.effects
                .apply("test-poison", Source::pig(0), 3, EffectKind::Poison(10));
            if index != 2 {
                ally.effects
                    .apply("test-stun", Source::pig(0), 1, EffectKind::Stun);
            }
        }
        let expected: Vec<_> = battle
            .heroes
            .iter()
            .map(|h| (10 + percent(h.max_hp, 35.)).min(h.max_hp))
            .collect();
        battle.act(2, Action::Pepper).unwrap();
        for (ally, hp) in battle.heroes.iter().zip(expected) {
            assert_eq!(ally.hp, hp);
            assert!(!ally.effects.is_poisoned());
            assert!(!ally.effects.is_stunned());
        }
    }

    #[test]
    fn matilda_percentage_healing_reaches_the_native_rounding_boundary_as_float() {
        let mut battle = rage_test_battle();
        for ally in &mut battle.heroes {
            ally.hp = 1;
            ally.max_hp = 30;
        }
        battle.act(2, Action::Pepper).unwrap();
        assert!(battle.heroes.iter().all(|ally| ally.hp == 11)); // 35% of30 =10.5 ->10.
    }

    #[test]
    fn speed_of_light_launches_five_primary_attacks_with_reproducible_seed() {
        let mut battle = rage_test_battle();
        for hero in &mut battle.heroes {
            hero.hat = STARTER_HATS[0];
            hero.attack = 100;
        }
        for enemy in &mut battle.enemies {
            enemy.hp = 10000;
            enemy.max_hp = 10000;
        }
        let mut repeated = battle.clone();
        battle.act(1, Action::Pepper).unwrap();
        repeated.act(1, Action::Pepper).unwrap();
        assert_eq!(
            battle.enemies.iter().map(|e| e.hp).collect::<Vec<_>>(),
            repeated.enemies.iter().map(|e| e.hp).collect::<Vec<_>>()
        );
        assert_eq!(
            battle.enemies.iter().map(|e| 10000 - e.hp).sum::<i32>(),
            575
        );
        assert!(!battle.heroes[0].acted && !battle.heroes[2].acted);
    }

    #[test]
    fn speed_of_light_stops_when_retaliation_defeats_every_ally() {
        let mut battle = rage_test_battle();
        for hero in &mut battle.heroes {
            hero.hp = 1;
        }
        for enemy in &mut battle.enemies {
            enemy.hp = 10000;
            enemy.max_hp = 10000;
            enemy.effects.apply(
                "test-thorns",
                Source::pig(0),
                -1,
                EffectKind::Retaliation(crate::retaliation::Retaliation::Fixed { damage: 10000 }),
            );
        }
        battle.act(1, Action::Pepper).unwrap();
        assert!(battle.heroes.iter().all(|hero| !hero.alive()));
        assert_eq!(battle.outcome, Outcome::Lost);
    }

    #[test]
    fn bomb_rage_deals_150_percent_to_every_living_enemy() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile.set_party(0, 3).unwrap();
        let mut battle = Battle::new(&profile, 3).unwrap();
        battle.rage = 100;
        let expected: Vec<_> = battle
            .enemies
            .iter()
            .map(|e| (e.hp - percent(battle.heroes[0].attack, 150.)).max(0))
            .collect();
        battle.act(0, Action::Pepper).unwrap();
        assert_eq!(
            battle.enemies.iter().map(|e| e.hp).collect::<Vec<_>>(),
            expected
        );
    }

    #[test]
    fn blues_rage_deals_200_percent_and_applies_random_stun_and_purge() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile.set_party(0, 4).unwrap();
        let mut battle = Battle::new(&profile, 3).unwrap();
        battle.rage = 100;
        for enemy in &mut battle.enemies {
            enemy.hp = 1000;
            enemy.max_hp = 1000;
            enemy
                .effects
                .apply("test-shield", Source::pig(0), 3, EffectKind::Protection(0.));
        }
        let expected = percent(battle.heroes[0].attack, 200.);
        battle.act(0, Action::Pepper).unwrap();
        assert_eq!(
            battle.enemies.iter().map(|e| 1000 - e.hp).sum::<i32>(),
            expected
        );
        assert_eq!(
            battle
                .enemies
                .iter()
                .filter(|e| e.effects.is_stunned())
                .count(),
            1
        );
        assert_eq!(
            battle
                .enemies
                .iter()
                .filter(|e| !e.effects.is_protected())
                .count(),
            1
        );
    }

    #[test]
    fn mage_thorns_capture_caster_attack_and_survive_first_enemy_phase() {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = Battle::new(&profile, 3).unwrap();
        let thorn_damage = percent(battle.heroes[1].attack, 75.);
        let enemy_before = battle.enemies[0].hp;
        battle.act(1, Action::Support(1)).unwrap();
        battle.act(0, Action::Attack(1)).unwrap();
        battle.act(2, Action::Attack(1)).unwrap();
        assert_eq!(battle.enemies[0].hp, (enemy_before - thorn_damage).max(0));
        assert_eq!(battle.heroes[1].effects.retaliation_damage(5), thorn_damage);
        assert!(battle.heroes[1]
            .effects
            .entries()
            .iter()
            .any(|e| matches!(e.kind, EffectKind::Retaliation(_)) && e.turns == 2));
    }

    fn durable_battle(profile: &Profile) -> Battle {
        let mut battle = Battle::new(profile, 3).unwrap();
        for hero in &mut battle.heroes {
            hero.hp = 10000;
            hero.max_hp = 10000;
        }
        for enemy in &mut battle.enemies {
            enemy.hp = 10000;
            enemy.max_hp = 10000;
            enemy.attack = 0;
        }
        battle
    }

    #[test]
    fn knight_shield_reduces_two_enemy_phases_then_expires() {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = durable_battle(&profile);
        battle.enemies.truncate(1);
        battle.enemies[0].attack = 100;
        battle.enemies[0]
            .effects
            .apply("forced-target", Source::bird(0), 99, EffectKind::Taunt(1));
        battle.act(0, Action::Support(1)).unwrap();
        battle.enemy_turn();
        assert_eq!(battle.heroes[1].hp, 9955);
        battle.enemy_turn();
        assert_eq!(battle.heroes[1].hp, 9910);
        assert!(!battle.heroes[1].effects.is_protected());
        battle.enemy_turn();
        assert_eq!(battle.heroes[1].hp, 9810);
    }

    #[test]
    fn pirate_party_buff_changes_real_attack_values_for_three_turns() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile.set_party(0, 3).unwrap();
        let mut battle = durable_battle(&profile);
        battle.act(0, Action::Support(0)).unwrap();
        for hero in &battle.heroes {
            assert_eq!(hero.attack_value(), percent(hero.attack, 125.));
        }
        battle.enemy_turn();
        battle.enemy_turn();
        assert_eq!(battle.heroes[1].effects.attack_percent(), 125.);
        battle.enemy_turn();
        assert_eq!(battle.heroes[1].attack_value(), battle.heroes[1].attack);
    }

    #[test]
    fn captains_boost_sacrifices_target_health_and_increases_target_attack() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile.set_party(0, 3).unwrap();
        profile
            .buy_and_equip(hat_index("skin_captn").unwrap())
            .unwrap();
        let mut battle = durable_battle(&profile);
        battle.act(0, Action::Support(1)).unwrap();
        assert_eq!(battle.heroes[1].hp, 9000);
        assert_eq!(
            battle.heroes[1].attack_value(),
            percent(battle.heroes[1].attack, 160.)
        );
        assert_eq!(battle.heroes[0].hp, 10000);
    }

    #[test]
    fn druid_heals_from_invoker_health_and_does_not_cleanse() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile
            .buy_and_equip(hat_index("skin_druid").unwrap())
            .unwrap();
        let mut battle = Battle::new(&profile, 3).unwrap();
        let caster_health = battle.heroes[2].max_hp;
        for ally in &mut battle.heroes {
            ally.hp = 10;
            ally.effects
                .apply("poison", Source::pig(0), 3, EffectKind::Poison(5));
        }
        battle.act(2, Action::Support(0)).unwrap();
        assert_eq!(battle.heroes[0].hp, 10 + percent(caster_health, 22.));
        assert_eq!(battle.heroes[1].hp, 10 + percent(caster_health, 10.));
        assert!(battle.heroes.iter().all(|hero| hero.effects.is_poisoned()));
    }

    #[test]
    fn rainbird_heals_all_but_only_cleanses_selected_target() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile
            .buy_and_equip(hat_index("skin_rainbird").unwrap())
            .unwrap();
        let mut battle = Battle::new(&profile, 3).unwrap();
        let amount = percent(battle.heroes[1].max_hp, 20.);
        for ally in &mut battle.heroes {
            ally.hp = 10;
            ally.effects
                .apply("poison", Source::pig(0), 3, EffectKind::Poison(5));
        }
        battle.act(1, Action::Support(0)).unwrap();
        assert!(battle.heroes.iter().all(|hero| hero.hp == 10 + amount));
        assert!(!battle.heroes[0].effects.is_poisoned());
        assert!(battle.heroes[1].effects.is_poisoned() && battle.heroes[2].effects.is_poisoned());
    }

    #[test]
    fn bard_regeneration_ticks_three_times_then_stops() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile
            .buy_and_equip(hat_index("skin_bard").unwrap())
            .unwrap();
        let mut battle = Battle::new(&profile, 3).unwrap();
        for enemy in &mut battle.enemies {
            enemy.attack = 0;
        }
        for hero in &mut battle.heroes {
            hero.hp = 10;
        }
        let immediate = percent(battle.heroes[2].max_hp, 15.);
        let periodic = percent(battle.heroes[2].max_hp, 5.);
        battle.act(2, Action::Support(0)).unwrap();
        assert_eq!(battle.heroes[0].hp, 10 + immediate);
        for turn in 1..=3 {
            battle.enemy_turn();
            assert_eq!(battle.heroes[0].hp, 10 + immediate + turn * periodic);
        }
        battle.enemy_turn();
        assert_eq!(battle.heroes[0].hp, 10 + immediate + 3 * periodic);
    }

    #[test]
    fn guardian_weakness_reduces_enemy_attack_for_configured_duration() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile
            .buy_and_equip(hat_index("skin_guardian").unwrap())
            .unwrap();
        let mut battle = durable_battle(&profile);
        battle.enemies[0].attack = 100;
        battle.act(0, Action::Attack(0)).unwrap();
        assert_eq!(battle.enemies[0].attack_value(), 75);
        battle.enemy_turn();
        assert_eq!(battle.enemies[0].attack_value(), 75);
        battle.enemy_turn();
        assert_eq!(battle.enemies[0].attack_value(), 100);
    }

    #[test]
    fn lightning_bird_orders_an_ally_attack_without_consuming_ally_turn() {
        let mut profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        profile
            .buy_and_equip(hat_index("skin_lightningbird").unwrap())
            .unwrap();
        let mut battle = durable_battle(&profile);
        let expected = percent(battle.heroes[0].attack, 115.);
        battle.act(1, Action::Support(0)).unwrap();
        assert_eq!(
            battle.enemies.iter().map(|e| 10000 - e.hp).sum::<i32>(),
            expected
        );
        assert!(battle.heroes[0].can_act());
        assert!(battle.heroes[1].acted);
    }

    #[test]
    fn stunned_party_advances_until_someone_can_act() {
        let profile = Profile {
            unlocked: 3,
            ..Profile::default()
        };
        let mut battle = durable_battle(&profile);
        for hero in &mut battle.heroes {
            hero.effects
                .apply("stun", Source::pig(0), 2, EffectKind::Stun);
        }
        battle.enemy_turn();
        assert_eq!(battle.round, 3);
        assert!(battle.heroes.iter().all(Fighter::can_act));
    }
}
