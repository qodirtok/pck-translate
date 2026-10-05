# -*- coding: utf-8 -*-
"""Build batch_006.jsonl translations. Emits one JSONL record per input id, same order."""
import json, os

U = '\u3000'  # ideographic space

T = {}

T[1] = ("^c3dbffLeiyun · Shatter<CRLF><CRLF>"
"^ffffffWeapon: Hammer{U8}15 Stamina<CRLF>"
"Martial Skill: Instant{U8}Cool-down 60 sec<CRLF><CRLF>"
"Reduces up to 5 enemies within 8 meters,<CRLF>"
"lowering their Attack Power and Defense over 10 seconds.<CRLF><CRLF>"
"^c3dbffNote: Using this Skill after Leiyun · Fury enhances the<CRLF>"
"Attack and Defense reduction on the target;<CRLF>"
"using it after Leiyun · Army enhances your own<CRLF>"
"Attack Power.")

T[2] = ("^c3dbffLeixin Hammer<CRLF><CRLF>"
"^ffffffWeapon: Hammer<CRLF>"
"^ffffffCost: 5 Stamina<CRLF>"
"^ffffffCool-down: 6 sec<CRLF>"
"^ffffffRiding: Instant<CRLF><CRLF>"
"^ffffffSlam both hammers together before you, striking fear into the enemies ahead.<CRLF>"
"Deals heavy damage to up to 5 enemies.<CRLF>"
"Hit targets are Slowed for 5 seconds.<CRLF>"
"This Move dispels the attack stacking effect of standard attacks.<CRLF>"
"and applies a counter effect to targets using standard attacks.<CRLF><CRLF>"
"^99ccffTaunt Skill Mastery; only one can be learned.<CRLF>"
"^99ccffOnly usable while mounted in combat.<CRLF>"
"At 3 Counter stacks, a Dismount effect triggers.<CRLF>"
"Shares its cool-down with Swift Attack.")

T[3] = ("^c3dbffDragonbind Coil<CRLF><CRLF>"
"^ffffffAerial Thrust has a chance to apply a 3-second<CRLF>"
"Whip Power effect: the target cannot move or use Moves.<CRLF><CRLF>"
"^99ccffFatal Attack Mastery; only one can be learned.")

T[4] = ("^c3dbffAttack<CRLF><CRLF><CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[5] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Saber<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[6] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Sword<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.<CRLF>"
"Note: When Magic Power exceeds 30, the following extra effects trigger:<CRLF>"
"when Windchaser Skill grants control immunity, or Sword Aura · Guarded Sword triggers the offensive state,<CRLF>"
"basic attacks hit the target up to three times, with damage increasing by 3%% each hit.<CRLF>"
"^c3dbffNote: When a single target becomes an Area Attack, the sword changes shape.")

T[7] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Trident<CRLF>"
"Move: Auto-Attack<CRLF><CRLF>"
"Attack the selected enemy.")

T[8] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Fan<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[9] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Axe{U8}Cost: None<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[10] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Staff<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[11] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Spear<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[12] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Staff<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[13] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Claws<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[14] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Ring Blade<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[15] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Shield<CRLF>"
"Move: Auto-Attack<CRLF><CRLF>"
"Attack the selected enemy.")

T[16] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Dance<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[17] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Hooksword<CRLF>"
"Move: Auto-Attack<CRLF><CRLF>"
"Attack the selected enemy.")

T[18] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Battleaxe<CRLF>"
"Move: Auto-Attack<CRLF><CRLF>"
"Attack the selected enemy.")

T[19] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Iron Mace<CRLF>"
"Move: Auto-Attack<CRLF><CRLF>"
"Attack the selected enemy.")

T[20] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Hammer<CRLF>"
"Move: Auto-Attack<CRLF><CRLF>"
"Attack the selected enemy.")

T[21] = ("^c3dbffAttack<CRLF><CRLF>"
"^ffffffWeapon: Whip<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[22] = ("^c3dbffAttack^ffffff<CRLF><CRLF>"
"Weapon: Halberd<CRLF>"
"Move: Auto-Cast<CRLF><CRLF>"
"Attack the selected enemy.")

T[23] = ("^c3dbffAttack Blessing<CRLF><CRLF>"
"^a800ffIncreases the target's Attack Power by 50 for 5 minutes.<CRLF><CRLF>"
"^0184ffSelect another player, then cast.<CRLF><CRLF>"
"^ffffffCool-down: 20 sec")

T[24] = ("^c3dbffTen Thousand Foes<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: Hero Lv. 50<CRLF>"
"^ffffffRegion Requirement: Youzhou<CRLF><CRLF>"
"Mighty and fearless, renowned as a foe of ten thousand,<CRLF>"
"when attacked there is a 5%% chance to gain the Ten Thousand Foes state,<CRLF>"
"raising Pierce Break points for 4 seconds.<CRLF><CRLF>"
"^99ccffOrigin: Zhang Fei.<CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[25] = ("^c3dbffTen Thousand Foes^ffffff                                        ^ffcc00Level %d^ffffff<CRLF><CRLF>"
"Tactics: Instant                 Cool-down: 2 min<CRLF><CRLF>"
"Soul Skill type: Blessing<CRLF>"
"Summon the hero soul fused into your body to strengthen your attributes,<CRLF>"
"greatly raising Attack Power and Max HP.<CRLF>"
"After use you enter the Ten Thousand Foes state;<CRLF>"
"when you land a hit or are hit, there is a %d%% chance to gain the Triumph state,<CRLF>"
"stackable up to 4. When using Fierce Assault, it dispels the Triumph<CRLF>"
"state and, based on its stacks, raises your Attack Power by %d and Attack Power by %d%% per stack.<CRLF>"
"Each Triumph stack increases Fierce Assault's hit count by 1,<CRLF>"
"and Fierce Assault can Immobilize targets, with the duration scaling by stacks.<CRLF>"
"The Immobilize effect cannot trigger consecutively.<CRLF><CRLF>"
"^99ccffOnly active while Awakened")

T[26] = ("^c3dbffKeen<CRLF><CRLF>"
"^ffffffIncreases your Agility and nimbleness.<CRLF>"
"After reaching a certain point threshold, the corresponding Aptitude effect activates;<CRLF>"
"the Aptitude effect will not exceed its cap level.<CRLF>"
"^c3dbffRequires maxed Riding Mastery to learn.<CRLF><CRLF>"
"^ffcc00Value: ^00ff80%d^ffffff(%s)^ffcc00")

T[27] = ("^c3dbffRelief<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: Hero Lv. 36<CRLF>"
"^ffffffRegion Requirement: Qingzhou<CRLF><CRLF>"
"Ji Ling was Yuan Shu's confidant; at the Battle of Xuzhou he was made Relief Commander.<CRLF>"
"When attacked there is a 5%% chance to gain the Relief state,<CRLF>"
"instantly restoring a large amount of HP.<CRLF><CRLF>"
"^99ccffOrigin: Ji Ling.<CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[28] = ("^c3dbffRescue<CRLF><CRLF>"
"^ffffffWeapon: Fan{U9}35 Stamina<CRLF>"
"Move: Instant{U8}Cool-down 15 sec<CRLF><CRLF>"
"Restores HP to the target over 15 seconds.<CRLF>"
"If you are in the Strategy state,<CRLF>"
"the target instantly recovers additional HP.")

