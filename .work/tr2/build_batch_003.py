#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json, re, os, sys

BASE = '/Users/zlns/personal-www/pck-translate/.work/tr2'
I = '\u3000'  # ideographic space

p = []  # (id, english)

p.append((1, "^c3dbffFull Moon Slash<CRLF><CRLF>^ffffffWeapon: Saber" + I*8 + "20 Battle Qi" + I + "5 Stamina<CRLF>Martial Art: Cast Time 1.5s" + I*5 + "Cool-down 15s<CRLF><CRLF>Spin the great saber and bring it down on the enemy with force;<CRLF>the trail of the blade gleams like a full moon.<CRLF>Knocks the enemy down, leaving them prone for 3s,<CRLF>unable to act, with Defense reduced.<CRLF>Deals 100%% base damage."))

p.append((2, "^c3dbffFull Moon Slash<CRLF><CRLF>^ffffffWeapon: Saber" + I*8 + "30 Battle Qi" + I + "10 Stamina<CRLF>Martial Art: Cast Time 1.5s" + I*5 + "Cool-down 15s<CRLF><CRLF>Spin the great saber and bring it down on the enemy with force;<CRLF>the trail of the blade gleams like a full moon.<CRLF>Knocks the enemy down, leaving them prone for 3s,<CRLF>unable to act, with Defense reduced.<CRLF>Deals 100%% base damage.<CRLF>Channelling before using this Move increases the knockdown time."))

p.append((3, "^c3dbffFull Moon Slash · Strength<CRLF>^ffffffRequires at least 15 points invested in Strength Mastery.<CRLF><CRLF>^ffffffIncreases the damage dealt by Full Moon Slash."))

p.append((4, "^c3dbffFull Moon Slash · Technique<CRLF>^ffffffRequires at least 15 points invested in Technique Mastery.<CRLF><CRLF>^ffffffReduces the cast time of Full Moon Slash;<CRLF>while in the Slash Will state, its cast time<CRLF>is further reduced, at the cost of one stack of Slash Will."))

p.append((5, "^c3dbffEarth Spirit^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: I<CRLF>Requirement: Ranged<CRLF>Basic Move<CRLF><CRLF>Strikes the enemy with swift, forceful attacks.<CRLF>Deals 119%% base damage."))

p.append((6, "^c3dbffEarth Spirit · Assault<CRLF><CRLF>Category: Focus<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffIncreases the damage dealt by Earth Spirit."))

p.append((7, "^c3dbffEarth Spirit · Heartless<CRLF><CRLF>Category: Focus<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffEarth Spirit has a chance to ignore 500 of the enemy's Defense,<CRLF>dealing greatly increased damage to it."))

p.append((8, "^c3dbffEarthstone Shatter^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: II<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Attacks the 3 enemies in front<CRLF>Deals 94%% base damage."))

p.append((9, "^c3dbffHoly Spirit Dance<CRLF><CRLF>^ffffffWeapon: Dance<CRLF>^ffffffCost: 10 Stamina 20 Battle Qi<CRLF>^ffffffCool-down: 30s<CRLF>^ffffffRiding Art: Instant<CRLF><CRLF>^ffffffRestores a small amount of endurance to allies within 10m.<CRLF>Also dispels the Ride Ban from those allies.<CRLF><CRLF>^99ccffCan only be used while in Mounted Combat."))

p.append((10, "^c3dbffEarth-Shaking Roar^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: II<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Attacks the 3 enemies in front<CRLF>Deals 85%% base damage."))

p.append((11, "^c3dbffEarth Wail Strike<CRLF>^ffffffRequires at least 20 points invested in Break Mastery.<CRLF><CRLF>^ffffffWeapon: Hammer" + I*9 + "20 Battle Qi<CRLF>Martial Art: Instant" + I*8 + "Cool-down 20s<CRLF><CRLF>Shout out loud and sweep the crossed twin hammers forward as a shockwave;<CRLF>the violent impact shakes the ground along the line ahead.<CRLF>Hits up to 3 enemy targets, dealing damage that ignores Resistance,<CRLF>and leaves you briefly Stunned after the Move ends.<CRLF><CRLF>^c3dbffNote: Can only be cast after gaining Combat Art points.^ffffff<CRLF>The Move releases all accumulated Assault or Wild Dance points:<CRLF>each Assault point adds an extra 14%% base damage to the Move;<CRLF>each Wild Dance point Stuns the enemy for 0.5s."))

p.append((12, "^c3dbffEarth Wail Strike · Bulwark<CRLF>^ffffffRequires at least 5 points invested in Earth Wail Strike Mastery.<CRLF><CRLF>^ffffffPrevents you from being Stunned after casting the Move “Earth Wail Strike”."))

p.append((13, "^c3dbffBulwark<CRLF><CRLF>^ffffffQuick Attack has a chance to grant you<CRLF>the Bulwark Shield state: direct damage taken is reduced by 20%%<CRLF><CRLF>^99ccffRestraint skill mastery; only one can be learned."))

p.append((14, "^c3dbffBulwark<CRLF><CRLF>^ffffffWeapon: Staff" + I*11 + "20 Stamina<CRLF>Strategy: Instant" + I*11 + "Duration: 10min<CRLF><CRLF>Consumes Stamina to raise your Defense for a set time.<CRLF><CRLF>^c3dbffNote: Recommended attribute-enhancement skill for yourself."))

p.append((15, "^c3dbffBulwark<CRLF>^ffffffRequires at least 25 points invested in Technique Mastery.<CRLF><CRLF>^ffffffWeapon: Axe" + I*11 + "20 Stamina<CRLF>Mastery: Instant" + I*8 + "Cool-down 20s<CRLF><CRLF>Activate Bulwark and receive the protection of the Axe Spirit,<CRLF>which can absorb a large amount of damage. While Bulwark is active,<CRLF>being attacked by an enemy grants your next attack a Critical,<CRLF>and the state lasts 3s."))

p.append((16, "^c3dbffBulwark ? Aid<CRLF><CRLF>^ffffffWeapon: Staff" + I*11 + "10 Stamina<CRLF>Strategy: Instant" + I*11 + "Duration: 10min<CRLF><CRLF>Consumes Stamina to raise your Defense for a set time.<CRLF>The Defense boost is identical to that of the Strategy “Bulwark” of the same level."))

p.append((17, "^c3dbffBulwark · Technique<CRLF>^ffffffRequires at least 15 points invested in Technique Mastery.<CRLF><CRLF>^ffffffEnhances the Defense bonus granted by Bulwark."))

p.append((18, "^c3dbffSteadfast Hold<CRLF><CRLF>^ffffffWeapon: Any<CRLF>^ffffffCost: 30 Stamina<CRLF>^ffffffRiding Art: Instant" + I*5 + " Cool-down 60s<CRLF><CRLF>^ffffffGive a mighty shout to raise your own Defense.<CRLF>^99ccffSteadfast Hold and Ferocious Assault share a cool-down and their effects cannot stack.<CRLF>^99ccffCan only be used while in Mounted Combat."))

