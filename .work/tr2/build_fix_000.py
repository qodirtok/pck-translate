"""Build .work/tr2/out/fix_000.jsonl with exact sentinel parity.

Each translation is authored as a list of PHYSICAL LINES (one per source line).
Source line breaks are re-applied from the source sentinel sequence, so parity is
guaranteed by construction.  Padding runs (>=2 whitespace chars, or any U+3000/tab)
are written as {0}, {1}, ... markers and substituted with the verbatim source runs.
"""
import json
import re
import os

TOK = re.compile(r'<CRLF>|<LF>|<CR>')
WS = re.compile(r'[ \t\u3000]+')

T = {}

T[1] = [
    '^c3dbffSwift Rush \u00b7 Wound',
    '',
    "^ffffffSwift Rush can increase the Enemy's skill cast time, lasting 10 seconds.",
]

T[2] = [
    '^c3dbffSwift Rush \u00b7 Fury',
    '',
    "^ffffffSwift Rush can reduce the Enemy's Crit Resistance, lasting 5 seconds.",
]

T[3] = [
    '^c3dbffThunderclap Art \u00b7 Stratagem',
    '',
    '^ffffffIncreases the Crit Chance of Thunderclap Art.',
]

T[4] = [
    '^c3dbffInterrupt',
    '^ffffffRequires at least 5 points invested in \u201cSwift Slash \u00b7 Technique\u201d.',
    '',
    '^ffffffWhen Swift Slash hits an opponent who is in the middle of a Move, it interrupts that Move',
    'and applies a Move Break effect. While Move Break is active, no Move can be used; only normal attacks',
    'or movement are possible.',
]

T[5] = [
    '^c3dbffPlucking the Zither of Love',
    '',
    '^ffffffA fair lady plays the zither, her love as deep as it goes, phoenixes soaring in pairs.',
]

T[6] = [
    '^c3dbffSoul Seizing First Form \u00b7 Suppress',
    '',
    'Skill Category: Agility Line',
    'Skill Quality: IV',
    'Learning Requirement: Melee',
    '',
    "^ffffffSoul Seizing First Form has a chance to reduce the Target's Attack Speed and",
    'Casting Speed. The Attack Speed and Casting Speed reductions scale with',
    "the Guard's Stratagem, and the state lasts 10 seconds.",
]

T[7] = [
    '^c3dbffHeart-Shatter Claw',
    '',
    '^ffffffWeapon: Claws{0}15 Battle Qi{1}15 Stamina',
    'Combat Technique: Instant{0}Cool-down 15 sec',
    '',
    'A cruel Move that wields twin claws to inflict fatal wounds,',
    'once it lands, it makes the Enemy bleed continuously and leaves the Enemy careless through the pain.',
    "It applies a continuous HP drain to the Target Enemy and reduces the Target's Direct Resistance,",
    "while the effect's duration and total damage depend on how much Assassination has built up",
    'so far.',
    'The Move deals 80%% base damage.',
]

T[8] = [
    '^c3dbffThunder Gale Heartslayer',
    '^ffffffRequires at least 25 points invested in Strength Mastery.',
    '',
    '^ffffffWhen using a Ranged skill, you have a chance to gain the Thunder Gale state; each Thunder Gale stack',
    'increases Melee skill Crit Damage by 5%%, stacking up to 4 times and lasting 6 seconds.',
    'While in the Thunder Gale state, using Straight Rush reduces its Cool-down by 1 second per stack.',
]

T[9] = [
    '^c3dbffHundred Splinter Continuous Staff \u00b7 Technique',
    '^ffffffRequires at least 15 points invested in Technique Mastery.',
    '',
    '^ffffffIncreases the chance of Hundred Splinter Continuous Staff causing Concussion. At 5 stacks, there is a 20%% chance to apply',
    'a Heavy Wound effect, and the Concussion effect can last up to 30 seconds.',
]