T[29] = ("^c3dbffRescue · Sharp Edge<CRLF>^ffffffNeeds at least 5 points invested in Rescue · Spell.<CRLF><CRLF>"
"^ffffffWhile Rescue's HP recovery effect is active,<CRLF>"
"the target's Attack Power is increased.")

T[30] = ("^c3dbffRescue · Spell<CRLF>^ffffffNeeds at least 20 points invested in Spell Mastery.<CRLF><CRLF>"
"^ffffffEnhances the HP-over-time recovery caused by Rescue.")

T[31] = ("^c3dbffRescue · Tactic<CRLF>^ffffffNeeds at least 5 points invested in Tactic Mastery.<CRLF><CRLF>"
"^ffffffEnhances the HP-over-time recovery caused by Rescue.<CRLF>"
"Also enhances the instant HP recovery from Rescue<CRLF>"
"while in the Strategy state.<CRLF>"
"At 3 full stacks, Rescue can raise the target's Attack Power by 5%%.")

T[32] = ("^c3dbffPeerless Prose<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"Lv. 2/4    Magic Penetration +1/2<CRLF>"
"Lv. 2/3/4 Magic Power +1%%/2%%/3%% <CRLF>"
"Lv. 1/3/5 Defense +10/20/50<CRLF><CRLF>"
"A passive unlocked after the Civil Official codex grows. This skill's level<CRLF>"
"affects the skill attached in the Peerless Prose codex set - Extraordinary · Prose.")

T[33] = ("^c3dbffCivil and Military Lore<CRLF><CRLF>"
"^ffffffOath Tactic: Passive<CRLF><CRLF>"
"Literary talent settles the world, military strategy secures the realm;<CRLF>"
"generals within the sworn brotherhood share a small amount of experience.<CRLF> ")

T[34] = ("^c3dbffSoaring Morale<CRLF><CRLF>"
"^ffffffWeapon: Any{U8}10 Stamina<CRLF>"
"Battle: Instant{U8}Cool-down 5 min<CRLF><CRLF>"
"Buoyed by Battle Will, your fighting desire surges.<CRLF>"
"Increases Max Battle Qi, lasting 30 seconds")

T[35] = ("^c3dbffBattle Sky Verse<CRLF><CRLF>"
"^ffffffFierce Assault can boost skill<CRLF>"
"damage based on your current Battle Qi.<CRLF><CRLF>"
"^99ccffFatal Attack Mastery; only one can be learned.")

T[36] = ("^c3dbffAxe Intent<CRLF><CRLF>"
"^ffffffType: Passive<CRLF><CRLF>"
"An ability grasped after fully mastering the subtlety of the axe;<CRLF>"
"even without wielding an axe, you can unleash the axe's ultimate intent.")

T[37] = ("^c3dbffIron Slash · Army<CRLF><CRLF>"
"^ffffffWeapon: Battleaxe{U8}20 Battle Qi<CRLF>"
"Martial Skill: Instant{U8}Cool-down 60 sec<CRLF><CRLF>"
"A charged strike that deals heavy damage to the target.<CRLF>"
"After learning the corresponding Fury or Break skill, the Move's<CRLF>"
"damage is doubled.<CRLF><CRLF>"
"^c3dbffNote: Using this Skill after Iron Slash · Rage lowers the enemy's<CRLF>"
"direct Resistance;<CRLF>"
"using it after Iron Slash · Break raises the skill's<CRLF>"
"Crit Rate.")

T[38] = ("^c3dbffIron Slash · Rage<CRLF><CRLF>"
"^ffffffWeapon: Battleaxe{U8}15 Stamina<CRLF>"
"Martial Skill: Instant{U8}Cool-down 60 sec<CRLF><CRLF>"
"Vowed to slay, nothing stands in the way.<CRLF>"
"Lowers the target's Defense for 10 seconds.<CRLF><CRLF>"
"^c3dbffNote: Using this Skill after Iron Slash · Break lowers<CRLF>"
"Defense further;<CRLF>"
"using it after Iron Slash · Army raises the number of<CRLF>"
"affected targets, but slightly weakens the effect.")

T[39] = ("^c3dbffIron Slash · Break<CRLF><CRLF>"
"^ffffffWeapon: Battleaxe{U6}10 Battle Qi 10 Stamina<CRLF>"
"Martial Skill: Instant{U8}Cool-down 60 sec<CRLF><CRLF>"
"Deals heavy damage to the target and enemies within 5 meters in front of you,<CRLF>"
"while reducing the healing they receive by 20%%.<CRLF>"
"Hits up to 5 targets.<CRLF><CRLF>"
"^c3dbffNote: Using this Skill after Iron Slash · Rage further reduces<CRLF>"
"the healing enemies receive;<CRLF>"
"using it after Iron Slash · Army reduces the skill's<CRLF>"
"hit count by 2, but raises its damage multiplier.")

T[40] = ("^c3dbffDragon-Slaying Form<CRLF><CRLF>"
"^ffffffWeapon: Iron Mace{U8}20 Battle Qi<CRLF>"
"Martial Skill: Instant{U8}Cool-down 30 sec<CRLF><CRLF>"
"Leap up and unleash a lightning attack,<CRLF>"
"striking up to 3 enemies ahead.<CRLF>"
"Deals 75%% base damage.<CRLF>"
"Moves you 15 meters forward.")

T[41] = ("^c3dbffDragon-Slaying Form · Skill<CRLF><CRLF>"
"^ffffffReduces the cool-down of Dragon-Slaying Form.")

T[42] = ("^c3dbffWeapon Break<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: Hero Lv. 36<CRLF>"
"^ffffffRegion Requirement: Yanzhou<CRLF><CRLF>"
"Dian Wei was immensely strong and skilled with twin halberds; during Zhang Xiu's rebellion,<CRLF>"
"he died in battle protecting Cao Cao.<CRLF>"
"When attacked there is a 5%% chance to reflect the Weapon Break state,<CRLF>"
"lowering the target's Max HP for 5 seconds.<CRLF><CRLF>"
"^99ccffOrigin: Dian Wei.<CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[43] = ("^c3dbffGriefcut · Army<CRLF><CRLF>"
"^ffffffWeapon: Trident{U8}20 Battle Qi<CRLF>"
"Martial Skill: Instant{U8}Cool-down 60 sec<CRLF><CRLF>"
"A full-force strike that deals heavy damage to the target.<CRLF>"
"After learning the corresponding Fury or Break skill, the Move's<CRLF>"
"damage is doubled.<CRLF><CRLF>"
"^c3dbffNote: Using this Skill after Griefcut · Fury makes hit<CRLF>"
"targets bleed HP over 10 seconds;<CRLF>"
"using it after Griefcut · Break briefly raises your own<CRLF>"
"Pierce Break.")

T[44] = ("^c3dbffGriefcut · Fury<CRLF><CRLF>"
"^ffffffWeapon: Trident{U8}15 Stamina<CRLF>"
"Martial Skill: Instant{U8}Cool-down 60 sec<CRLF><CRLF>"
"Curses the target; for 10 seconds, each time you hit it,<CRLF>"
"you recover HP.<CRLF><CRLF>"
"^c3dbffNote: Using this Skill after Griefcut · Break boosts the<CRLF>"
"HP recovery effect;<CRLF>"
"using it after Griefcut · Army lowers the target's<CRLF>"
"Melee attack frequency.")