p.append((19, "^c3dbffSteadfast Resolve<CRLF>^ffffffRequires at least 25 points invested in Strength Mastery.<CRLF><CRLF>While Blood Valor is active,<CRLF>if you take damage, you have a chance to immediately remove all Seal-type debuffs."))

p.append((20, "^c3dbffSolid Armor<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Lv.80<CRLF><CRLF>A blessing from your ancestral homeland,<CRLF>reducing the final value of the direct damage you take.<CRLF><CRLF>^99ccffRequires the corresponding skill book to learn."))

p.append((21, "^c3dbffSteadfast Formation<CRLF><CRLF>^ffffffSworn Military Art: Instant" + I*6 + "Cool-down 30min<CRLF><CRLF>Command your soldiers and form ranks to meet the enemy,<CRLF>raising the Defense of the sworn brothers.<CRLF>Lasts 10min.<CRLF> "))

p.append((22, "^c3dbffFalling Jade<CRLF><CRLF>^ffffffExtreme Cold Arrow has a chance to Freeze the enemy for 3s<CRLF><CRLF>^99ccffFull-Force Attack mastery; only one can be learned."))

p.append((23, "^c3dbffBasic Riding<CRLF><CRLF>^ffffffRiding Art: Permanent<CRLF><CRLF>^ffffffAllows you to ride all kinds of horses and mounts."))

p.append((24, "^c3dbffRampart<CRLF><CRLF>^ffffffWeapon: Staff" + I*9 + "30 Stamina<CRLF>Move: Instant" + I*8 + "     Cool-down 30s<CRLF><CRLF>Create a spiritual Rampart to protect yourself or one ally,<CRLF>letting it absorb a certain amount of damage,<CRLF>and shielding that ally's preparatory skills from interruption,<CRLF>lasting up to 1min or until the damage absorption is used up."))

p.append((25, "^c3dbffRampart · Curse<CRLF>^ffffffRequires at least 20 points invested in Curse Mastery.<CRLF><CRLF>^ffffffImproves the damage absorption of Rampart.<CRLF>When used below 35%% HP, Rampart instantly restores<CRLF>a certain amount of HP, but you lose a certain amount of HP every 2s for the next 6s."))

p.append((26, "^c3dbffRampart · Curse<CRLF>^ffffffRequires at least 25 points invested in Curse Mastery.<CRLF><CRLF>^ffffffImproves the damage absorption of Rampart."))

p.append((27, "^c3dbffRising Morale<CRLF>^ffffffRequires at least 5 points invested in Drum-Resonance Dance · Support Mastery.<CRLF><CRLF>Allows Drum-Resonance Dance to also affect allies within 20m."))

p.append((28, "^c3dbffPower of Vengeance<CRLF>^ffffffRequires at least 25 points invested in Strength Mastery.<CRLF><CRLF>^ffffffIncreases the duration of each point of Wrath"))

p.append((29, "^c3dbffNight Battle<CRLF><CRLF>^ffffffWeapon: Mace" + I*9 + "25 Stamina 15 Battle Qi<CRLF>Move: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Unleash your inner Rage and fight all sides at night like a mighty general<CRLF>Increases Pierce points and grants a certain amount of Battle Qi each second."))

p.append((30, "^c3dbffNight Battle · Immunity<CRLF>^ffffffRequires at least 3 points invested in Night Battle · Strength.<CRLF><CRLF>^ffffffGrants Night Battle immunity to Slow and Stun"))

p.append((31, "^c3dbffNight Battle · Strength<CRLF>^ffffffRequires at least 20 points invested in Strength Mastery.<CRLF><CRLF>^ffffffExtends the duration of Night Battle"))

p.append((32, "^c3dbffMoonlit Frost^ffffff<CRLF><CRLF>Category: Wisdom<CRLF>Quality: III<CRLF>Requirement: Ranged<CRLF>Advanced Move<CRLF><CRLF>Gather your full strength and strike with all your might.<CRLF>Deals 278%% base damage."))

p.append((33, "^c3dbffMoonlit Frost · Assault<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffIncreases the damage dealt by Moonlit Frost."))

p.append((34, "^c3dbffMoonlit Frost · Soulrend<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffMoonlit Frost has a chance to sacrifice 1500 of your own HP<CRLF>and reduce the target's Battle Qi by a certain ratio,<CRLF>scaled by your Strategy value."))

p.append((35, "^c3dbffNight Raid<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Hero Lv.50<CRLF>^ffffffOrigin Restriction: Qingzhou<CRLF><CRLF>Eight hundred dead soldiers raid the Wu camp and rout the Wu army.<CRLF>Move Speed is further increased while Sprinting,<CRLF>and Control Resistance and Stun Resistance are raised.<CRLF><CRLF>^99ccffDerived from the Eight Hundred Volunteers.<CRLF>^99ccffRequires the corresponding skill book to learn."))

p.append((36, "^c3dbffDismember<CRLF><CRLF>^ffffffWeapon: Hook" + I*9 + "20 Battle Qi" + I + "10 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 20s<CRLF><CRLF>Spin the twin hooks in your hands and land one brutal blow on the target<CRLF>with an interrupt effect<CRLF>Deals 50%% base damage.<CRLF>Each Wrath point deals an extra 20%% base damage.<CRLF>Battle Tattoo: Stuns the target for 4s<CRLF>Bedrock Tattoo: the target is Cursed: reflects damage when hit<CRLF>Gale Tattoo: you gain “Wind Shield”: each time you are hit, Move Speed increases by 0.5m/s<CRLF>Blood Boil Tattoo: +20%% own Crit Rate and +10%% Crit Damage"))

p.append((37, "^c3dbffDismember · Wrath<CRLF>^ffffffRequires at least 15 points invested in Strength Mastery.<CRLF><CRLF>^ffffffIncreases the damage Dismember deals per point of Wrath"))

p.append((38, "^c3dbffDismember · Strength<CRLF>^ffffffRequires at least 20 points invested in Strength Mastery.<CRLF><CRLF>^ffffffIncreases the base damage of Dismember and<CRLF>the damage it deals per point of Wrath"))

p.append((39, "^c3dbffDismember · Gale<CRLF>^ffffffRequires at least 15 points invested in Technique Mastery.<CRLF><CRLF>^ffffffWith the “Gale Tattoo” active, Dismember's base attack multiplier is increased,<CRLF>scaled by your own Move Speed"))

p.append((40, "^c3dbffWild Earth Roar^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: III<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Gather your full strength and strike with all your might.<CRLF>Deals 263%% base damage."))

p.append((41, "^c3dbffWild Earth Roar · Assault<CRLF><CRLF>Category: Focus<CRLF>Quality: IV<CRLF>Requirement: Melee<CRLF><CRLF>^ffffffIncreases the damage dealt by Wild Earth Roar."))

p.append((42, "^c3dbffMagnanimity<CRLF><CRLF>^ffffffWeapon: Saber" + I*9 + "5 Stamina per 2s<CRLF>Strategy: Instant" + I*9 + "<CRLF><CRLF>Pay closer attention to attacks in combat and strengthen your allies' Attack Power.<CRLF>Allies within 20m gain +5%% Attack Intensity,<CRLF>which cannot stack with the Assault effect.<CRLF><CRLF>^c3dbffNote: Recommended party attribute-enhancement skill."))

