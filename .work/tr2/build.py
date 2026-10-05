# -*- coding: utf-8 -*-
import json, re, sys, os

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from pairs_a import PAIRS_A
from pairs_b import PAIRS_B
from pairs_c import PAIRS_C

PAIRS = PAIRS_A + PAIRS_B + PAIRS_C

# ---- bare proper-name pairs (skill / state names appearing inside prose) ----
NAMES = [
    ('连中', 'Chain Hit'),
    ('速击', 'Swift Strike'),
    ('速打', 'Swift Blow'),
    ('速攻', 'Swift Assault'),
    ('速砍', 'Swift Slash'),
    ('速射', 'Rapid Shot'),
    ('醉云击', 'Drunken Cloud Strike'),
    ('野火燎原', 'Prairie Wildfire'),
    ('金丝缠', 'Golden Bind'),
    ('金蛇乱舞', 'Golden Serpent Dance'),
    ('铮铮之舞', 'Clanging Dance'),
    ('银蛇缚', 'Silver Serpent Bind'),
    ('邪气入体', 'Sinister Qi'),
    ('强攻战法·破军', 'Onslaught Tactic · Army Break'),
    ('·强攻', ' · Onslaught'),
    ('·打断', ' · Interrupt'),
    ('·撕裂', ' · Rend'),
    ('·飞将', ' · Flying General'),
    ('·引燃', ' · Ignite'),
    ('·忽视', ' · Pierce'),
    ('·归元', ' · Reversion'),
    ('·技', ' · Technique'),
    ('·御', ' · Guard'),
    ('·破', ' · Break'),
    ('·怒', ' · Rage'),
    ('·军', ' · Army'),
    ('·咒', ' · Curse'),
    ('·策', ' · Tactic'),
    ('·影', ' · Shadow'),
    ('·魅', ' · Charm'),
    ('·辅', ' · Support'),
    ('·力', ' · Power'),
    ('奋勇', 'Valiant'),
    ('瞬杀', 'Swift Kill'),
    ('破天', 'Heaven Break'),
    ('破军', 'Army Break'),
    ('御敌', 'Warding'),
    ('归元', 'Reversion'),
    ('隐匿', 'Stealth'),
    ('隐伏', 'Stealth'),
    ('急闪', 'Flash'),
    ('撕裂', 'Rend'),
    ('连劈', 'Consecutive Cleave'),
    ('绊马', 'Trip'),
    ('印魂', 'Seal Soul'),
    ('觉醒', 'Awakening'),
    ('国色', 'National Beauty'),
    ('天香', 'Heavenly Fragrance'),
    ('拖刀式', 'Drag Saber Stance'),
    ('回龙乱', 'Dragon’s Return'),
    ('缠颈打', 'Neck Bind Strike'),
    ('引雷钩', 'Lightning Hook'),
    ('百毒入髓', 'Hundred Poisons'),
    ('吴鸿扈稽', 'Wuhu Huji'),
    ('五步射', 'Five-Pace Shot'),
    ('连矢射', 'Chain Arrow Shot'),
    ('攒射', 'Volley Mastery'),
    ('破招', 'Disrupt'),
    ('碎器', 'Shatter'),
    ('威慑', 'Intimidation'),
    ('刺伤', 'Pierce'),
    ('劈伤', 'cleave'),
    ('震伤', 'concussion'),
    ('溅射', 'Splash'),
    ('灵体', 'spirit'),
    ('沉默', 'Silenced'),
    ('缴械', 'Disarm'),
    # weapons
    ('中距近战兵器（剑、斧、钩、锏、锤）', 'Medium-Range Melee (Sword, Axe, Hooksword, Mace, Hammer)'),
    ('长距近战兵器（叉、剑、斧、钩、锏、锤）', 'Long-Range Melee (Trident, Sword, Axe, Hooksword, Mace, Hammer)'),
    ('单手重型近战兵器（刀、钺、叉）', 'One-Hand Heavy Melee (Saber, Battleaxe, Trident)'),
    ('近战兵器', 'Melee Weapon'),
    ('锏', 'Mace'),
    ('叉', 'Trident'),
    ('爪', 'Claws'),
    ('鞭', 'Whip'),
    ('盾', 'Shield'),
    ('环', 'Ring Blade'),
    ('钺', 'Battleaxe'),
    ('镗', 'Multiblade'),
    ('钩', 'Hooksword'),
    ('戟', 'Halberd'),
    ('弩', 'Crossbow'),
    ('弓', 'Bow'),
    ('枪', 'Spear'),
    ('扇', 'Fan'),
    ('斧', 'Axe'),
    ('锤', 'Hammer'),
    ('棍', 'Staff'),
    ('杖', 'Staff'),
    ('刀', 'Saber'),
    ('剑', 'Sword'),
    ('舞', 'Dance'),
    ('兵器', 'Weapon'),
    ('武器', 'weapon'),
    ('不限', 'Any'),
]