T[10] = [
    '^c3dbffStraight Rush \u00b7 Technique',
    '',
    '^ffffffIncreases the chance of Straight Rush causing Concussion. At 5 stacks, there is a 20%% chance to apply',
    'a Heavy Wound effect, and the Concussion effect can last up to 30 seconds.',
]

T[11] = [
    '^c3dbffShield Slam \u00b7 Seal',
    '^ffffffRequires 5 points invested in \u201cShield Slam \u00b7 Technique\u201d',
    '',
    'Using Shield Slam has a chance to grant the \u201cSeal Power\u201d state,',
    'and the next Shield Slam Silences the Target for 3 seconds.',
]

T[12] = [
    '^c3dbffShield Rush \u00b7 Interrupt',
    '^ffffffRequires at least 15 points invested in Technique Mastery.',
    '',
    "^ffffffShield Rush has a chance to interrupt the enemy's Move preparation, causing a 3-second Move Break.",
    'While Move Break is active, no Move can be used; only normal attacks and movement are possible.',
]

T[13] = [
    '^c3dbffInsight',
    '^ffffffRequires at least 3 points invested in \u201cMeridian Pierce \u00b7 Might\u201d.',
    '',
    "^ffffffThe highest realm of swordplay, seeking out the opponent's flaws,",
    'greatly reduces the wind-up time of Meridian Pierce and Throat-Sealing Thrust.',
    'The effect can only trigger once within 10 seconds.',
]

T[14] = [
    '^c3dbffRapid Strikes \u00b7 Technique',
    '^ffffffRequires at least 5 points invested in Technique Mastery.',
    '',
    "^ffffffIncreases the chance of Rapid Strikes causing Concussion and NPC enemies' Threat. At 5 stacks, there is a 20%% chance to apply",
    'a Heavy Wound effect, and the Concussion effect can last up to 30 seconds.',
]

T[15] = [
    '^c3dbffChained Stratagem^ffffff{0}^ffcc00Level %d^ffffff',
    '',
    'Strategy: Instant{0}Initial Cool-down: 20 sec',
    '',
    'Soul Skill Type: Attack',
    "Summons the hero's soul fused within your body, casting a Soul attack on the",
    'single enemy within 7 meters in front of you.',
    '',
    '^ffcc00Soul Skill Effect: ^ffffff',
    '1. The attack deals one instance of Soul damage to the enemy; damage cast in the Awakened state',
    'is doubled;',
    '2. The attack applies the Chained Stratagem state to the enemy, reducing Movement Speed by %.1f meters;',
    'when cast in the Awakened state, it also applies the Chained Stratagem buff to yourself,',
    'raising your Attack Power by 6%%.',
    'The Chained Stratagem state lasts 4 seconds\uff08this duration is unaffected by Soul Refining level\uff09.',
]

T[16] = [
    '^c3dbffWind Chase',
    '^ffffffRequires at least 25 points invested in Technique Mastery.',
    '',
    '^ffffffWeapon: Sword{0}7 Stamina',
    'Mastery: Instant{0}Cool-down 20 sec',
    'Mastery Move{0}Generates 2 Battle Qi',
    '',
    'Displace 7 meters in the direction you face; it can be used several times within 10 seconds. The first three uses each grant you a buff, and the fourth use refreshes',
    'the duration of the Rising Dragon and Gale produced on the third use.',
    'While displacing, you are Immune to Control between 1~2.8 seconds, and each use boosts Attack Speed and Attack Range while also',
    "granting damage absorption equal to your own Attack Power*0.5. The state's duration depends on your Spell Power: below 1 it lasts 1 second, above 0 and below 90 it lasts 2 seconds,",
    'and above 90 it lasts 2.8 seconds.',
    '',
    '^c3dbffDifferent Effect per Gale Stack',
    '^ffffff',
    'Gale 1 Stack: When Spell Power is above 10, generates a Shield that absorbs damage equal to your own Max Attack Power; the effect doubles when Spell Power is above 30.',
    'Gale 2 Stacks: Has a chance to trigger a 10-second Combo Mode; the Mastery-enhanced Combo raises its trigger chance and duration.',
    'Gale 3 Stacks: With the Wind Chase Rising Dragon Mastery learned, generates the Wind Chase Rising Dragon prerequisite state, letting you cast Wind Chase Thrust instantly.',
    '',
    '^c3dbffCommon Effect per Gale Stack',
    '^ffffff',
    'Increases Injury Resistance by 5, Restriction Resistance by 10 and Seal Resistance by 10; Gale stacks up to 3 times, lasts 18 seconds and raises the base damage',
    'multiplier of some skills. Being hit or hitting during it grants a speed boost of 0.1 Movement Speed, which can stack 10',
    'times and lasts 10 seconds.',
    '',
    '^c3dbffNote: Tip - multi-stage displacements can cancel other skill actions, and any skill can be inserted after Wind Chase.',
]