p.append((43, "^c3dbffElegant Melodies<CRLF><CRLF>^ffffffSpecialty: Instant" + I*5 + "Cool-down 10min<CRLF><CRLF>^ffffffListen to the music of the realm and recover 5 Stamina per second for 10s."))

p.append((44, "^c3dbffDance of the Gale<CRLF><CRLF>^ffffffWeapon: Dance" + I*8 + "10 Stamina<CRLF>Move: Instant" + I*8 + "Cool-down 6s<CRLF><CRLF>The twin dancers whirl through the enemy like a cyclone, landing two strikes in succession.<CRLF>Each strike generates 15 Battle Qi and has a chance to inflict Tremor on the enemy.<CRLF>Each strike deals 55%% base damage."))

p.append((45, "^c3dbffDance of the Gale · Strength<CRLF>^ffffffRequires at least 15 points invested in “War” Mastery.<CRLF><CRLF>^ffffffIncreases the damage dealt by the Move Dance of the Gale."))

p.append((46, "^c3dbffDance of the Gale · Technique<CRLF>^ffffffRequires at least 15 points invested in “Support” Mastery.<CRLF><CRLF>^ffffffIncreases the chance for Dance of the Gale to inflict Tremor. At 5 stacks, there is a 20%% chance to inflict<CRLF>Severe Injury, and the Tremor effect lasts up to 30s."))

p.append((47, "^c3dbffTruce of the Realm<CRLF><CRLF>^ffffffSworn Military Art: Instant" + I*6 + "Cool-down 30min<CRLF><CRLF>Subdue the Nine Provinces and unite the realm,<CRLF>greatly enhancing all abilities — cease the arms!<CRLF>Lasts 10min.<CRLF><CRLF>The Military Art's intermediate effect triggers when the following conditions are met:<CRLF>Valiant ^c3dbffLv.15^ffffff / Steadfast Formation ^c3dbffLv.15^ffffff / Benevolent Might ^c3dbffLv.15^ffffff / Elite Troops ^c3dbffLv.15^ffffff<CRLF><CRLF>The Military Art's advanced effect triggers when the following conditions are met:<CRLF>Valiant ^c3dbffLv.20^ffffff / Steadfast Formation ^c3dbffLv.20^ffffff / Benevolent Might ^c3dbffLv.20^ffffff / Elite Troops ^c3dbffLv.20^ffffff<CRLF> "))

p.append((48, "^c3dbffPeerless<CRLF>^ffffffRequires at least 30 points invested in Dance Mastery.<CRLF><CRLF>^ffffffReduces the cool-down of the following Moves:<CRLF>Thunder-Crack Hammer, Gale Hammer, Earth Wail Strike, Firmament Wild Dance, Mountain-Shaking Earth-Trembling"))

p.append((49, "^c3dbffPeerless^ffffff" + " "*40 + "^ffcc00Lv. %d^ffffff<CRLF><CRLF>Strategy: Instant" + " "*22 + "Cool-down: 120s<CRLF><CRLF>Soul Art Type: Protection<CRLF>Summon the hero soul merged within you and cast the Peerless state on yourself.<CRLF>The effect lasts at least 15s.<CRLF>(halved by the bonus from Soul Refining duration)<CRLF><CRLF>^ffcc00Soul Art Effect:^ffffff<CRLF>Pierce and Break increase by %.1f while Peerless is active.<CRLF>When cast in the Awakened state, the Pierce and Break bonus is set to %.1f."))

p.append((50, "^c3dbffHeavenly Righteousness<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Hero Lv.36<CRLF>^ffffffOrigin Restriction: Qingzhou<CRLF><CRLF>Faithful and righteous, with the spirit of an ancient sage,<CRLF>being attacked grants a 5%% chance to gain the Heavenly Righteousness state,<CRLF>which dispels Slow and grants immunity to it.<CRLF><CRLF>^99ccffDerived from Taishi Ci.<CRLF>^99ccffRequires the corresponding skill book to learn."))

p.append((51, "^c3dbffDivine Protection<CRLF><CRLF>^ffffffWeapon: Any" + I*6 + " 10 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 180s<CRLF><CRLF>Divine Protection only enters cool-down after 5s of use or when used consecutively.<CRLF>On first use it grants the player the Divine Protection state,<CRLF>reducing all damage taken by 20%% for 8s;<CRLF>when used again, it restores HP to the player and deals damage equal to 1-2x Max Attack Power that ignores Defense<CRLF>to enemies within 7m,<CRLF>Stunning them for 2-3s and hitting up to 5 enemies."))

p.append((52, "^c3dbffPrimordial Strike^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 50s<CRLF><CRLF>The chariot's heavy crossbow fires a bolt at full force, hitting targets<CRLF>up to 25m ahead within a 5m area for 275%% base damage."))

p.append((53, "^c3dbffPrimordial Strike^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 50s<CRLF><CRLF>The chariot's heavy crossbow fires a bolt at full force, hitting targets<CRLF>up to 25m ahead within a 5m area for 275%% base damage.<CRLF><CRLF>^99ccffChariots only deal 10%% damage to characters<CRLF>^99ccffChariots only deal 50%% damage to characters<CRLF>Chariots deal 200%% damage to arrow towers"))

p.append((54, "^c3dbffPrimordial Strike^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 50s<CRLF><CRLF>The chariot's heavy crossbow fires a bolt at full force, hitting targets<CRLF>up to 25m ahead within a 5m area for 275%% base damage.<CRLF><CRLF>^99ccffChariots only deal 10%% damage to characters<CRLF>Hou Yi deals 20%% extra damage to buildings"))

p.append((55, "^c3dbffImperial Edict^ffffff" + " "*40 + "^ffcc00Lv. %d^ffffff<CRLF><CRLF>Strategy: Instant" + " "*17 + "Cool-down: 120s<CRLF><CRLF>Soul Art Type: Protection<CRLF>Summon the hero soul merged within you and cast the<CRLF>Destined Bond state on yourself and nearby allies. The effect lasts at least 15s.<CRLF>(halved by the bonus from Soul Refining duration)<CRLF><CRLF>^ffcc00Soul Art Effect:^ffffff<CRLF>+%d Attack Power and +%d Defense.<CRLF>When cast in the Awakened state, the Attack Power and Defense bonus you gain is doubled,<CRLF>and Attack Intensity is additionally increased by %d%%."))

p.append((56, "^c3dbffHeaven-Crumbling Slash^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: I<CRLF>Requirement: Melee<CRLF>Basic Move<CRLF><CRLF>Quick attack on 3 enemies in a line ahead,<CRLF>dealing 47%% base damage."))

p.append((57, "^c3dbffHeavenly Wildfire^ffffff<CRLF><CRLF>Category: Passion<CRLF>Quality: II<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Attacks the 3 enemies in front<CRLF>Deals 103%% base damage."))

