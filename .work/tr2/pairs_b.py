# -*- coding: utf-8 -*-
# Sentence-level pairs, records 22-70.
PAIRS_B = [
    # ---- R22 Swift Strike (Sword) ----
    ('快速击打敌人，招式迅捷有力。', 'Strike the enemy quickly with swift, powerful moves.'),
    ('打断敌人的出招动作，造成破招效果。', 'Interrupts the enemy’s action, causing Disrupt.'),
    ('有较小几率溅射目标，一定几率将敌人击落下马。', 'Slight chance to splash the target; chance to knock the enemy off horse.'),
    ('每个疾风点数为招式额外增加7%%基础伤害', 'Each Gale point adds 7%% Base Damage to the Move'),
    ('每个连击点数为招式额外增加3%%基础伤害', 'Each Combo point adds 3%% Base Damage to the Move'),
    # ---- R23 ----
    ('快速攻击敌人，动作迅捷有力。', 'Attack the enemy quickly with swift, powerful motions.'),
    # ---- R24/R25 ----
    ('速击的基础伤害提升。', 'Increases Swift Strike’s Base Damage.'),
    ('提升速击造成的伤害。', 'Increases the damage dealt by Swift Strike.'),
    # ---- R26 ----
    ('使用速击打断敌人出招时，增加破招效果时间。', 'Using Swift Strike to interrupt an enemy’s action extends the Disrupt duration.'),
    # ---- R27 ----
    ('溅射几率提升，持续时间加长。', 'Increases Splash chance and extends the duration.'),
    # ---- R28 ----
    ('速击有几率使敌人进入撕裂状态，', 'Swift Strike has a chance to place the enemy in a Rend state,'),
    ('持续流失生命，状态持续10秒。', 'draining HP continuously for 10 seconds.'),
    # ---- R29/R30 ----
    ('快速射出一箭，攻击前方远处的敌人，', 'Fire an arrow swiftly at a distant enemy ahead,'),
    ('对其造成80%%基础伤害。', 'dealing 80%% Base Damage.'),
    ('对其造成一定伤害，获得5点斗气。', 'dealing damage and generating 5 Battle Qi.'),
    # ---- R31-R33 ----
    ('战车所载巨弩快速向前方发出弩箭，', 'The chariot’s ballista fires bolts forward rapidly,'),
    ('对前方25米范围内目标造成100%%基础伤害。', 'dealing 100%% Base Damage to targets within 25m ahead.'),
    ('右键点击图标可激活或关闭自动释放技能。', 'Right-click the icon to toggle auto-cast.'),
    ('战车对人物只造成10%%伤害', 'Chariots deal only 10%% damage to players'),
    ('后羿对建筑造成20%%额外伤害', 'Houyi deals 20%% extra damage to structures'),
    ('战车对人物只造成50%%伤害', 'Chariots deal only 50%% damage to players'),
    ('战车对箭塔造成200%%伤害', 'Chariots deal 200%% damage to arrow towers'),
    # ---- R34 ----
    ('用棍反手迅速攻击敌人，', 'Strike the enemy with a quick backhand swing of the staff,'),
    ('招式迅捷有力。', 'the move is swift and powerful.'),
    ('回手用斧击打敌人，', 'Swing back and strike the enemy with the axe,'),
    ('有较小几率震伤敌人。', 'Slight chance to concuss the enemy.'),
    ('一定几率将敌人击落下马。', 'Chance to knock the enemy off horse.'),
    # ---- R35 ----
    ('提升速打造成震伤的机率。', 'Increases the chance of concussing from Swift Blow.'),
    # ---- R36 ----
    ('速打有几率会中断敌人招式的准备过程，造成3秒破招', 'Swift Blow has a chance to interrupt an enemy’s move preparation, causing 3s of Disrupt'),
    ('效果，效果影响下不能使用招式，只能普通攻击和移动。', '; while Disrupted, only normal attacks and movement are allowed.'),
    # ---- R37 ----
    ('加满5层后有20%%概率造成', 'At 5 stacks, 20%% chance to cause'),
    ('重伤效果，震伤效果持续时间高达30秒。', 'a Heavy Injury; the concussion effect lasts up to 30 seconds.'),
    # ---- R38 ----
    ('向前方的敌人攻击，主要用于牵制，', 'Attacks enemies ahead, mainly for control,'),
    ('距离中等，击中可使其定身2秒。', 'at medium range; a hit Immobilizes the target for 2s.'),
    ('距离中等，<CRLF>击中可使其定身2秒。', 'at medium range;<CRLF>a hit Immobilizes the target for 2s.'),
    ('特效^ffffff - 命中修正+5，击中获得5斗气。', 'Effect^ffffff - Hit Modifier +5; gain 5 Battle Qi on hit.'),
    ('处于“奋勇”状态时，可能造成两倍/三倍/四倍的伤害。', 'While in the “Valiant” state, may deal double, triple, or quadruple damage.'),
    ('处于“瞬杀”状态时，可以打出破坏一击，', 'While in the “Swift Kill” state, you can land a Break Strike,'),
    ('中断敌人吟唱，并且造成禁食，', 'interrupting the enemy’s casting and blocking food consumption,'),
    ('对敌造成100%%攻击力的无视防御伤害。', 'dealing 100%% Attack Power damage that ignores Defense.'),
    ('此招可架开对方奋力攻击的破坏一击效果。', 'This move can parry the Break Strike from the enemy’s all-out attack.'),
    # ---- R39 ----
    ('持环迅速击打敌人造成100%%基础伤害，', 'Strike the enemy quickly with Ring Blades for 100%% Base Damage,'),
    ('回复5斗气，一定几率将敌人击落下马。', 'restoring 5 Battle Qi, with a chance to knock the enemy off horse.'),
    # ---- R40 ----
    ('向前方的敌人攻击，主要用于牵制，距离中等，', 'Attacks enemies ahead, mainly for control, at medium range;'),
    ('击中可使其定身2秒。', 'a hit Immobilizes the target for 2s.'),
    ('此招可破除标准攻击的攻击叠加效果，', 'This move can dispel the attack-stack effect of Standard Attacks,'),
    ('并对使用标准攻击的目标造成克制效果。', 'and applies a Counter effect to targets using Standard Attacks.'),
    ('特效^ffffff 处于“瞬杀”或“破天”状态时，', 'Effect^ffffff While in the “Swift Kill” or “Heaven Break” state,'),
    ('可以打出破坏一击，中断敌人吟唱，', 'you can land a Break Strike, interrupting the enemy’s casting,'),
    ('并且造成100%%攻击力的无视防御伤害。', 'dealing 100%% Attack Power damage that ignores Defense.'),
    ('克制达到3层时，会触发落马特效。', 'At 3 stacks of Counter, triggers a dismount effect.'),
    # ---- R41 ----
    ('新手护卫专用技能，对敌人造成80%%基础伤害', 'Starter Guard exclusive skill; deals 80%% Base Damage to enemies'),
    # ---- R42/R43 ----
    ('在御敌状态下，使用速攻', 'While in the Warding state, using Swift Assault'),
    ('将有一定几率额外回复一定的斗气。', 'has a chance to restore extra Battle Qi.'),
    ('在御敌状态下，使用速攻有几率打断敌人出招，', 'While Warding, using Swift Assault has a chance to interrupt the enemy’s action,'),
    ('有几率打断敌人出招，', ' has a chance to interrupt the enemy’s action,'),
    ('使其破招3秒。', 'Disrupting them for 3 seconds.'),
    # ---- R44 ----
    ('在破军状态下，提升速攻基础伤害倍率', 'While in the Army Break state, increases Swift Assault’s Base Damage multiplier'),
    # ---- R45 ----
    ('反手挥刀迅速攻击身前敌人，', 'Backhand-slash the enemy in front quickly;'),
    ('招式迅捷但伤害较低。', 'the move is swift but deals low damage.'),
    ('有较小几率劈伤敌人。', 'Slight chance to cleave the enemy.'),
    # ---- R46 ----
    ('回手用斧击打敌人，招式迅捷有力。', 'Swing back and strike the enemy with the axe; swift and powerful.'),
    ('有较小几率劈伤目标，', 'Slight chance to cleave the target,'),
    ('若造成劈伤效果，自身获得一层连劈状态。', 'if cleaved, you gain one stack of Consecutive Cleave.'),
    ('60%%基础伤害。', '60%% Base Damage.'),
    # ---- R47 ----
    ('提升速砍造成的伤害。', 'Increases the damage dealt by Swift Slash.'),
    # ---- R48 ----
    ('当使用速砍击中对手时，', 'When Swift Slash hits the target,'),
    ('可中断其招式出招动作，并造成破招效果。', 'it interrupts their move and causes Disrupt.'),
    ('破招效果中，不能使用任何招式，只能移动和普通攻击。', 'While Disrupted, no moves can be used; only movement and normal attacks.'),
    # ---- R49/R50 ----
    ('提升速砍造成劈伤的几率。', 'Increases Swift Slash’s chance to cleave.'),
    ('提升速砍造成劈伤的机率。', 'Increases Swift Slash’s chance to cleave.'),
    ('加满2层后有20%%概率造成', 'At 2 stacks, 20%% chance to cause'),
    ('重伤效果，劈伤效果持续时间高达45秒。', 'a Heavy Injury; the cleave effect lasts up to 45 seconds.'),
    # ---- R51 ----
    ('直攻可造成额外无视防御伤害。', 'Direct attacks deal extra damage that ignores Defense.'),
    ('牵制技能专精，只能学习一个。', 'Control Skill Mastery; only one can be learned.'),
    # ---- R52 ----
    ('战斗中立即遁形，以避开敌人的急攻。', 'Vanish instantly in battle to evade the enemy’s onslaught.'),
    ('招式使用后进入隐匿效果：闪避增加200，自身', 'After use, enters Stealth: Dodge +200, your'),
    ('移动速度增加2米/秒，每秒回复斗气5点，', 'Movement Speed +2 m/s, and restores 5 Battle Qi per second,'),
    ('效果持续5秒。', 'lasting 5 seconds.'),
    # ---- R53 ----
    ('移形化影，快速下马奔至目标身前。', 'Shift into a shadow and dismount, rushing to the target.'),
    ('将目标击落下马，并大幅降低其移动速度。', 'Knocks the target off horse and greatly reduces their Movement Speed.'),
    ('终极专精，只能学习一个。', 'Ultimate Mastery; only one can be learned.'),
    ('使用技能后会自动下马。', 'Dismounts automatically after use.'),
    # ---- R54 ----
    ('战斗中如果陷入不利局面，', 'If caught at a disadvantage in battle,'),
    ('可以遁走逃脱到远处以避锋芒。', 'escape to a distance to avoid the worst of it.'),
    ('解除自身减速、定身等限制效果，', 'Removes Slow, Immobilize and other restrictive effects,'),
    ('并在接下来一段时间内不受这些负面效果影响。', 'and grants immunity to them for a time.'),
    ('遁走状态持续时间内，被敌人击中，', 'While escaping, if hit by an enemy,'),
    ('则有几率进入急闪状态，3秒内完全闪避', 'you have a chance to enter the Flash state, fully Dodging'),
    ('大部分攻击技能，10秒内最多触发一次。', 'most attack skills for 3 seconds; triggers at most once every 10 seconds.'),
    # ---- R55 ----
    ('积蓄全身力量，奋力一击。', 'Gather your full strength for a mighty strike.'),
    # ---- R56 ----
    ('提升邪气入体造成的伤害。', 'Increases the damage dealt by Sinister Qi.'),
    # ---- R57 ----
    ('邪气入体有几率使敌人进入归元状态，持续减少斗气，', 'Sinister Qi has a chance to place the enemy in the Reversion state, draining Battle Qi continuously;'),
    ('斗气减少效果与护卫计谋值相关，状态持续5秒。', 'the Battle Qi drain scales with the Guard’s Tactics value. Lasts 5 seconds.'),
    # ---- R58 ----
    ('分两段向敌人攻击，招式凶狠有力。', 'Attack the enemy in two fierce, powerful strikes.'),
    ('第一段造成176%%基础伤害，', 'First strike deals 176%% Base Damage,'),
    ('第二段造成81%%基础伤害。', 'second strike deals 81%% Base Damage.'),
    # ---- R59 ----
    ('提升醉云击造成的伤害。', 'Increases the damage dealt by Drunken Cloud Strike.'),
    # ---- R60 ----
    ('醉云击有一定几率附带无视防御伤害，', 'Drunken Cloud Strike has a chance to deal extra damage that ignores Defense,'),
    ('伤害值为护卫攻击力的30%%。', 'equal to 30%% of the Guard’s Attack Power.'),
    # ---- R61 ----
    ('跳起此舞，翩翩若蝶，天下皆醉。', 'Dance this dance, graceful as a butterfly; all under heaven falls drunk.'),
    # ---- R62 ----
    ('高举武器向下猛砍，对面前敌人造成大量伤害，', 'Raise the weapon high and slash down, dealing heavy damage to enemies ahead,'),
    ('对马下敌人造成3秒威慑，闪避降低、无法移动。', 'and imposing 3 seconds of Intimidation on dismounted enemies: reduced Dodge, unable to move.'),
    ('必杀攻击专精，只能学习一个。', 'Finishing Attack Mastery; only one can be learned.'),
    ('只能在使用拖刀式之后3秒内使用。', 'Only usable within 3 seconds after using Drag Saber Stance.'),
    # ---- R63 ----
    ('对准前方的敌人重重斩下，出招较慢，', 'Hew heavily at the enemy ahead; slow to start,'),
    ('击中后可对敌人造成150%%基础伤害。', 'but deals 150%% Base Damage on hit.'),
    ('有几率将敌人震落马下。', 'Chance to knock the enemy off horse.'),
    ('特效^ffffff - 命中修正-35，击中获得15斗气。', 'Effect^ffffff - Hit Modifier -35; gain 15 Battle Qi on hit.'),
    ('如果紧接牵制攻击使用，招式命中提升30；', 'Used right after a Control Attack, Move Hit +30;'),
    ('如果紧接标准攻击使用，招式命中提升50。', 'used right after a Standard Attack, Move Hit +50.'),
    ('在人物处于“破天”状态时，', 'While in the “Heaven Break” state,'),
    ('对敌造成150%%攻击力的无视防御伤害，', 'dealing 150%% Attack Power damage that ignores Defense,'),
    ('且造成碎器：8秒内攻击强度下降10%%。', 'and causing Shatter: Attack Strength -10%% for 8s.'),
    ('此招可架开对方标准攻击的破坏一击效果。', 'This move can parry the Break Strike from the enemy’s Standard Attack.'),
    # ---- R64 ----
    ('需要至少在“强攻战法·破军”专精上投入5点。', 'Requires at least 5 points invested in the “Onslaught Tactic · Army Break” mastery.'),
    ('大幅提升强攻战法下给敌人造成的破坏效果。', 'Greatly increases the disruption dealt to enemies under Onslaught Tactics.'),
    # ---- R65 ----
    ('重骑兵独有的马术，提升骑乘移动速度，', 'Cavalry horsemanship unique to heavy cavalry; increases mounted Movement Speed,'),
    ('同时免疫定身和减速效果影响。', 'and makes you Immune to Immobilize and Slow effects.'),
    # ---- R66 ----
    ('运用燎原野火之力，对前方最远20米处', 'Harness the power of the spreading wildfire to hit enemies up to 20m ahead'),
    ('半径6米范围的敌人造成60%%基础伤害，', 'within a 6m radius for 60%% Base Damage,'),
    ('并可以使受伤者均进入晕眩状态。', 'possibly Stunning all those hit.'),
    ('最多对3个目标生效。', 'Affects up to 3 targets.'),
    # ---- R67 ----
    ('提升野火燎原造成的伤害。', 'Increases the damage dealt by Prairie Wildfire.'),
    ('提升野火燎原的伤害人数上限。', 'Increases Prairie Wildfire’s target cap.'),
    # ---- R68 ----
    ('被野火燎原击中的敌人，有一定机率燃烧，', 'Enemies hit by Prairie Wildfire have a chance to catch fire,'),
    ('燃烧时每秒损失（敌人等级）的生命值。', 'losing HP per second while burning equal to their (enemy level).'),
    # ---- R69 ----
    ('使用野火燎原时将有一定几率忽视目标的', 'When using Prairie Wildfire, you have a chance to ignore the target’s'),
    ('眩晕抵抗效果。', 'Stun Resistance.'),
    # ---- R70 ----
    ('提升野火燎原的伤害人数上限。', 'Increases Prairie Wildfire’s target cap.'),
]