T[45] = ("^c3dbffGriefcut · Break<CRLF><CRLF>"
"^ffffffWeapon: Trident{U6}10 Battle Qi 10 Stamina<CRLF>"
"Martial Skill: Instant{U8}Cool-down 60 sec<CRLF><CRLF>"
"Deals heavy damage to the target and briefly raises your own<CRLF>"
"Crit Resistance.<CRLF><CRLF>"
"^c3dbffNote: Using this Skill after Griefcut · Fury further boosts<CRLF>"
"Crit Resistance;<CRLF>"
"using it after Griefcut · Army Slows the target<CRLF>"
"by 1 m/sec and lowers its direct-damage Resistance.")

T[46] = ("^c3dbffMooncleave Slash<CRLF><CRLF>"
"^ffffffWeapon: Saber{U8}40 Battle Qi {U}5 Stamina<CRLF>"
"Martial Skill: Instant{U8}Cool-down 4 sec<CRLF><CRLF>"
"Unleashes Battle Qi in a swift attack, fierce and fast like a blade that cleaves the moon.<CRLF>"
"May Cleave the enemy.<CRLF>"
"Deals 200%% base damage.<CRLF><CRLF>"
"^c3dbffNote: Recommended farming skill, as a Battle Qi release skill.")

T[47] = ("^c3dbffMooncleave Slash · Power<CRLF>^ffffffNeeds at least 5 points invested in Strength Mastery.<CRLF><CRLF>"
"^ffffffIncreases the damage dealt by Mooncleave Slash.")

T[48] = ("^c3dbffMooncleave Slash · Technique<CRLF>^ffffffNeeds at least 5 points invested in Technique Mastery.<CRLF><CRLF>"
"^ffffffIncreases the chance of Cleave from Mooncleave Slash. At 3 full stacks there is a 20%% chance to deal<CRLF>"
"a Heavy Wound effect, with the Cleave effect lasting up to 45 seconds.")

T[49] = ("^c3dbffMooncleave Slash · Pursuit<CRLF>^ffffffNeeds at least 3 points invested in Mooncleave Slash · Technique.<CRLF><CRLF>"
"^ffffffMooncleave Slash recovers 15 Battle Qi when used after Full-Moon Slash,<CRLF>"
"and hitting targets knocked down by Full-Moon Slash deals extra damage.")

T[50] = ("^c3dbffSinew Sever^ffffff<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 1<CRLF>"
"Requirement: Melee<CRLF>"
"Basic Move<CRLF><CRLF>"
"Quickly attacks the enemy with swift, forceful strikes.<CRLF>"
"Deals 100%% base damage.")

T[51] = ("^c3dbffSinew Sever · Fierce<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Melee<CRLF><CRLF>"
"^ffffffSinew Sever has a chance to raise your own Attack Power,<CRLF>"
"lasting 10 seconds.")

T[52] = ("^c3dbffSinew Sever · Assault<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Melee<CRLF><CRLF>"
"^ffffffIncreases the damage dealt by Sinew Sever.")

T[53] = ("^c3dbffUnhorse Slash<CRLF><CRLF>"
"^ffffffWeapon: Saber, Halberd, Axe<CRLF>"
"^ffffffCost: 5 Stamina 30 Battle Qi<CRLF>"
"^ffffffCool-down: 30 sec<CRLF>"
"^ffffffRiding: Instant<CRLF><CRLF>"
"^ffffffDismount with the momentum and swing forward in a sweeping arc,<CRLF>"
"dealing heavy damage to targets in the path.<CRLF>"
"High chance to knock targets off their horses and apply an Unhorse effect.<CRLF>"
"The skill also deals Ignore-Defense damage to enemies,<CRLF>"
"up to 5 times the target's Max Attack Power.<CRLF>"
"Each Formation Charge stack increases Ignore-Defense damage by 10%%.<CRLF><CRLF>"
"^99ccffUltimate Mastery; only one can be learned.<CRLF>"
"^99ccffOnly usable while mounted in combat.<CRLF>"
"Using the skill automatically dismounts you.")

T[54] = ("^c3dbffSoulsever Thrust<CRLF><CRLF>"
"^ffffffWeapon: Trident{U9}15 Battle Qi<CRLF>"
"Martial Skill: Instant{U8} Cool-down 4 sec<CRLF><CRLF>"
"Releases the Battle Qi gathered in your body,<CRLF>"
"swinging your weapon like a phantom to stab the enemies ahead twice with savage force.<CRLF>"
"The first hit deals 190%% base damage and applies a Pierce effect.<CRLF>"
"The second hit deals a small amount of Ignore-Defense damage;<CRLF>"
"the fuller your Stamina, the greater the second hit's damage.<CRLF><CRLF>"
"^c3dbffNote: Recommended farming skill, as a Battle Qi release skill.")

T[55] = ("^c3dbffSoulsever Thrust · Power<CRLF><CRLF>^ffffffRaises the Ignore-Defense damage Soulsever Thrust deals to enemies.")

T[56] = ("^c3dbffSoulsever Thrust · Shadow<CRLF><CRLF>^ffffffUsing Soulsever Thrust has a chance to cancel the enemy's Block state,<CRLF>"
"and applies a 2-second Move Break effect.")

T[57] = ("^c3dbffSoulsever Whip<CRLF><CRLF>"
"^ffffffWeapon: Whip{U9}15 Battle Qi {U}5 Stamina<CRLF>"
"Move: Instant{U7}           Cool-down 12 sec<CRLF><CRLF>"
"A combo move, used after Stone-Shattering Whip.<CRLF>"
"Whip out forcefully with your right hand,<CRLF>"
"attacking up to 3 enemies in front, Silencing them for 2 seconds and<CRLF>"
"dealing 90%% base damage.<CRLF><CRLF>"
"^c3dbffNote: Used in the Grace state, it combos into Mist Shadow Whip;<CRLF>"
"^c3dbffUsed in the Heavenly Fragrance state, it combos into Bewitching Shadow Whip.")

T[58] = ("^c3dbffSoulsever Whip<CRLF><CRLF>"
"^ffffffWeapon: Whip{U11}15 Battle Qi<CRLF>"
"Move: Instant{U8}Cool-down 15 sec<CRLF><CRLF>"
"Rapidly strikes the enemy with the whip, dealing 70%% base damage.")

T[59] = ("^c3dbffSoulsever Whip · Shadow<CRLF>^ffffffNeeds at least 15 points invested in Shadow Mastery.<CRLF><CRLF>"
"^ffffffUsing Soulsever Whip has a 40%% chance to put the target in the Demoralize state,<CRLF>"
"continuously draining Battle Qi for 3 seconds.")

T[60] = ("^c3dbffNew Year's Greeting<CRLF><CRLF>"
"^ffffffDance this dance and fireworks burst forth in dazzling, unnameable splendor.")

T[61] = ("^c3dbffStillpoint Power<CRLF><CRLF>"
"^ffffffDivine Might Wild Dance grants extra Battle Qi when it hits a target.<CRLF><CRLF>"
"^99ccffPower Strike Mastery; only one can be learned.")

T[62] = ("^c3dbffSpinning Dart<CRLF><CRLF>"
"^ffffffWeapon: Trident<CRLF>"
"^ffffffCost: 10 Stamina<CRLF>"
"^ffffffCool-down: 10 sec<CRLF>"
"^ffffffRiding: Instant<CRLF><CRLF>"
"^ffffffHurl a volley of darts forward with the momentum,<CRLF>"
"damaging multiple enemies in the fan-shaped area 3 meters ahead,<CRLF>"
"randomly applying Immobilize or Slow.<CRLF><CRLF>"
"^99ccffFatal Attack Mastery; only one can be learned.<CRLF>"
"^99ccffOnly usable while mounted in combat.<CRLF>"
"Only usable within 3 seconds after Aerial Thrust.")