p.append((58, "^c3dbffFalling Fire^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 30s<CRLF><CRLF>The bolt cannon fires a heavy shot, hitting targets<CRLF>up to 70m ahead within a 40m area for 350%% base damage.<CRLF><CRLF>^99ccffChariots only deal 10%% damage to characters"))

p.append((59, "^c3dbffHeavenly Thunder Curse<CRLF>^ffffffRequires at least 3 points invested in “Swift Lightning · Curse”.<CRLF><CRLF>^ffffffWeapon: Staff<CRLF>Strategy: Instant" + I*8 + "Cool-down 120s<CRLF><CRLF>^ffffffCast the curse of heavenly thunder.<CRLF>^99ccffWhile the Heavenly Thunder Curse is active, using Swift Lightning shortens its preparation<CRLF>time by 1s and always inflicts Shock and Paralyze,<CRLF>and it can inflict a 3s Guard Break on enemies who are Blocking."))

p.append((60, "^c3dbffHeavenly Fragrance · Shadow<CRLF>^ffffffRequires at least 20 points invested in Shadow Mastery.<CRLF><CRLF>^ffffffCrit Damage is increased while Heavenly Fragrance is active."))

p.append((61, "^c3dbffLife-Seizing · Warrior<CRLF><CRLF>^ffffffWeapon: Axe" + I*8 + "20 Battle Qi 10 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Rage overflowing, a blow that shocks the world.<CRLF>Deals heavy damage to up to 5 enemies within 5m ahead.<CRLF>After learning the matching “Fury” or “Break” skill, the Move<CRLF>deals double damage.<CRLF><CRLF>^c3dbffNote: Used after Life-Seizing · Fury, the damage scales with your<CRLF>current Battle Qi.<CRLF>Used after Life-Seizing · Break, it lowers the target's Stun Resistance for 10s,<CRLF>and targets with Battle Qi below 50%%<CRLF>are Silenced for 2s."))

p.append((62, "^c3dbffLife-Seizing · Fury<CRLF><CRLF>^ffffffWeapon: Axe" + I*8 + "15 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>A heart sworn to death, fury surging.<CRLF>Raises your Max Battle Qi and restores Battle Qi continuously<CRLF>for up to 10s.<CRLF><CRLF>^c3dbffNote: Used after Life-Seizing · Break, the Battle Qi<CRLF>restoration effect is increased;<CRLF>used after Life-Seizing · Warrior, it continuously restores<CRLF>a certain amount of Battle Qi to allies."))

p.append((63, "^c3dbffLife-Seizing · Break<CRLF><CRLF>^ffffffWeapon: Axe" + I*8 + "15 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Weaken up to 5 enemies within 8m,<CRLF>draining their Battle Qi and Defense.<CRLF>The amount of Defense reduced equals your current Battle Qi.<CRLF><CRLF>^c3dbffNote: Used after Life-Seizing · Fury, its<CRLF>effect is enhanced;<CRLF>used after Life-Seizing · Warrior, it lowers the target's<CRLF>Max Battle Qi for 10s."))

p.append((64, "^c3dbffLife-Seizing Halberd^ffffff<CRLF><CRLF>Weapon: Halberd" + I*8 + "30 Battle Qi, 5 Stamina<CRLF>Martial Art: Instant" + I*7 + "Cool-down 8s<CRLF><CRLF>The halberd's most powerful single-target Move;<CRLF>countless renowned generals have fallen to it.<CRLF>Deals 160%% base damage.<CRLF>Affected by the Link effect. May inflict a Stab.<CRLF><CRLF>^c3dbffNote: Recommended farming skill, used to spend Battle Qi."))

p.append((65, "^c3dbffLife-Seizing Halberd · Strength<CRLF>^ffffffRequires at least 10 points invested in Strength Mastery.<CRLF><CRLF>Increases the base damage of the Move Life-Seizing Halberd."))

p.append((66, "^c3dbffStrange Aid<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Hero Lv.36<CRLF>^ffffffOrigin Restriction: Yuzhou<CRLF><CRLF>Wei Kingdom's finest strategist, whose plans never fail.<CRLF>Being attacked grants a 5%% chance to gain the Strange Aid state,<CRLF>absorbing the damage you take, for 3s.<CRLF><CRLF>^99ccffDerived from Guo Jia.<CRLF>^99ccffRequires the corresponding skill book to learn."))

p.append((67, "^c3dbffSurprise Attack<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Hero Lv.36<CRLF>^ffffffOrigin Restriction: Liangzhou<CRLF><CRLF>Ambushed Cao Cao at Wancheng, killing his sons and nephews in battle and costing him the great general Dian Wei.<CRLF>Being attacked grants a 5%% chance to gain the Surprise Attack state,<CRLF>boosting Attack Intensity, triggering only once.<CRLF><CRLF>^99ccffDerived from Zhang Xiu.<CRLF>^99ccffRequires the corresponding skill book to learn."))

p.append((68, "^c3dbffQimen Dunjia^ffffff" + " "*40 + "^ffcc00Lv. %d^ffffff<CRLF><CRLF>Strategy: Instant" + " "*22 + "Cool-down: 120s<CRLF><CRLF>Soul Art Type: Protection<CRLF>Summon the hero soul merged within you and cast the Dunjia state on yourself.<CRLF>The effect lasts at least 40s.<CRLF><CRLF>^ffcc00Soul Art Effect:^ffffff<CRLF>+%d Control Resistance and a slight increase in Move Speed.<CRLF>When cast in the Awakened state, the Control Resistance bonus is set to %d."))

p.append((69, "^c3dbffInspire Valor<CRLF><CRLF>^ffffffWeapon: Axe" + I*6 + "40 Battle Qi, 5 Stamina per 2s<CRLF>Strategy: Instant" + I*10 + "<CRLF><CRLF>Consume your own Battle Qi to rally allies forward and raise their Battle Qi.<CRLF>Allies within 20m gain 10 Battle Qi every 5s.<CRLF>The effect lasts up to 30s.<CRLF><CRLF>^c3dbffNote: Recommended party attribute-enhancement skill."))

p.append((70, "^c3dbffFierce Battle^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 15s<CRLF><CRLF>Beat the war drum carried on the chariot to increase the Attack Power of allied chariots,<CRLF>granting +5000 Attack Power to allied chariots within 15m of you."))

p.append((71, "^c3dbffBattle Drum^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 15s<CRLF><CRLF>Beat the war drum carried on the chariot to increase the Attack Power of allied chariots,<CRLF>granting +5000 Attack Power to allied chariots within 15m of you."))

p.append((72, "^c3dbffRising Impact^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 30s<CRLF><CRLF>The mechanism mounted on the chariot unleashes a tremendous impact forward, hitting targets<CRLF>up to 15m ahead within a 5m area for 300%% base damage.<CRLF><CRLF>^99ccffChariots only deal 10%% damage to characters"))

p.append((73, "^c3dbffThunder-Rousing Clouds^ffffff<CRLF><CRLF>Category: Wisdom<CRLF>Quality: III<CRLF>Requirement: Ranged<CRLF>Advanced Move<CRLF><CRLF>Gather your full strength and strike with all your might.<CRLF>Deals 257%% base damage."))