CLASS = {
    '力': 'Strength', '技': 'Technique', '御': 'Guard', '破': 'Break',
    '咒': 'Curse', '策': 'Strategy', '影': 'Shadow', '魅': 'Charm',
    '战': 'Battle', '辅': 'Support',
}

UNIT = {'秒': 's', '分钟': ' min', '分种': ' min'}

def _cool(m):
    return 'Cool-down %s%s' % (m.group(1), UNIT[m.group(2)])

def _init_cool(m):
    return 'Initial Cool-down: %s%s' % (m.group(1), UNIT[m.group(2)])

def _class_mastery(m):
    return 'Requires at least %s points invested in %s Mastery.' % (
        m.group(2), CLASS.get(m.group(1), m.group(1)))

REGEXES = [
    (re.compile(r'学习等级需求：英雄(\d+)级'), r'Required Level: Hero Lv \1'),
    (re.compile(r'学习等级需求：(\d+)级'), r'Required Level: Lv \1'),
    (re.compile(r'Learning Cost: (\d+)点'), r'Learning Cost: \1 Glory'),
    # level lines of the generic passive skills
    (re.compile(r'打怪获得的历练值提升(\d+)%%。'), r'Training gained from defeating monsters +\1%%.'),
    (re.compile(r'打怪获得的阅历值提升(\d+)%%。'), r'Insight gained from defeating monsters +\1%%.'),
    (re.compile(r'参加国战时，有(\d+)%%几率获得国战包。'), r'\1%% chance to obtain a Kingdom War Pack when joining a Kingdom War.'),
    (re.compile(r'完成图鉴类战场有(\d+)%%几率额外获得图鉴包。'), r'\1%% chance to gain an extra Codex Pack when completing a Codex-type battlefield.'),
    (re.compile(r'完成官渡之战有(\d+)%%几率获得官渡之战包。'), r'\1%% chance to obtain a Guandu War Pack when completing the Battle of Guandu.'),
    (re.compile(r'领取聚财礼包时，有(\d+)%%几率获得官职包。'), r'\1%% chance to obtain an Official Rank Pack when claiming the Wealth Gift Pack.'),
    (re.compile(r'装备成长时，直接进入下个成长等级的几率提高(\d+)%%。'), r'Chance to advance straight to the next Growth level when growing equipment +\1%%.'),
    (re.compile(r'护卫提高声望直接进入下一档的几率提升(\d+)%%。'), r'Guard Reputation chance to jump straight to the next tier +\1%%.'),
    (re.compile(r'完成神州探宝任务有(\d+)%%几率获得探宝包。'), r'\1%% chance to obtain a Treasure Pack when completing Shenzhou Treasure Hunt quests.'),
    (re.compile(r'参加赤壁水战有(\d+)%%几率获得水战包。'), r'\1%% chance to obtain a Naval Battle Pack when joining the Red Cliffs naval battle.'),
    (re.compile(r'完成濮阳之战有(\d+)%%几率获得濮阳田黄包。'), r'\1%% chance to obtain a Puyang Tianhuang Pack when completing the Battle of Puyang.'),
    (re.compile(r'完成英雄玄石系列任务获得奖励的几率提升(\d+)%%。'), r'Reward chance for completing the Hero Mystic Stone quest series +\1%%.'),
    (re.compile(r'秘文升级成功率提升(\d+)%%。'), r'Rune upgrade success rate +\1%%.'),
    (re.compile(r'附加符玉时获得高级符玉的几率提升(\d+)%%。'), r'Chance to obtain a high-tier Talisman Jade when inlaying +\1%%.'),
    (re.compile(r'完成聚贤谷任务有(\d+)%%几率获得护卫包。'), r'\1%% chance to obtain a Guard Pack when completing Sages Vale quests.'),
    (re.compile(r'完成英雄志系列战场(\d+)%%几率获得英雄志包。'), r'\1%% chance to obtain a Heroes Chronicle Pack when completing Heroes Chronicle battlefields.'),
    (re.compile(r'完成葭萌关战场(\d+)%%几率获得葭萌关包。'), r'\1%% chance to obtain a Jiameng Pass Pack when completing the Jiameng Pass battlefield.'),
    (re.compile(r'参与战场时，有(\d+)%%几率获得车战包。'), r'\1%% chance to obtain a Chariot Battle Pack when entering a battlefield.'),
    (re.compile(r'领取鱼饵时可额外领取(\d+)个普通鱼饵，'), r'Claim \1 extra Normal Baits when collecting bait,'),
    (re.compile(r'钓鱼获得特殊道具的几率提升(\d+)%%。'), r'fishing chance of special items +\1%%.'),
    (re.compile(r'附魂时获得高级属性的几率提升(\d+)%%。'), r'Chance to obtain a high-tier attribute when Soul Imbuing +\1%%.'),
    (re.compile(r'初始冷却[:：]?([\d.]+)(秒|分钟|分种)'), _init_cool),
    (re.compile(r'冷却(?:时间)?[:：]?([\d.]+)(秒|分钟|分种)'), _cool),
    (re.compile(r'准备([\d.]+)秒'), r'\1s Cast'),
    (re.compile(r'出招([\d.]+)秒'), r'\1s Wind-up'),
    (re.compile(r'需要至少在“(.+?)”上投入(\d+)点。'), r'Requires at least \2 points invested in “\1”.'),
    (re.compile(r'需要至少在“(.+?)”类专精上投入(\d+)点。'), r'Requires at least \2 points invested in \1 Mastery.'),
    (re.compile(r'需要至少在(.+?)类专精上投入(\d+)点。'), _class_mastery),
    (re.compile(r'提升(.+?)造成的伤害。'), r'Increases the damage dealt by \1.'),
    (re.compile(r'提升(.+?)造成震伤的机率。'), r'Increases the chance of concussing from \1.'),
    (re.compile(r'(.+?)的基础伤害提升。'), r'Increases \1’s Base Damage.'),
    (re.compile(r'加满(\d+)层后有(\d+)%%概率造成'), r'At \1 stacks, \2%% chance to cause'),
    (re.compile(r'造成(\d+)%%基础伤害。'), r'Deals \1%% Base Damage.'),
    (re.compile(r'产生(\d+)点斗气。'), r'Generates \1 Battle Qi.'),
    (re.compile(r'获得(\d+)斗气'), r'gain \1 Battle Qi'),
    (re.compile(r'回复(\d+)斗气'), r'restores \1 Battle Qi'),
]