T[63] = ("^c3dbffWhirlwind Form<CRLF><CRLF>"
"^ffffffWeapon: Ring Blade{U7}15 Stamina 10 Battle Qi{U4}<CRLF>"
"Move: Instant{U7}Cool-down 6 sec<CRLF><CRLF>"
"Lock both ring blades together and spin at great speed.<CRLF>"
"Attacks surrounding enemies multiple times with fierce, forceful moves.<CRLF>"
"Each hit consumes an extra 5 Battle Qi and deals 41%% base damage.<CRLF>"
"If this skill is used more than 3 times within 20 seconds,<CRLF>"
"the extra Battle Qi consumed per hit increases by (consecutive uses - 3).")

T[64] = ("^c3dbffWhirlwind Form<CRLF><CRLF>"
"^ffffffWeapon: Ring Blade{U7}15 Stamina 25 Battle Qi{U4}<CRLF>"
"Move: Cast While Moving{U7}Cool-down 6 sec<CRLF><CRLF>"
"Grip the ring blades in both hands and spin at great speed.<CRLF>"
"Attacks enemies within 6 meters multiple times,<CRLF>"
"each hit dealing 41%% base damage.<CRLF>"
"Hit enemies are Slowed by 1 m/sec.<CRLF><CRLF>"
"^c3dbffNote: A Break-type skill; only usable under Break Legion technique.")

T[65] = ("^c3dbffWhirlwind Form<CRLF><CRLF>"
"^ffffffWeapon: Iron Mace{U8}25 Battle Qi<CRLF>"
"Martial Skill: Instant{U8}Cool-down 15 sec<CRLF><CRLF>"
"Releases Battle Qi to attack up to 3 enemies in the fan-shaped area ahead,<CRLF>"
"dealing 65%% base damage,<CRLF>"
"Slowing them by 2 m/sec for 8 seconds,<CRLF>"
"and increasing your own Max HP by 5%% for 8 seconds.")

T[66] = ("^c3dbffWhirlwind Form · Collapse<CRLF>^ffffffNeeds at least 15 points invested in Break Mastery.<CRLF><CRLF>"
"^ffffffUsing Whirlwind Form has a chance to put the target<CRLF>"
"in the Collapse state, lowering Defense.<CRLF>"
"In the Collapse state, after taking 5 hits the target<CRLF>"
"enters Severe Collapse, lasting 3 seconds.")

T[67] = ("^c3dbffWhirlwind Form · Enhance<CRLF>^ffffffNeeds at least 20 points invested in Strength Mastery.<CRLF><CRLF>"
"^ffffffIncreases the Max HP percentage bonus from Whirlwind Form")

T[68] = ("^c3dbffWhirlwind Form · Burst<CRLF>^ffffffNeeds at least 20 points invested in Technique Mastery.<CRLF><CRLF>"
"^ffffffRaises the Crit Rate check when Whirlwind Form attacks")

T[69] = ("^c3dbffWhirlwind Form · Break<CRLF>^ffffffNeeds at least 15 points invested in Break Mastery.<CRLF><CRLF>"
"^ffffffRaises the base multiplier of Whirlwind Form.")

T[70] = ("^c3dbffWhirlwind Sweep<CRLF><CRLF>"
"^ffffffWeapon: Ring Blade, Whip<CRLF>"
"^ffffffCost: 5 Stamina 30 Battle Qi<CRLF>"
"^ffffffCool-down: 30 sec<CRLF>"
"^ffffffRiding: Instant<CRLF><CRLF>"
"^ffffffDismount with the momentum and sweep the surrounding targets,<CRLF>"
"dealing heavy damage to enemies while pulling them to your side.<CRLF>"
"High chance to knock targets off their horses and apply an Unhorse effect.<CRLF>"
"The skill also deals Ignore-Defense damage to enemies,<CRLF>"
"up to 5 times the target's Max Attack Power.<CRLF>"
"Each Formation Charge stack increases Ignore-Defense damage by 10%%.<CRLF><CRLF>"
"^99ccffUltimate Mastery; only one can be learned.<CRLF>"
"^99ccffOnly usable while mounted in combat.<CRLF>"
"Using the skill automatically dismounts you.")

T[71] = ("^c3dbffWhirlwind Axe<CRLF><CRLF>"
"^ffffffWeapon: Axe{U8}25 Battle Qi {U}5 Stamina<CRLF>"
"Martial Skill: Instant{U8}Cool-down 4 sec<CRLF><CRLF>"
"Leap up, tuck into a roll, and cleave the enemy with savage force,<CRLF>"
"using your body's weight to power the move.<CRLF>"
"Deals heavy damage and may Cleave the enemy.<CRLF>"
"If a Cleave effect is dealt, you gain a Chain Cleave stack.<CRLF>"
"Deals 150%% base damage.<CRLF>"
"With 3 Chain Cleave stacks, Whirlwind Axe<CRLF>"
"Stuns the enemy for 2 seconds.<CRLF><CRLF>"
"^c3dbffNote: Recommended farming skill, as a Battle Qi release skill.")

T[72] = ("^c3dbffWhirlwind Axe · Power<CRLF>^ffffffNeeds at least 5 points invested in Strength Mastery.<CRLF><CRLF>"
"^ffffffIncreases the damage dealt by Whirlwind Axe.")

T[73] = ("^c3dbffWhirlwind Axe · Technique<CRLF>^ffffffNeeds at least 5 points invested in Technique Mastery.<CRLF><CRLF>"
"^ffffffIncreases the chance of Cleave from Whirlwind Axe. At 5 full stacks there is a 20%% chance to deal<CRLF>"
"a Heavy Wound effect, with the Cleave effect lasting up to 45 seconds.")

T[74] = ("^c3dbffWhirlwind Mace<CRLF><CRLF>"
"^ffffffWeapon: Iron Mace<CRLF>"
"^ffffffCost: 10 Stamina<CRLF>"
"^ffffffCool-down: 10 sec<CRLF>"
"^ffffffRiding: Instant<CRLF><CRLF>"
"^ffffffHurl both iron maces forward with the momentum,<CRLF>"
"damaging multiple enemies within 10 meters ahead.<CRLF>"
"Hit targets suffer greatly reduced mount and movement speed.<CRLF><CRLF>"
"^99ccffFatal Attack Mastery; only one can be learned.<CRLF>"
"^99ccffOnly usable while mounted in combat.<CRLF>"
"Only usable within 3 seconds after Chaos Shadow Strike.")

T[75] = ("^c3dbffWhirlwind Hammer<CRLF><CRLF>"
"^ffffffWeapon: Hammer{U5}  25 Battle Qi 5 Stamina<CRLF>"
"Martial Skill: Instant    {U5} Cool-down 15 sec<CRLF><CRLF>"
"Whirl both hammers and sweep like a cyclone through enemies within 5 meters.<CRLF>"
"Deals 40%% base damage to up to 3 targets,<CRLF>"
"and attacks directly Stun enemies for 2 seconds.<CRLF><CRLF>"
"^c3dbffNote: This skill does not require a target.")