p.append((74, "^c3dbffThunder-Rousing Clouds · Assault<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffIncreases the damage dealt by Thunder-Rousing Clouds."))

p.append((75, "^c3dbffThunder-Rousing Clouds · Slay<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffThunder-Rousing Clouds has a chance to pursue the enemy with fatal intent,<CRLF>sacrificing 1500 of your own HP.<CRLF>Each point of HP sacrificed deals the enemy Defense-ignoring damage at a certain ratio,<CRLF>scaled by the Guardian's Strategy value, with a minimum of 0.5."))

p.append((76, "^c3dbffThunder Rush^ffffff<CRLF><CRLF>Category: Wisdom<CRLF>Quality: I<CRLF>Requirement: Melee<CRLF>Basic Move<CRLF><CRLF>Quick attack on 3 enemies in a line ahead,<CRLF>dealing 42%% base damage."))

p.append((77, "^c3dbffHeroic Villain<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Hero Lv.36<CRLF>^ffffffOrigin Restriction: Yuzhou<CRLF><CRLF>Better that I should deceive the world than that the world should deceive me.<CRLF>Being attacked grants a 5%% chance to gain the Heroic Villain state,<CRLF>reflecting ranged attacks, for 5s.<CRLF><CRLF>^99ccffDerived from Cao Cao.<CRLF>^99ccffRequires the corresponding skill book to learn."))

p.append((78, "^c3dbffRuxuan<CRLF><CRLF>^ffffffUsing Ambush Strike followed by Wild Dance Strike within 3s<CRLF>reduces the target's Crit Rate and mounted Crit Rate.<CRLF><CRLF>^99ccffFull-Force Attack mastery; only one can be learned."))

p.append((79, "^c3dbffHealing Hands<CRLF><CRLF>^ffffffSpecialty: Instant" + I*5 + "Cool-down 10min<CRLF><CRLF>^ffffffWhenever you are attacked within 10s, your<CRLF>Defense rises by 10, stacking up to 10 times;<CRLF>the Healing Hands state lasts up to 10s.<CRLF>After Hero level, each level adds 1 Defense."))

p.append((80, "^c3dbffEight Wastes Subdued<CRLF><CRLF>^ffffffSworn Military Art: Instant" + I*6 + "Cool-down 30min<CRLF><CRLF>Shock the assembled heroes and subdue the eight wastes,<CRLF>greatly enhancing the combat endurance of your soldiers.<CRLF><CRLF>The Military Art's intermediate effect triggers when the following conditions are met:<CRLF>Valiant ^c3dbffLv.13^ffffff / Steadfast Formation ^c3dbffLv.13^ffffff / Benevolent Might ^c3dbffLv.13^ffffff / Elite Troops ^c3dbffLv.13^ffffff<CRLF><CRLF>The Military Art's advanced effect triggers when the following conditions are met:<CRLF>Valiant ^c3dbffLv.19^ffffff / Steadfast Formation ^c3dbffLv.16^ffffff / Benevolent Might ^c3dbffLv.19^ffffff / Elite Troops ^c3dbffLv.16^ffffff<CRLF> "))

p.append((81, "^c3dbffIntimidation^ffffff" + " "*40 + "^ffcc00Lv. %d^ffffff<CRLF><CRLF>Strategy: Instant" + " "*17 + "Cool-down: 2min<CRLF><CRLF>Soul Art Type: Protection<CRLF>Summon the hero soul merged within you to strengthen your attributes,<CRLF>greatly raising Attack Power and Max HP.<CRLF>When attacked, you have a %d%% chance to enter the Intimidation state,<CRLF>becoming immune to Stun<CRLF><CRLF>^99ccffOnly effective when used in the Awakened state"))

p.append((82, "^c3dbffMajestic Presence^ffffff<CRLF><CRLF>Weapon: Halberd" + I*9 + "25 Battle Qi, 15 Stamina<CRLF>Mastery: Instant Cast" + I*6 + "Cool-down 8s<CRLF><CRLF>This Move is an enhanced form of Four-Way Kill, consuming more Battle Qi<CRLF>to deal higher damage.<CRLF>Attacks the target before you and 7 enemies within 5m of it.<CRLF>The Move is also affected by the Link Combat Art effect."))

p.append((83, "^c3dbffPlayful Delight<CRLF><CRLF>^ffffffDance with this panda and watch the black-and-white bundle dance on the ground — utterly charming to bystanders."))

p.append((84, "^c3dbffKongming Lantern"))

p.append((85, "^c3dbffPacify the Army^ffffff" + " "*40 + "^ffcc00Lv. %d^ffffff<CRLF><CRLF>Strategy: Instant" + " "*17 + "Cool-down: 2min<CRLF><CRLF>Soul Art Type: Protection<CRLF>Summon the hero soul merged within you to strengthen your attributes,<CRLF>greatly raising Attack Power and Max HP.<CRLF>+%d Direct Resistance<CRLF>+%d Indirect Resistance<CRLF><CRLF>^99ccffOnly effective when used in the Awakened state"))

p.append((86, "^c3dbffPacifying Shot^ffffff" + " "*40 + "^ffcc00Lv. %d^ffffff<CRLF><CRLF>Strategy: Instant" + " "*18 + "Initial Cool-down: 20s<CRLF><CRLF>Soul Art Type: Attack<CRLF>Summon the hero soul merged within you to unleash a soul attack<CRLF>on a single enemy within 20m in front of you.<CRLF><CRLF>^ffcc00Soul Art Effect:^ffffff<CRLF>1. The attack deals one instance of Soul damage; damage dealt while<CRLF>in the Awakened state is doubled;<CRLF>2. Casting it in the Awakened state inflicts Barrage on the enemy, reducing<CRLF>Indirect Resistance by %d for at least 5s."))

p.append((87, "^c3dbffAs Steadfast as Stone^ffffff<CRLF><CRLF>Quality: V<CRLF>Requirement: None<CRLF>Support Move<CRLF>Cool-down: 5min<CRLF><CRLF>Unbreakable as a boulder, raising your Defense<CRLF>for 1min."))

p.append((88, "^c3dbffXuanmu Light Dance<CRLF><CRLF>^ffffffSwing this sword and a myriad of sword shadows swirl, cleaving in all directions."))

p.append((89, "^c3dbffAnnihilation · Warrior<CRLF><CRLF>^ffffffWeapon: Staff" + I*8 + "20 Battle Qi 10 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Deals heavy damage to up to 5 enemies within 5m ahead.<CRLF>After learning the matching “Fury” or “Break” skill, the Move<CRLF>deals double damage.<CRLF><CRLF>^c3dbffNote: Used after Annihilation · Fury, the target struck<CRLF>takes Defense-related damage;<CRLF>used after Annihilation · Break, it Slows the target struck<CRLF>and has a chance to Silence it."))