T[17] = [
    '^c3dbffSoul-Chasing Strike^ffffff',
    '',
    'Skill Category: Agility Line',
    'Skill Quality: I',
    'Learning Requirement: Melee',
    'Basic Move',
    '',
    'A quick attack that deals 49%% base damage to 3 enemies',
    'in a straight line ahead.',
]

T[18] = [
    '^c3dbffReverse Strike \u00b7 Technique^ffffff',
    '',
    "Reverse Strike's Pierce chance increases. At 5 stacks, there is a 20%% chance to apply",
    'a Heavy Wound effect, and the Pierce effect can last up to 30 seconds.',
]

T[19] = [
    '^c3dbffCarefree Rush^ffffff{0}^ffcc00Level %d^ffffff',
    '',
    'Strategy: Instant{0}Initial Cool-down: 20 sec',
    '',
    'Soul Skill Type: Attack',
    "Summons the hero's soul fused within your body, casting a Soul attack on the",
    'single enemy within 5 meters in front of you.',
    '',
    '^ffcc00Soul Skill Effect: ^ffffff',
    '1. The attack deals one instance of Soul damage to the enemy; damage cast in the Awakened state',
    'is doubled;',
    '2. While in the Awakened state, it also inflicts the Assault Break effect on the enemy,',
    'causing them to lose %d Stamina every second; the effect lasts at least 5 seconds.',
]

T[20] = [
    "^c3dbffChang'an Freehand",
    '',
    '^ffffffBrush in hand and writing in haste: silver hooks and iron strokes appear in midair, the brushwork like a grey dragon',
    'sweeping the sky, vigorous and gnarled. The brush falls and startles wind and rain; the verse is finished and gods and ghosts weep.',
]

T[21] = [
    '^c3dbffRainbow Pierces the Sun Dance',
    '',
    '^ffffffDance this dance, and thunder roars and dragons leap beside you, shaking all around, unstoppable.',
]

T[22] = [
    '^c3dbffHidden Moon',
    '',
    '^ffffffType: Passive',
    '^ffffffRequired Level: Hero Level 50',
    '^ffffffSkill Origin Restriction: Bingzhou',
    '',
    "With a beauty that hides the moon, the Beauty Stratagem succeeded and won L\u00fc Bu's heart,",
    'gaining a 5%% chance to obtain the Hidden Moon state when attacked,',
    'reducing the Indirect Damage you take. The state lasts 4 seconds.',
    '',
    '^99ccffOriginates from Diao Chan.',
    '^99ccffLearning requires the corresponding Skill Book.',
]

T[23] = [
    '^c3dbffOde to Idle Fancy',
    '',
    "^ffffffWith a scholar's spirit, gesturing at rivers and mountains, the world held in the heart, impassioned and spirited.",
]

T[24] = [
    '^c3dbffOde to Idle Fancy',
    '',
    '^ffffffA dream among the flowers, worth a thousand autumns, drifting in and lingering in the heart.',
]

T[25] = [
    '^c3dbffSnow-Glass Ruin',
    '',
    '^ffffffDance this dance, and snow and ice swirl around you, the snow sweeping the earth, all things drunk in wonder.',
]