T[76] = ("^c3dbffWhirlwind Hammer · Sweep<CRLF>^ffffffNeeds at least 10 points invested in Dance Mastery.<CRLF><CRLF>"
"^ffffffIncreases the maximum hit count of the Move Whirlwind Hammer.")

T[77] = ("^c3dbffPeerless<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: Hero Lv. 50<CRLF>"
"^ffffffRegion Requirement: Bingzhou<CRLF><CRLF>"
"The greatest warrior of the Three Kingdoms, peerless under heaven;<CRLF>"
"when attacked there is a chance to gain the Peerless state,<CRLF>"
"raising Crit by 15 and Crit Damage by 10%%,<CRLF>"
"lasting 4 seconds.<CRLF><CRLF>"
"^99ccffOrigin: Lü Bu.<CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[78] = ("^c3dbffPeerless War Halberd<CRLF><CRLF>"
"^ffffffWield the war halberd to shake the four directions, chilling enemies with awe, truly peerless.")

T[79] = ("^c3dbffNameless Fire<CRLF>^ffffffNeeds at least 59 points invested in Spell Mastery.<CRLF><CRLF>"
"^ffffffWeapon: Staff{U9}15 Stamina<CRLF>"
"Martial Skill: Duration 1 sec{U5}Cool-down 30 sec<CRLF><CRLF>"
"Deals 100%% base damage to the enemy.<CRLF>"
"If the target is Burning, it takes extra damage and<CRLF>"
"is Silenced, unable to attack for a short time.<CRLF>"
"Hitting grants 10 Battle Qi.")

T[80] = ("^c3dbffWu Dang<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: Hero Lv. 50<CRLF>"
"^ffffffRegion Requirement: Yizhou<CRLF><CRLF>"
"Formed by the peoples of southern Zhong, one of Shu Han's three elite forces.<CRLF>"
"Using mounted-combat Wild Dance skills has a 5%% chance to put the target in the Wu Dang state,<CRLF>"
"lowering Attack Power and Hit; stacks up to 3.<CRLF><CRLF>"
"^99ccffOrigin: Wu Dang Flying Army.<CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[81] = ("^c3dbffLimitless<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: 40<CRLF><CRLF>"
"A blessing from your ancestral homeland;<CRLF>"
"Dodge is increased.<CRLF><CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[82] = ("^c3dbffFearless^ffffff<CRLF><CRLF>"
"Weapon: Halberd{U8}20 Stamina<CRLF>"
"Move: Instant{U7}Cool-down 1 min<CRLF><CRLF>"
"With a shout among the enemy ranks, the long halberd grows ever braver in battle,<CRLF>"
"echoing the godlike courage of the Three Kingdoms' God of War Lü Bu, a match for a hundred.<CRLF>"
"Grants you the Fearless effect;<CRLF>"
"when attacked, there is a chance to dispel your own Slow effect.<CRLF>"
"After level 15, there is also a chance to dispel your own Immobilize effect.<CRLF>"
"The Fearless effect lasts 10 seconds.")

T[83] = ("^c3dbffFearless · Valor<CRLF>^ffffffNeeds at least 20 points invested in Strength Mastery.<CRLF><CRLF>"
"While the Fearless state is active, being attacked has a chance to dispel Stun.")

T[84] = ("^c3dbffEndless Battle Will<CRLF>^ffffffNeeds at least 25 points invested in Strength Mastery.<CRLF><CRLF>"
"While the Steady effect is active,<CRLF>"
"Stamina recovery speed increases after entering combat.")

T[85] = ("^c3dbffHigh Spirits<CRLF><CRLF>"
"^ffffffWeapon: Axe{U11}20 Stamina<CRLF>"
"Tactics: Instant{U8}Cool-down 10 sec<CRLF><CRLF>"
"Consumes Stamina so that, for a time, you<CRLF>"
"no longer lose Battle Qi from leaving combat,<CRLF>"
"while also increasing Max Battle Qi.<CRLF>"
"The state lasts 10 minutes.<CRLF><CRLF>"
"^c3dbffNote: Recommended for self-buffing.")

T[86] = ("^c3dbffWisdom King's Protection<CRLF>^ffffffNeeds at least 25 points invested in Shadow Mastery.<CRLF><CRLF>"
"^ffffffWeapon: Trident{U10}10 Stamina<CRLF>"
"Tactics: Instant{U9} Cool-down: 2 min<CRLF><CRLF>"
"Steady your resolve to gain the Wisdom King state,<CRLF>"
"greatly boosting your combat survivability in a short time.<CRLF>"
"In the Wisdom King state, each instance of damage taken grants a 5-second Focus effect,<CRLF>"
"greatly increasing HP recovery speed.<CRLF>"
"The Focus effect stacks, up to 99 stacks.")

T[87] = ("^c3dbffWisdom King's Protection · Clear Wind<CRLF>^ffffffNeeds at least 3 points invested in the Wisdom King's Protection Mastery.<CRLF><CRLF>"
"^ffffffThe Focus effect from Wisdom King's Protection is greatly increased.<CRLF>"
"Also, when activating Wisdom King's Protection, Crit Damage taken can be reduced<CRLF>"
"for 5 seconds.")

T[88] = ("^c3dbffBright Mirror, Still Water^ffffff<CRLF><CRLF>"
"Skill grade: 5<CRLF>"
"Requirement: None<CRLF>"
"Support Move<CRLF>"
"Cool-down: 5 min<CRLF><CRLF>"
"With a mind like a bright mirror, you see through the enemy's moves with ease,<CRLF>"
"boosting your Dodge for 30 seconds.")

T[89] = ("^c3dbffStarfall^ffffff<CRLF>"
"             Cool-down: 60 sec<CRLF><CRLF>"
"^a800ffDeals damage equal to 10%% of Max HP to all enemies<CRLF>within an 8-meter radius centered on the target.")

T[90] = ("^c3dbffStar-Rending Stone^ffffff<CRLF><CRLF>"
"Skill category: Focus<CRLF>"
"Skill grade: 3<CRLF>"
"Requirement: Ranged<CRLF>"
"High-Grade Move<CRLF><CRLF>"
"Channel all your strength into a single mighty blow.<CRLF>"
"Deals 271%% base damage.")

T[91] = ("^c3dbffStar-Rending Stone · Judgment<CRLF><CRLF>"
"Skill category: Focus<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Ranged<CRLF><CRLF>"
"^ffffffStar-Rending Stone has a chance to put the target in the Judgment state.<CRLF>"
"In the Judgment state, each time the target is attacked its indirect Resistance drops by 2,<CRLF>"
"stacking up to 5 times, for 10 seconds.")

T[92] = ("^c3dbffStar-Rending Stone · Assault<CRLF><CRLF>"
"Skill category: Focus<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Ranged<CRLF><CRLF>"
"^ffffffIncreases the damage dealt by Star-Rending Stone.")

T[93] = ("^c3dbffSpring Warbler's Song<CRLF><CRLF>"
"^ffffffDance this dance and warblers sing beside you, parting flowers and brushing willows as spring returns to the land.")

T[94] = ("^c3dbffCrystal Cone^ffffff<CRLF><CRLF>"
"Skill category: Wisdom<CRLF>"
"Skill grade: 1<CRLF>"
"Requirement: Melee<CRLF>"
"Basic Move<CRLF><CRLF>"
"Quickly attacks the enemy with swift, forceful strikes.<CRLF>"
"Deals 127%% base damage.")