p.append((90, "^c3dbffAnnihilation · Fury<CRLF><CRLF>^ffffffWeapon: Staff" + I*8 + "15 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Focus entirely on warding off enemy attacks,<CRLF>raising your Defense for 10s.<CRLF><CRLF>^c3dbffNote: Used after Annihilation · Break, the Defense<CRLF>effect is increased;<CRLF>used after Annihilation · Warrior, it grants allies<CRLF>part of the Defense bonus."))

p.append((91, "^c3dbffAnnihilation · Break<CRLF><CRLF>^ffffffWeapon: Staff" + I*8 + "15 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Concentrate and focus on countering enemies,<CRLF>dealing damage to melee targets that strike you.<CRLF><CRLF>^c3dbffNote: Used after Annihilation · Fury, reflected<CRLF>damage is increased;<CRLF>used after Annihilation · Warrior, the indirect damage<CRLF>you take is reduced."))

p.append((92, "^c3dbffFrozen Throat^ffffff<CRLF><CRLF>Category: Wisdom<CRLF>Quality: II<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Attacks the 3 enemies in front<CRLF>Deals 85%% base damage."))

p.append((93, "^c3dbffFrost Art^ffffff<CRLF><CRLF>Category: Wisdom<CRLF>Quality: II<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Attacks the target, dealing 191%% base damage."))

p.append((94, "^c3dbffFrost Art · Assault<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Melee<CRLF><CRLF>^ffffffIncreases the damage dealt by Frost Art."))

p.append((95, "^c3dbffFrost Art · Mind Charm<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Melee<CRLF><CRLF>^ffffffFrost Art has a chance to place the target in the Mind Charm state.<CRLF>In this state, if the target is healed, it takes a certain amount of damage,<CRLF>scaled by the Guardian's Strategy value. The state lasts 10s."))

p.append((96, "^c3dbffInch Sever · Warrior<CRLF><CRLF>^ffffffWeapon: Hook" + I*6 + "20 Battle Qi 10 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Deals heavy damage to up to 5 targets within 5m ahead.<CRLF>After learning the matching “Fury” or “Break” skill, the Move<CRLF>deals double damage.<CRLF><CRLF>^c3dbffNote: Used after Inch Sever · Fury, it has a chance to<CRLF>Immobilize the target based on your own Move Speed;<CRLF>used after Inch Sever · Break, it makes the target<CRLF>suffer a Bleeding effect."))

p.append((97, "^c3dbffInch Sever · Fury<CRLF><CRLF>^ffffffWeapon: Hook" + I*8 + "15 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Raise your own Control Resistance<CRLF>and instantly remove Slow from yourself.<CRLF><CRLF>^c3dbffNote: Used after Inch Sever · Break, it additionally raises<CRLF>your own Stun Resistance;<CRLF>used after Inch Sever · Warrior, it grants you<CRLF>a Direct Resistance bonus for 3s."))

p.append((98, "^c3dbffInch Sever · Break<CRLF><CRLF>^ffffffWeapon: Hook" + I*8 + "15 Stamina<CRLF>Martial Art: Instant" + I*8 + "Cool-down 60s<CRLF><CRLF>Weaken up to 5 enemies within 8m.<CRLF>Their Resistance loss over 10s is greatly reduced.<CRLF><CRLF>^c3dbffNote: Used after Inch Sever · Fury, it deals Defense-ignoring damage<CRLF>scaled to Max Attack Power;<CRLF>used after Inch Sever · Warrior, it reduces the healing<CRLF>the target receives."))

p.append((99, "^c3dbffNo Grass Grows<CRLF>^ffffffRequires at least 25 points invested in Technique Mastery.<CRLF><CRLF>^ffffffWhile Combo is active, using an Area skill deals extra Defense-ignoring damage,<CRLF>scaled to your own Defense."))

p.append((100, "^c3dbffGuided Arrow<CRLF><CRLF>^ffffffWeapon: Bow, Crossbow<CRLF>^ffffffCost: 10 Stamina 20 Battle Qi<CRLF>^ffffffRiding Art: Cast while Moving" + I*5 + " Cool-down 60s<CRLF><CRLF>^ffffffFire a mysterious arrow that automatically seeks out its target.<CRLF>^99ccffCan only be used while in Mounted Combat."))

p.append((101, "^c3dbffCloud-Smothering Strike<CRLF>^ffffffRequires at least 25 points invested in Fierce Mastery.<CRLF><CRLF>^ffffffWeapon: Shield" + I*7 + "10 Battle Qi<CRLF>Martial Art: Instant" + " "*17 + "Cool-down: 6s<CRLF><CRLF>Combo Move; Shadow-Sealing Slash, Cloud-Splitting Strike and Moon-Breaking Assault must be released in order first.<CRLF>Attacks the enemy fiercely with a saber, dealing damage."))

p.append((102, "^c3dbffCloud-Smothering Strike · Steadfast<CRLF>^ffffffRequires at least 25 points invested in Steadfast Mastery.<CRLF><CRLF>^ffffffUsing Cloud-Smothering Strike while in the Steadfast Resolve state<CRLF>has a chance to Paralyze the target,<CRLF>preventing it from using skills or attacking for 3s."))

p.append((103, "^c3dbffCloud-Smothering Strike · Fierce<CRLF>^ffffffRequires at least 2 points invested in the mastery “Cloud-Smothering Strike”.<CRLF><CRLF>^ffffffUsing Cloud-Smothering Strike while in the Fierce state<CRLF>increases the number of enemies hit."))

p.append((104, "^c3dbffThroat Seal<CRLF><CRLF>^ffffffWild Shadow Strike has a chance to seal the throat of an enemy, causing 3s of Silence.<CRLF><CRLF>^99ccffFatal Attack mastery; only one can be learned."))

p.append((105, "^c3dbffThroat-Sealing Thrust<CRLF><CRLF>^ffffffWeapon: Sword" + I*8 + "25 Battle Qi" + I + "5 Stamina<CRLF>Martial Art: Cast Time 1s" + I*8 + "Cool-down 15s<CRLF><CRLF>Seal the throat of an enemy with a thrust, exposing its vital weak point.<CRLF>Reduces the enemy's Crit Resistance by 15.<CRLF>Attacking an enemy in a Blocking action with Throat-Sealing Thrust<CRLF>causes 3s of Stun.<CRLF>Deals 110%% base damage."))

p.append((106, "^c3dbffThroat-Sealing Thrust · Strength<CRLF>^ffffffRequires at least 6 points invested in Strength Mastery.<CRLF><CRLF>^ffffffIncreases the effect that lowers the target's Crit Resistance.<CRLF>Reduces at least 5 extra Crit Resistance from the target.<CRLF>The final reduction scales with the level of Throat-Sealing Thrust."))

p.append((107, "^c3dbffThroat-Sealing Thrust · Technique<CRLF>^ffffffRequires at least 8 points invested in Technique Mastery.<CRLF><CRLF>^ffffffUsing Throat-Sealing Thrust extends the duration of the Crit Resistance reduction<CRLF>and has a chance to place the target in the Throat Seal state,<CRLF>preventing it from moving and attacking for 3s."))