WORD_FALLBACKS = [
    (re.compile(r'(\d+)%%基础伤害'), r'\1%% Base Damage'),
    (re.compile(r'命中修正'), 'Hit Modifier'),
    (re.compile(r'暴击抗性'), 'Crit Resistance'),
    (re.compile(r'眩晕抵抗'), 'Stun Resistance'),
    (re.compile(r'直接抗性'), 'Direct Resistance'),
    (re.compile(r'间接抗性'), 'Indirect Resistance'),
    (re.compile(r'攻击强度'), 'Attack Strength'),
    (re.compile(r'攻击速度'), 'Attack Speed'),
    (re.compile(r'移动速度'), 'Movement Speed'),
    (re.compile(r'生命值'), 'HP'),
    (re.compile(r'暴击附加伤害'), 'bonus Crit Damage'),
    (re.compile(r'攻击力'), 'Attack Power'),
    (re.compile(r'暴击'), 'Crit'),
    (re.compile(r'命中'), 'Hit'),
    (re.compile(r'每秒'), 'per second'),
    (re.compile(r'(\d+)点斗气'), r'\1 Battle Qi'),
    (re.compile(r'(\d+)点'), r'\1 Glory'),
    (re.compile(r'(\d+)斗气'), r'\1 Battle Qi'),
    (re.compile(r'(\d+)体力'), r'\1 Stamina'),
    (re.compile(r'体力'), 'Stamina'),
    (re.compile(r'斗气'), 'Battle Qi'),
    (re.compile(r'基础伤害'), 'Base Damage'),
    (re.compile(r'(\d+)米/秒'), r'\1 m/s'),
    (re.compile(r'(\d+)米'), r'\1m'),
    (re.compile(r'(\d+)层'), r'\1 stacks'),
    (re.compile(r'(\d+)秒'), r'\1s'),
    (re.compile(r'(\d+)分钟'), r'\1 min'),
    (re.compile(r'等级(\d) -'), r'Level \1 - '),
    (re.compile(r'^ffcc00等级(\d) -'), r'^ffcc00Level \1 - '),
]