T[95] = ("^c3dbffCrystal Cone · Assault<CRLF><CRLF>"
"Skill category: Wisdom<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Melee<CRLF><CRLF>"
"^ffffffIncreases the damage dealt by Crystal Cone.")

T[96] = ("^c3dbffCrystal Cone · Spirit Gather<CRLF><CRLF>"
"Skill category: Wisdom<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Melee<CRLF><CRLF>"
"^ffffffCrystal Cone has a chance to enter the Spirit Gather state; each attack restores your HP,<CRLF>"
"with the amount scaling with your Stratagem value, lasting 10 seconds")

T[97] = ("^c3dbffIntelligence<CRLF><CRLF>"
"^ffffffIncreases your Wisdom and overall command and combat capability.<CRLF>"
"After reaching a certain point threshold, the corresponding Aptitude effect activates;<CRLF>"
"the Aptitude effect will not exceed its cap level.<CRLF>"
"^c3dbffRequires maxed Riding Mastery to learn.<CRLF><CRLF>"
"^ffcc00Value: ^00ff80%d^ffffff(%s)^ffcc00")

T[98] = ("^c3dbffWisdom · Focus<CRLF><CRLF>"
"Skill category: Wisdom<CRLF>"
"Skill grade: 5<CRLF>"
"Requirement: None<CRLF><CRLF>"
"^ffffffGives Wisdom-type Single-Target damage skills an extra Crit bonus,<CRLF>"
"with the bonus coefficient scaling with the Guard's Wisdom coefficient.")

T[99] = ("^c3dbffWisdom · Valor<CRLF><CRLF>"
"Skill category: Wisdom<CRLF>"
"Skill grade: 5<CRLF>"
"Requirement: None<CRLF><CRLF>"
"^ffffffApplies the Guard's Wisdom coefficient bonus to the base multiplier of Wisdom-type Single-Target damage skills.")

T[100] = ("^c3dbffWisdom · Sharp Feather<CRLF><CRLF>"
"Skill category: Wisdom<CRLF>"
"Skill grade: 5<CRLF>"
"Requirement: None<CRLF><CRLF>"
"^ffffffRaises the chance of Wisdom-type Single-Target damage skills inflicting Debuff states,<CRLF>"
"with the bonus scaling with the Guard's Wisdom coefficient.")

T[101] = ("^c3dbffShadow Strike<CRLF><CRLF>"
"^ffffffWeapon: Claws{U11}20 Stamina<CRLF>"
"Martial Skill:0.5 sec wind-up{U8}Cool-down 4 sec<CRLF><CRLF>"
"Before combat, mark the enemy with a hidden weapon to set up follow-up attacks.<CRLF>"
"Generates 10 Battle Qi. Only usable outside combat; Stuns enemies not yet in combat for 3 seconds.<CRLF>"
"Attacking again during the stun wakes the enemy.<CRLF>"
"Using this Move stops your auto-attack.<CRLF><CRLF>"
"^c3dbffNote: Recommended farming skill, as an opener.")

T[102] = ("^c3dbffShadow Strike · Ambush<CRLF>^ffffffNeeds at least 20 points invested in Technique Mastery.<CRLF><CRLF>"
"^ffffffWeapon: Claws{U8}15 Stamina<CRLF>"
"Martial Skill:0.5 sec wind-up{U8}Cool-down 15 sec<CRLF><CRLF>"
"While hidden, ambush the enemy with a hidden weapon to seize the initiative.<CRLF>"
"Stuns the enemy for several seconds; during the stun it cannot move or attack.<CRLF>"
"Attacking again wakes the enemy from the stun.<CRLF>"
"Must be used while hidden; only affects enemies not yet in combat.<CRLF>"
"Using this Move does not reveal you from Stealth.")

T[103] = ("^c3dbffShadow Strike · Backstrike<CRLF><CRLF>^ffffffAfter Shadow Strike there is a chance to trigger the Backstrike effect. This Mastery also affects Shadow Strike · Ambush.")

T[104] = ("^c3dbffRoar Splits the Peak<CRLF>"
"^ffffffType: Passive<CRLF><CRLF>"
"A battle fury ignites in your heart; when attacked there is a chance to gain the Unyielding Peak state,<CRLF>"
"granting Immunity to Immobilize for 2 seconds. Triggers at most once every 10 seconds.")

T[105] = ("^c3dbffFierce<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: 60<CRLF><CRLF>"
"A blessing from your ancestral homeland;<CRLF>"
"Crit is increased.<CRLF><CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[106] = ("^c3dbffTyranny<CRLF><CRLF>"
"^ffffffType: Passive<CRLF>"
"^ffffffRequired Level: Hero Lv. 50<CRLF>"
"^ffffffRegion Requirement: Liangzhou<CRLF><CRLF>"
"The Xiliang warlord, ruthless and savage, brutal and merciless.<CRLF>"
"When attacked there is a 5%% chance to gain the Tyranny state;<CRLF>"
"each attack reduces your own HP by a set amount,<CRLF>"
"and Crit is raised for 4 seconds.<CRLF><CRLF>"
"^99ccffOrigin: Dong Zhuo.<CRLF>"
"^99ccffRequires the corresponding Skill Book to learn.")

T[107] = ("^c3dbffSudden Assault^ffffff<CRLF><CRLF>"
"Skill category: Passion<CRLF>"
"Skill grade: 5<CRLF>"
"Requirement: Melee<CRLF>"
"High-Grade Move<CRLF><CRLF>"
"Channel all your strength into a single mighty blow.<CRLF>"
"Deals 376%% base damage.<CRLF>"
"And has a chance to lower the target's Crit Resistance and raise your own Crit Rate,<CRLF>"
"lasting 10 seconds.")

T[108] = ("^c3dbffRainstorm Pear Blossom<CRLF><CRLF>"
"^ffffffWeapon: Spear{U11}20 Battle Qi 15 Stamina activation<CRLF>"
"Mastery: Instant{U11}Cool-down 8 sec<CRLF><CRLF>"
"Once a spear technique that shook the martial world, now widely used by<CRLF>"
"generals on the battlefield. Grip the spear's butt and rapidly thrust at several enemies ahead.<CRLF>"
"Ten hits; each hit randomly deals 1%%–200%% base damage,<CRLF>"
"each consuming 3 Stamina and striking 3 enemies ahead.<CRLF>"
"May Pierce enemies.")

T[109] = ("^c3dbffRainstorm Pear Blossom · Wild Thrust<CRLF>^ffffffNeeds at least 5 points invested in Enhanced Rainstorm Pear Blossom.<CRLF><CRLF>"
"^ffffffCrit is increased while using Rainstorm Pear Blossom.")

T[110] = ("^c3dbffMoonshadow Strike^ffffff<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 2<CRLF>"
"Requirement: Melee<CRLF>"
"Advanced Move<CRLF><CRLF>"
"Attacks the enemy in two stages with fierce, forceful moves.<CRLF>"
"The first hit deals 180%% base damage,<CRLF>"
"the second hit deals 80%% base damage.")

T[111] = ("^c3dbffMoonshadow Strike · Assault<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Melee<CRLF><CRLF>"
"^ffffffIncreases the damage dealt by Moonshadow Strike.")