p.append((108, "^c3dbffThroat-Sealing Thrust · Shattering Gold<CRLF>^ffffffRequires at least 3 points invested in “Throat-Sealing Thrust · Technique”.<CRLF><CRLF>^ffffffTargets in the Shattering Gold state take at least 5%% more magic damage.<CRLF>The damage increase scales with the level of Throat-Sealing Thrust."))

p.append((109, "^c3dbffFrost Seal Art^ffffff<CRLF><CRLF>Category: Wisdom<CRLF>Quality: II<CRLF>Requirement: Ranged<CRLF>Advanced Move<CRLF><CRLF>Attacks the target, dealing 194%% base damage."))

p.append((110, "^c3dbffFrost Seal Art · Assault<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffIncreases the damage dealt by Frost Seal Art."))

p.append((111, "^c3dbffFrost Seal Art · Mind Charm<CRLF><CRLF>Category: Wisdom<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffFrost Seal Art has a chance to place the target in the Mind Charm state.<CRLF>In this state, if the target is healed, it takes a certain amount of damage,<CRLF>scaled by the Guardian's Strategy value. The state lasts 10s."))

p.append((112, "^c3dbffShadow-Sealing Slash<CRLF><CRLF>^ffffffWeapon: Shield" + I*8 + "5 Stamina<CRLF>Move: Instant" + I*8 + "Cool-down 3s<CRLF><CRLF>Thrust the shield in your left hand forward with force,<CRLF>dealing 156%% base damage to the selected target.<CRLF>Generates 5 Battle Qi.<CRLF><CRLF>^c3dbffNote: Recommended farming skill, used as the setup for control."))

p.append((113, "^c3dbffShadow-Sealing Slash · Steadfast<CRLF>^ffffffRequires at least 20 points invested in Steadfast Mastery.<CRLF><CRLF>^ffffffUsing Shadow-Sealing Slash while in the Steadfast state has a chance to grant the Shadow Seal state,<CRLF>making your next Combo Move Stun the target for 2s.<CRLF><CRLF>^c3dbffNote: This Shadow Seal state only works while Steadfast is active."))

p.append((114, "^c3dbffShadow-Sealing Slash · Fierce<CRLF>^ffffffRequires at least 20 points invested in Fierce Mastery.<CRLF><CRLF>^ffffffUsing Shadow-Sealing Slash while in the Fierce state has a chance to grant the Shadow Seal state,<CRLF>making your next Combo Move Silence the target for 2s.<CRLF><CRLF>^c3dbffNote: This Shadow Seal state only works while Fierce is active."))

p.append((115, "^c3dbffMoon-Sealing Strike<CRLF><CRLF>^ffffffWeapon: Shield" + I*8 + "    10 Battle Qi<CRLF>Martial Art: Cast 0.5s" + I*8 + "Cool-down 8s<CRLF><CRLF>Combo Move; Shadow-Sealing Slash, Moon-Breaking Assault and Cloud-Splitting Strike must be released in order first.<CRLF>Slam the enemy with your shield,<CRLF>dealing 175%% base damage."))

p.append((116, "^c3dbffMoon-Sealing Strike · Steadfast<CRLF>^ffffffRequires at least 20 points invested in Steadfast Mastery.<CRLF><CRLF>^ffffffUsing Moon-Sealing Strike while in the Steadfast state<CRLF>can Stun the target."))

p.append((117, "^c3dbffMoon-Sealing Strike · Fierce<CRLF>^ffffffRequires at least 20 points invested in Fierce Mastery.<CRLF><CRLF>^ffffffUsing Moon-Sealing Strike while in the Fierce state<CRLF>has a chance to place the target in the Moon Seal state,<CRLF>draining HP each second for 5s.<CRLF>If the target is attacked 3 times while Moon Seal is active,<CRLF>it enters a 2s Silence state."))

p.append((118, "^c3dbffSeal Art<CRLF><CRLF>^ffffffDirect Attack has a chance of not entering cool-down.<CRLF><CRLF>^99ccffRestraint skill mastery; only one can be learned."))

p.append((119, "^c3dbffShoot<CRLF><CRLF>^ffffffWeapon: Bow<CRLF>Move: Auto Cast<CRLF><CRLF>Attacks the selected enemy, generating 5 Battle Qi on each hit."))

p.append((120, "^c3dbffShoot<CRLF><CRLF>^ffffffWeapon: Crossbow<CRLF>Move: Auto Cast<CRLF><CRLF>Attacks the selected enemy, generating 5 Battle Qi on each hit."))

p.append((121, "^c3dbffPiercing Shot<CRLF>^ffffffRequires at least 2 points invested in “Enhanced Five-Step Shot”.<CRLF><CRLF>^ffffffAdds a Guard Break effect when using Five-Step Shot. While Guard Break is in effect<CRLF>no Moves can be used; only normal attacks and movement."))

p.append((122, "^c3dbffHonored Righteousness<CRLF><CRLF>^ffffffIncreases the Crit Rate of Fierce Raid Strike and Wild Shadow Strike.<CRLF><CRLF>^99ccffFatal Attack mastery; only one can be learned."))

p.append((123, "^c3dbffMartial Honor^ffffff<CRLF><CRLF>Quality: V<CRLF>Requirement: None<CRLF>Support Move<CRLF>Cool-down: 5min<CRLF><CRLF>Gather your full strength to raise your Accuracy,<CRLF>for 1min."))

p.append((124, "^c3dbffPractice Benevolence and Righteousness<CRLF><CRLF>^ffffffSworn Military Art: Instant" + I*6 + "Cool-down 30min<CRLF><CRLF>Walk the path of benevolence and righteousness to become a king's mentor,<CRLF>raising several attributes of your sworn brothers.<CRLF>Lasts 10min.<CRLF><CRLF>The Military Art's intermediate effect triggers when the following conditions are met:<CRLF>Valiant ^c3dbffLv.10^ffffff / Steadfast Formation ^c3dbffLv.10^ffffff / Benevolent Might ^c3dbffLv.11^ffffff / Elite Troops ^c3dbffLv.10^ffffff<CRLF><CRLF>The Military Art's advanced effect triggers when the following conditions are met:<CRLF>Valiant ^c3dbffLv.16^ffffff / Steadfast Formation ^c3dbffLv.14^ffffff / Benevolent Might ^c3dbffLv.16^ffffff / Elite Troops ^c3dbffLv.14^ffffff<CRLF> "))

p.append((125, "^c3dbffGathering Clouds<CRLF><CRLF>Quality: V<CRLF>Requirement: None<CRLF><CRLF>^ffffffPermanently raises your Max HP."))

p.append((126, "^c3dbffMountain Collapse, Earth Split^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: II<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Attacks the 3 enemies in front<CRLF>Deals 75%% base damage."))

p.append((127, "^c3dbffMountain-Crumbling Hammer<CRLF><CRLF>^ffffffWeapon: Hammer" + I*7 + "  30 Battle Qi<CRLF>Martial Art: Instant" + I*8 + "Cool-down 6s<CRLF><CRLF>Spot the flaw in the enemy's attack and smash the enemies ahead with both hammers.<CRLF>The Move deals a large amount of bonus damage.<CRLF>The attack inflicts Tremor on the enemy and deals 195%% base damage.<CRLF><CRLF>^c3dbffNote: Recommended farming skill, used to spend Battle Qi."))