T[26] = [
    '^c3dbffSnow Lotus Scatter',
    '',
    "^ffffffDance this dance, and snow lotuses drift apart around you, ice crystals dancing, winter's essence lofty and remote.",
]

T[27] = [
    '^c3dbffThunderclap of Ten Thousand Pounds \u00b7 Soul Ruin',
    '',
    'Skill Category: Agility Line',
    'Skill Quality: IV',
    'Learning Requirement: Ranged',
    '',
    '^ffffffThunderclap of Ten Thousand Pounds has a chance to put the Enemy in the Soul Ruin state, continuously draining Stamina,',
    "and the Stamina drain scales with the Guard's Stratagem. The state lasts 5 seconds.",
]

T[28] = [
    "^c3dbffOverlord's Sea Blade Art",
    '',
    '^ffffffWield this blade, and thunder roars and dragons leap beside you, shaking all around, unstoppable.',
]

T[29] = [
    '^c3dbffGreen Dragon Crescent Blade \u00b7 Power',
    '^ffffffRequires at least 30 points invested in Strength Mastery.',
    '',
    '^ffffffIncreases the damage dealt by Green Dragon Crescent Blade, and the damage it deals to Targets in mounted combat.',
]

T[30] = [
    '^c3dbffWindfire Wheel',
    '',
    '^ffffffWeapon: Staff{0}30 Battle Qi{1}15 Stamina',
    'Combat Technique: Cast While Moving',
    '',
    'Spin the long staff in hand to strike the multiple Enemies around you several times in succession.',
    'Deals 50%% base damage, attacking 3 times.',
    '',
    'While in the Combo state, when the Move ends, you recover Battle Qi equal to your current Combo count \u00d75.',
    '',
    '^c3dbffNote: A recommended skill for Area attacks; it is even stronger when used together with \u201cCombo\u201d.',
]

T[31] = [
    '^c3dbffWindfire Wheel',
    '',
    '^ffffffWeapon: Staff{0}30 Battle Qi{1}20 Stamina',
    'Combat Technique: Instant',
    '',
    'Spin the long staff in hand to strike the multiple Enemies around you several times in succession.',
    'Deals 37%% base damage, attacking 3 times.',
    'While in the Combo state, when the Move ends, you recover Battle Qi equal to your current Combo count \u00d75.',
    '',
    '^c3dbffNote: A recommended skill for Area attacks; it is even stronger when used together with \u201cCombo\u201d.',
]


def padding_runs(line):
    out = []
    for m in WS.finditer(line):
        s = m.group(0)
        if len(s) >= 2 or s[0] in '\u3000\t':
            out.append(s)
    return out


def build():
    recs = [json.loads(l) for l in open('in/fix_000.jsonl') if l.strip()]
    assert [r['id'] for r in recs] == list(range(1, 32)), 'unexpected ids'
    out = []
    for r in recs:
        src = r['source']
        seps = TOK.findall(src)
        lines = TOK.split(src)
        tr = T[r['id']]
        assert len(tr) == len(lines), 'id %s: %d translated lines vs %d source lines' % (
            r['id'], len(tr), len(lines))
        built = []
        for i, (sl, tl) in enumerate(zip(lines, tr)):
            runs = padding_runs(sl)
            idx = [0]

            def sub(m):
                k = idx[0]
                idx[0] += 1
                assert k < len(runs), 'id %s line %d: too many padding markers' % (r['id'], i)
                return runs[k]

            text = re.sub(r'\{(\d+)\}', sub, tl)
            assert idx[0] == len(runs), 'id %s line %d: %d markers vs %d runs' % (
                r['id'], i, idx[0], len(runs))
            built.append(text)
        english = built[0]
        for s, ln in zip(seps, built[1:]):
            english += s + ln
        out.append({'id': r['id'], 'english': english})
    return out


if __name__ == '__main__':
    rows = build()
    path = 'out/fix_000.jsonl'
    with open(path, 'w', encoding='utf-8') as f:
        for row in rows:
            f.write(json.dumps(row, ensure_ascii=False) + '\n')
    print('wrote %s (%d records)' % (path, len(rows)))