T[112] = ("^c3dbffMoonshadow Strike · Flying General<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Melee<CRLF><CRLF>"
"^ffffffMoonshadow Strike has a chance to deal Ignore-Defense damage,<CRLF>equal to 30%% of the Guard's Attack Power.")

T[113] = ("^c3dbffMoon Slash Form<CRLF>^ffffffNeeds at least 2 points invested in Single-Mind Saber Guard.<CRLF><CRLF>"
"^ffffffHitting a target knocked down by Full-Moon Slash with Half-Moon Slash<CRLF>"
"intimidates it and lowers its Battle Qi;<CRLF>"
"hitting a target struck by Mooncleave Slash with Half-Moon Slash<CRLF>"
"has a chance to Stun it.")

T[114] = ("^c3dbffDawn Parting<CRLF><CRLF>"
"^ffffffUsing a Wild Dance attack within 3 seconds after Fierce Assault<CRLF>"
"Confuses enemies.<CRLF><CRLF>"
"^99ccffPower Strike Mastery; only one can be learned.")

T[115] = ("^c3dbffWooden Ox and Flowing Horse^ffffff                                        ^ffcc00Level %d^ffffff<CRLF><CRLF>"
"Tactics: Instant                 Cool-down: 120 sec<CRLF><CRLF>"
"Soul Skill type: Blessing<CRLF>"
"Summon the hero soul fused into your body to cast the Wooden Ox or Flowing Horse state on yourself.<CRLF>"
"The effect lasts at least 40 seconds.<CRLF><CRLF>"
"^ffcc00Soul Skill effects:^ffffff<CRLF>"
"1. Normal cast:<CRLF>"
"When your HP is above 50%%, gain the Flowing Horse state;<CRLF>"
"in-combat Stamina recovery speed increases by %.1f points;<CRLF>"
"When your HP is below 50%%, gain the Wooden Ox state;<CRLF>"
"Defense increases by %d points.<CRLF><CRLF>"
"2. Awakened cast:<CRLF>"
"Flowing Horse state effect is enhanced; each time you are hit or land a hit there is an extra %d%%<CRLF>"
"chance to recover 5 Battle Qi;<CRLF>"
"Wooden Ox state effect is enhanced, additionally raising Crit Resistance by %d.")

T[116] = ("^c3dbffVermilion Bird Strike^ffffff<CRLF><CRLF>"
"Skill category: Passion<CRLF>"
"Skill grade: 1<CRLF>"
"Requirement: Melee<CRLF>"
"Basic Move<CRLF><CRLF>"
"Quickly attacks, dealing 52%% base damage to 3 enemies<CRLF>"
"in the straight line ahead.")

T[117] = ("^c3dbffVermilion Bird Blaze<CRLF><CRLF>"
"^ffffffSpecial Skill: Instant{U5}Cool-down 10 min<CRLF><CRLF>"
"^ffffffSummons a blazing fireball to attack the farthest target within 15 meters,<CRLF>"
"dealing 500 damage to it.<CRLF>"
"After Hero level, damage increases by 15%% per level.")

T[118] = ("^c3dbffStaff Intent<CRLF><CRLF>"
"^ffffffType: Passive<CRLF><CRLF>"
"An ability grasped after fully mastering the subtlety of the staff;<CRLF>"
"even without wielding a staff, you can unleash the staff's ultimate intent.")

T[119] = ("^c3dbffExtreme Cold Arrow<CRLF><CRLF>"
"^ffffffWeapon: Bow, Crossbow<CRLF>"
"^ffffffCost: 5 Stamina 30 Battle Qi<CRLF>"
"^ffffffRiding: Instant Attack{U4} Cool-down 15 sec<CRLF><CRLF>"
"^ffffffFires an arrow imbued with icy cold qi,<CRLF>"
"dealing 150%% base damage to the target.<CRLF>"
"^99ccffOnly usable while mounted in combat.")

T[120] = ("^c3dbffExtreme Cold Arrow<CRLF><CRLF>"
"^ffffffWeapon: Bow, Crossbow<CRLF>"
"^ffffffCost: 5 Stamina 30 Battle Qi<CRLF>"
"^ffffffRiding: Instant Attack{U4} Cool-down 18 sec<CRLF><CRLF>"
"^ffffffFires an arrow imbued with icy cold qi.<CRLF>"
"Hit targets are Slowed by 2 m/sec,<CRLF>"
"with mount speed reduced by 2.5 m/sec, for 6 seconds.<CRLF>"
"Hitting the target recovers 10 Battle Qi.<CRLF>"
"^99ccffOnly usable while mounted in combat.")

T[121] = ("^c3dbffSpear Thrust<CRLF><CRLF>"
"^ffffffWeapon: Spear<CRLF>"
"^ffffffCost: 10 Stamina<CRLF>"
"^ffffffCool-down: 10 sec<CRLF>"
"^ffffffRiding: Instant<CRLF><CRLF>"
"^ffffffRaise the weapon high and thrust down violently, dealing heavy damage.<CRLF>"
"Applies a Bone-Pierce effect to enemies on foot:<CRLF>"
"Movement Speed reduced by 1 m/sec, damage taken increased by 10%%.<CRLF><CRLF>"
"^99ccffFatal Attack Mastery; only one can be learned.<CRLF>"
"^99ccffOnly usable while mounted in combat.<CRLF>"
"Only usable within 3 seconds after Aerial Thrust.")

T[122] = ("^c3dbffSpear Soul<CRLF><CRLF>"
"^ffffffType: Passive<CRLF><CRLF>"
"An ability grasped after fully mastering the subtlety of the spear;<CRLF>"
"even without wielding a spear, you can unleash the spear's ultimate intent.")

T[123] = ("^c3dbffDaring Hero^ffffff                                        ^ffcc00Level %d^ffffff<CRLF><CRLF>"
"Tactics: Instant                 Cool-down: 2 min<CRLF><CRLF>"
"Soul Skill type: Blessing<CRLF>"
"Summon the hero soul fused into your body to strengthen your attributes,<CRLF>"
"greatly raising Attack Power and Max HP.<CRLF>"
"After use you enter the Daring Hero state;<CRLF>"
"when hit, there is a %d%% chance to gain the Deception state,<CRLF>"
"reflecting 80%% of the damage you take for 8 seconds.<CRLF>"
"The Deception state ends after taking 5 hits,<CRLF>"
"and triggers at most once every %d seconds.<CRLF><CRLF>"
"^99ccffOnly active while Awakened")

T[124] = ("^c3dbffSpring Rebirth^ffffff<CRLF><CRLF>"
"Skill grade: 5<CRLF>"
"Requirement: None<CRLF>"
"Support Move<CRLF>"
"Cool-down: 2 min<CRLF><CRLF>"
"Renews vitality and vigor like dead wood coming to life in spring,<CRLF>"
"raising your master's healing effect for 30 seconds.")

T[125] = ("^c3dbffBranch Beyond the Willows<CRLF><CRLF>"
"^ffffffAerial Thrust and Chaos Shadow Strike deal extra Ignore-Defense damage<CRLF>"
"to enemies not on horseback.<CRLF><CRLF>"
"^99ccffFatal Attack Mastery; only one can be learned.")

T[126] = ("^c3dbffWillow Mist Dance<CRLF><CRLF>"
"^ffffffThe Princess is lost in a blessed match; mountains and rivers fill her cup, and half the realm does not crease her brow.")