p.append((128, "^c3dbffMountain-Crumbling Hammer · Break<CRLF>^ffffffRequires at least 5 points invested in Break Mastery.<CRLF><CRLF>^ffffffIncreases the Critical chance of the Move “Mountain-Crumbling Hammer”."))

p.append((129, "^c3dbffCrashing Dragon Heroic Qi^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: III<CRLF>Requirement: Ranged<CRLF>Advanced Move<CRLF><CRLF>Gather your full strength and strike with all your might.<CRLF>Deals 252%% base damage."))

p.append((130, "^c3dbffCrashing Dragon Heroic Qi · Assault<CRLF><CRLF>Category: Focus<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffIncreases the damage dealt by Crashing Dragon Heroic Qi."))

p.append((131, "^c3dbffCrashing Dragon Heroic Qi · Divine Punishment<CRLF><CRLF>Category: Focus<CRLF>Quality: IV<CRLF>Requirement: Ranged<CRLF><CRLF>^ffffffCrashing Dragon Heroic Qi has a chance to place the target in the Divine Punishment state.<CRLF>While Divine Punishment is active, each time you are attacked your Direct Resistance drops by 2,<CRLF>stacking up to 5 times. The state lasts 10s."))

p.append((132, "^c3dbffUnconquered River<CRLF><CRLF>^ffffffIncreases the effects of your Combat Arts.<CRLF><CRLF>^99ccffCombat Art mastery; only one can be learned."))

p.append((133, "^c3dbffLeft Spin Strike<CRLF><CRLF>^ffffffWeapon: Fork<CRLF>^ffffffCost: 5 Stamina<CRLF>^ffffffCool-down: 6s<CRLF>^ffffffRiding Art: Instant<CRLF><CRLF>^ffffffFling darts quickly to strike enemies within 18m,<CRLF>dealing some damage and gaining 5 Battle Qi.<CRLF>Targets struck are Slowed for 5s and may be Immobilized.<CRLF><CRLF>^99ccffRestraint skill mastery; only one can be learned.<CRLF>^99ccffCan only be used while in Mounted Combat.<CRLF>Shares cool-down with Swift Attack."))

p.append((134, "^c3dbffSmooth Talk<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Hero Lv.50<CRLF>^ffffffOrigin Restriction: Qingzhou<CRLF><CRLF>Silver-tongued and quick-witted, skilled in diplomacy.<CRLF>Being attacked grants a 5%% chance to gain the Smooth Talk state,<CRLF>raising Dodge for 3s.<CRLF>If you are struck again while Smooth Talk is active,<CRLF>your Dodge rises once more.<CRLF><CRLF>^99ccffDerived from Sun Qian.<CRLF>^99ccffRequires the corresponding skill book to learn."))

p.append((135, "^c3dbffTremendous Force Impact^ffffff<CRLF><CRLF>Chariot Only" + " "*13 + "Cool-down: 60s<CRLF><CRLF>The mechanism mounted on the chariot unleashes a tremendous impact forward,<CRLF>dealing 1500000 fixed damage to city gates.<CRLF><CRLF>^99ccffRam Chariot skills only work against city gates"))

p.append((136, "^c3dbffBoulder Smash^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: II<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Attacks the target, dealing 150%% base damage."))

p.append((137, "^c3dbffBoulder Smash · Solid Armor<CRLF><CRLF>Category: Focus<CRLF>Quality: IV<CRLF>Requirement: Melee<CRLF><CRLF>^ffffffBoulder Smash has a chance to place yourself in the Solid Armor state,<CRLF>raising Defense by 50 and restoring 50 HP each time you are attacked.<CRLF>The state lasts 8s."))

p.append((138, "^c3dbffBoulder Smash · Assault<CRLF><CRLF>Category: Focus<CRLF>Quality: IV<CRLF>Requirement: Melee<CRLF><CRLF>^ffffffIncreases the damage dealt by Boulder Smash."))

p.append((139, "^c3dbffBoulder Shatters Earth^ffffff<CRLF><CRLF>Category: Focus<CRLF>Quality: III<CRLF>Requirement: Melee<CRLF>Advanced Move<CRLF><CRLF>Sweep your weapon to attack 5 enemies around you<CRLF>Deals 86%% base damage."))


# ---------- load sources ----------
src = []
with open(os.path.join(BASE, 'in', 'batch_003.jsonl'), encoding='utf-8') as f:
    for line in f:
        line = line.rstrip('\n')
        if line.strip():
            src.append(json.loads(line))

assert len(src) == len(p), (len(src), len(p))

def u3000_runs(s):
    return [len(m.group(0)) for m in re.finditer('\u3000+', s)]

def long_ascii_runs(s):
    return [len(m.group(0)) for m in re.finditer(' {2,}', s)]

def tokens(s):
    # strict sequence: color codes, placeholders, sentinels, escapes
    return re.findall(r'\^[0-9A-Fa-f]{6}|%[0-9\.]*[sdf%%]|<CRLF>|<LF>|<CR>|\\r|\\n', s)

def digit_multiset(s):
    return sorted(re.findall(r'\d+', s))

problems = []
for (pid, eng), rec in zip(p, src):
    assert pid == rec['id'], (pid, rec['id'])
    s = rec['source']
    if u3000_runs(s) != u3000_runs(eng):
        problems.append((pid, 'U3000', u3000_runs(s), u3000_runs(eng)))
    if long_ascii_runs(s) != long_ascii_runs(eng):
        problems.append((pid, 'ASCII', long_ascii_runs(s), long_ascii_runs(eng)))
    if tokens(s) != tokens(eng):
        problems.append((pid, 'TOKENS', tokens(s), tokens(eng)))
    if '"' in eng:
        problems.append((pid, 'STRAIGHT-QUOTE'))
    if re.search(r'[\u4e00-\u9fff]', eng):
        problems.append((pid, 'CJK-LEFT'))
    if len(s.split('<CRLF>')) != len(eng.split('<CRLF>')):
        problems.append((pid, 'SEGMENTS', len(s.split('<CRLF>')), len(eng.split('<CRLF>'))))

if problems:
    for pr in problems:
        print('PROBLEM', pr[0], pr[1])
        if pr[1] == 'TOKENS':
            ss, ee = pr[2], pr[3]
            for i, (a, b) in enumerate(zip(ss, ee)):
                if a != b:
                    print('   first diff at', i, repr(a), repr(b))
                    break
            print('   src tail', ss[max(0,i-2):i+4])
            print('   eng tail', ee[max(0,i-2):i+4])
    sys.exit(1)

outdir = os.path.join(BASE, 'out')
os.makedirs(outdir, exist_ok=True)
with open(os.path.join(outdir, 'batch_003.jsonl'), 'w', encoding='utf-8', newline='') as f:
    for pid, eng in p:
        f.write(json.dumps({"id": pid, "english": eng}, ensure_ascii=False) + "\n")

print('OK', len(p), 'records written')