PUNCT = [
    ('，', ', '),
    ('。', '.'),
    ('；', '; '),
    ('：', ': '),
    ('（', '('),
    ('）', ')'),
    ('、', ', '),
    ('！', '!'),
    ('？', '?'),
]

def translate(src):
    t = src
    for old, new in PAIRS:
        t = t.replace(old, new)
    for old, new in NAMES:
        t = t.replace(old, new)
    for pat, rep in REGEXES:
        t = pat.sub(rep, t)
    for pat, rep in WORD_FALLBACKS:
        t = pat.sub(rep, t)
    for a, b in PUNCT:
        t = t.replace(a, b)
    # sentence-join spacing polish
    t = re.sub(r'\.([A-Z])', r'. \1', t)
    t = re.sub(r',(?=[A-Za-z])', ', ', t)
    t = re.sub(r';(?=[A-Za-z])', '; ', t)
    t = t.replace('at least 1 points', 'at least 1 point')
    return t

def check(rid, src, out):
    errs = []
    left = re.findall(r'[\u3400-\u9fff\uf900-\ufaff]', out)
    if left:
        errs.append('leftover CJK: %s' % ''.join(sorted(set(left))))
    if src.count('<CRLF>') != out.count('<CRLF>'):
        errs.append('CRLF count %d -> %d' % (src.count('<CRLF>'), out.count('<CRLF>')))
    if src.count('%%') != out.count('%%'):
        errs.append('%%%% count %d -> %d' % (src.count('%%'), out.count('%%')))
    c1 = re.findall(r'\^[0-9a-fA-F]{6}', src)
    c2 = re.findall(r'\^[0-9a-fA-F]{6}', out)
    if c1 != c2:
        errs.append('color codes %s -> %s' % (c1, c2))
    p1 = re.findall(r'\u3000+|[ ]{2,}', src)
    p2 = re.findall(r'\u3000+|[ ]{2,}', out)
    if p1 != p2:
        errs.append('padding runs differ:\n  src=%s\n  out=%s' % (p1, p2))
    ph1 = re.findall(r'%(?:\d+\$)?[sdf]', src)
    ph2 = re.findall(r'%(?:\d+\$)?[sdf]', out)
    if ph1 != ph2:
        errs.append('placeholders %s -> %s' % (ph1, ph2))
    if '"' in out:
        errs.append('straight double quote in output')
    if re.search(r'[\u4e00-\u9fff]', out):
        errs.append('CJK still present')
    return errs

def main():
    with open(os.path.join(HERE, 'in', 'batch_013.jsonl'), encoding='utf-8') as f:
        recs = [json.loads(l) for l in f if l.strip()]
    out_lines = []
    problems = 0
    for r in recs:
        src = r['source']
        out = translate(src)
        errs = check(r['id'], src, out)
        if errs:
            problems += 1
            print('--- id %d' % r['id'])
            for e in errs:
                print('   ' + e)
            print('   OUT: ' + out)
        out_lines.append(json.dumps({'id': r['id'], 'english': out}, ensure_ascii=False))
    if problems == 0:
        path = os.path.join(HERE, 'out', 'batch_013.jsonl')
        os.makedirs(os.path.dirname(path), exist_ok=True)
        with open(path, 'w', encoding='utf-8') as f:
            f.write('\n'.join(out_lines) + '\n')
        print('OK: wrote %d records to %s' % (len(out_lines), path))
    else:
        print('FAILED: %d records with issues; nothing written' % problems)

if __name__ == '__main__':
    main()