T[127] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Saber{U11}10 Stamina<CRLF>"
"Move: Instant<CRLF><CRLF>"
"Hold the great saber high to fend off 5 enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[128] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Sword{U11}10 Stamina<CRLF>"
"Move: Instant<CRLF><CRLF>"
"Hold the long sword high to block multiple enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[129] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Axe{U11}10 Stamina<CRLF>"
"Move: Instant<CRLF><CRLF>"
"Hold both axes high to block multiple enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[130] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Spear{U11}10 Stamina<CRLF>"
"Martial Skill: Instant<CRLF><CRLF>"
"Hold the long spear high to fend off 5 enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[131] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Staff{U11}10 Stamina<CRLF>"
"Martial Skill: Instant<CRLF><CRLF>"
"Hold the long staff high to fend off multiple enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[132] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Battleaxe{U11}10 Stamina<CRLF>"
"Martial Skill: Instant<CRLF><CRLF>"
"Hold your weapon high to fend off multiple enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.<CRLF>"
"Gain Battle Qi when hit.")

T[133] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Iron Mace{U11}10 Stamina<CRLF>"
"Move: Instant<CRLF><CRLF>"
"Block multiple enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[134] = ("^c3dbffBlock<CRLF><CRLF>"
"^ffffffWeapon: Hammer{U11}10 Stamina<CRLF>"
"Martial Skill: Instant<CRLF><CRLF>"
"Hold both hammers high to block multiple enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[135] = ("^c3dbffBlock^ffffff<CRLF><CRLF>"
"Weapon: Halberd{U11}10 Stamina<CRLF>"
"Martial Skill: Instant<CRLF><CRLF>"
"Hold the long halberd high to fend off 5 enemy attacks.<CRLF>"
"Blocking negates damage and resists the Stun and<CRLF>"
"restricting effects some enemy attacks bring.")

T[136] = ("^c3dbffBlock · Opportunity<CRLF>^ffffffNeeds at least 15 points invested in Dance Mastery.<CRLF><CRLF>"
"^ffffffBeing attacked while Blocking accumulates Tactic points.")

T[137] = ("^c3dbffPeach Blossom Handkerchief^ffffff<CRLF>"
"             Cool-down: 3 sec<CRLF><CRLF>"
"^a800ffUse on a player of the opposite sex to throw your Peach Blossom Handkerchief to them.<CRLF>"
"If they also have a Peach Blossom Handkerchief in their<CRLF>"
"inventory, they will receive a generous reward. If a male player<CRLF>"
"throws their Peach Blossom Handkerchief to you, you will receive a generous reward.")

T[138] = ("^c3dbffPlum Blossom Handkerchief^ffffff<CRLF>"
"             Cool-down: 3 sec<CRLF><CRLF>"
"^a800ffUse on a player of the opposite sex to throw your Plum Blossom Handkerchief to them.<CRLF>"
"If they also have a Plum Blossom Handkerchief in their<CRLF>"
"inventory, they will receive a generous reward. If a male player<CRLF>"
"throws their Plum Blossom Handkerchief to you, you will receive a generous reward.")

T[139] = ("^c3dbffPear Blossoms in Rain<CRLF>^ffffffNeeds at least 15 points invested in Technique Mastery.<CRLF><CRLF>"
"^ffffffSpeeds up each hit of Rainstorm Pear Blossom.<CRLF>"
"Using Rainstorm Pear Blossom while Combo is active may restore Battle Qi.")

T[140] = ("^c3dbffStaff Soul<CRLF><CRLF>"
"^ffffffType: Passive<CRLF><CRLF>"
"An ability grasped after fully mastering the subtlety of the staff;<CRLF>"
"even without wielding a staff, you can unleash the staff's ultimate intent.")

T[141] = ("^c3dbffStaff Soul<CRLF><CRLF>"
"^ffffffType: Passive<CRLF><CRLF>"
"An ability grasped after fully mastering the subtlety of the staff;<CRLF>"
"even without wielding a staff, you can unleash the staff's ultimate intent.")

T[142] = ("^c3dbffMyriad Phenomena^ffffff<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 3<CRLF>"
"Requirement: Ranged<CRLF>"
"High-Grade Move<CRLF><CRLF>"
"Channel all your strength into a single mighty blow.<CRLF>"
"Deals 245%% base damage.")

T[143] = ("^c3dbffMyriad Phenomena · Assault<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Ranged<CRLF><CRLF>"
"^ffffffIncreases the damage dealt by Myriad Phenomena.")

T[144] = ("^c3dbffMyriad Phenomena · Bloodbath<CRLF><CRLF>"
"Skill category: Valor<CRLF>"
"Skill grade: 4<CRLF>"
"Requirement: Ranged<CRLF><CRLF>"
"^ffffffMyriad Phenomena has a chance to enter the Bloodbath state;<CRLF>"
"each attack reduces your own HP by 50 and<CRLF>"
"raises Attack Power by 25. Stacks up to 10, lasting 15 seconds.")

T[145] = ("^c3dbffHorizontal Cleave<CRLF><CRLF>"
"^ffffffWeapon: Bladed Melee Weapons（Saber, Battleaxe, Axe, Hooksword, Ring Blade, Shield）<CRLF>"
"^ffffffCost: 5 Stamina<CRLF>"
"^ffffffRiding: Instant<CRLF><CRLF>"
"^ffffffAttacks enemies in front with average wind-up speed.<CRLF>"
"Grants the Iron Cavalry state, raising Horizontal Cleave damage by %d%%,<CRLF>"
"stacking up to 5, lasting 5 seconds. Hits generate 10 Battle Qi.<CRLF>"
"This Move dispels Wild Dance attacks, applies Silence for 3 seconds,<CRLF>"
"and applies a Counter stack.<CRLF><CRLF>"
"^ffcc00Effect^ffffff - When the character is in the Instant Kill or Heaven Break state,<CRLF>"
"a Break Strike can be delivered, interrupting enemy casting,<CRLF>"
"dealing Ignore-Defense damage equal to 125%% of Attack Power,<CRLF>"
"and applying a Cleave effect for 8 seconds.<CRLF><CRLF>"
"^99ccffOnly usable while mounted in combat.<CRLF>"
"At 3 Counter stacks, a Dismount effect triggers.")

# Expand U8/U9/U placeholders to actual ideographic-space counts
def expand(s):
    out = []
    i = 0
    while i < len(s):
        if s[i] == '{' and i + 1 < len(s) and s[i + 1] == 'U':
            j = i + 2
            num = ''
            while j < len(s) and s[j].isdigit():
                num += s[j]
                j += 1
            if j < len(s) and s[j] == '}':
                out.append(U * (int(num) if num else 1))
                i = j + 1
                continue
        out.append(s[i])
        i += 1
    return ''.join(out)

os.makedirs('/Users/zlns/personal-www/pck-translate/.work/tr2/out', exist_ok=True)

with open('/Users/zlns/personal-www/pck-translate/.work/tr2/in/batch_006.jsonl', encoding='utf-8') as f, \
     open('/Users/zlns/personal-www/pck-translate/.work/tr2/out/batch_006.jsonl', 'w', encoding='utf-8') as g:
    for line in f:
        line = line.strip()
        if not line:
            continue
        r = json.loads(line)
        if r['id'] not in T:
            raise SystemExit(f"missing translation for id {r['id']}")
        out = expand(T[r['id']])
        g.write(json.dumps({"id": r['id'], "english": out}, ensure_ascii=False) + "\n")

print("wrote", len(T), "translations")
