#!/usr/bin/env python3
"""Pattern-based whole-string translator for title_def.lua.

Translates CJK quoted strings in current/script/config/title_def.lua to English.
Handles templated families programmatically and uses exact-match pairs for prose.
Preserves all structural elements: color codes, \\r escapes, IDs, identifiers.

Key design: strings carry a leading flag+color prefix (e.g. 0^72fe00, 1^a800ff, 0).
We strip the prefix, translate the Chinese body, then reattach the prefix.
"""
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / 'current' / 'script' / 'config' / 'title_def.lua'
OUT = ROOT / 'Translate' / 'script' / 'config' / 'title_def.lua'

# ============================================================================
# TERMINOLOGY (Option B: game-conventional)
# ============================================================================

FACTIONS = {
    '魏国': 'Kingdom of Wei', '蜀国': 'Kingdom of Shu', '吴国': 'Kingdom of Wu',
    '群雄': 'All Heroes', '大汉': 'Great Han',
}
FACTION_SHORT = {'魏': 'Wei', '蜀': 'Shu', '吴': 'Wu', '群': 'All Heroes'}

RANK_MAP = {
    '义士': 'Righteous Warrior', '侠客': 'Knight', '豪杰': 'Hero',
    '英雄': 'Champion', '小霸王': 'Little Overlord', '五虎将': 'Five Tiger General',
    '家将': 'Household General', '重臣': 'High Minister', '猛将': 'Fierce General',
    '义臣': 'Loyal Minister', '名流': 'Celebrity', '仕官': 'Official',
}

WEAPONS = {
    '方天画戟': 'Sky Piercer Halberd', '青龙偃月刀': 'Green Dragon Crescent Blade',
    '丈八蛇矛': 'Serpent Spear', '青釭剑': 'Azure Light Sword',
    '刀': 'Blade', '剑': 'Sword', '弓': 'Bow', '戟': 'Halberd',
    '扇': 'Fan', '斧': 'Axe', '杖': 'Staff', '枪': 'Spear',
    '棍': 'Cudgel', '爪': 'Claw', '环': 'Ring Blade', '舞': 'Dance',
}

STATS = {
    '生命回复速度': 'HP Regen Speed', '内力回复速度': 'MP Regen Speed',
    '生命恢复速度': 'HP Regen Speed', '内力恢复速度': 'MP Regen Speed',
    '攻击力上限': 'Max Attack', '生命上限': 'Max HP', '内力上限': 'Max MP',
    '暴击附加伤害': 'Crit Bonus Damage',
    '强韧': 'Toughness', '穿透': 'Pierce', '刺破': 'Pierce',
    '间接伤害抗性': 'Indirect DMG Resist', '直接伤害抗性': 'Direct DMG Resist',
    '攻击强度': 'Attack Power', '附加伤害': 'Bonus Damage',
    '治疗点数': 'Healing', '治疗效果': 'Healing Effect',
    '暴击抗性': 'Crit Resist', '暴击伤害': 'Crit Damage',
    '体力值': 'Stamina', '生命值': 'Max HP', '内力值': 'Max MP',
    '攻击力': 'Attack', '防御力': 'Defense', '防御值': 'Defense',
    '命中': 'Accuracy', '闪避': 'Dodge', '暴击': 'Crit',
    '体质': 'Stamina', '体力': 'Stamina', '历练值': 'EXP', '历练': 'Experience',
    '吟唱速度': 'Cast Speed', '封印抗性': 'Seal Resist', '受伤抗性': 'Injury Resist',
    '限制抗性': 'Restriction Resist', '流血抗性': 'Bleed Resist',
    '虚弱抗性': 'Weakness Resist', '间接抗性': 'Indirect Resist',
    '生命回复': 'HP Regen', '内力回复': 'MP Regen',
    '附加': 'Bonus', '生命': 'HP', '攻击': 'Attack', '防御': 'Defense',
    '武勋': 'Military Merit', '文勋': 'Civil Merit', '名望': 'Renown',
    '声望': 'Renown', '仁义值': 'Righteousness', '竞技积分': 'Arena Points',
    '新年积分': 'New Year Points', '活跃度': 'Activity', '爵位': 'Peerage',
    '品质': 'Quality', '普通': 'Common', '废弃': 'Deprecated',
}
# Extended stats/labels for post-processing
STATS2 = {
    '礼贤下士，用人不疑，这是一个好的统帅具有的基本素质': 'Respecting the worthy and condescending to scholars, employing people without suspicion: these are the basic qualities of a good commander',
    '夫得道者多助，失道者寡助，多助之至，天下顺之': 'Those who gain the Way receive much help; those who lose it receive little. When help is at its height, the world follows',
    '古之恶来，今之猛将，手提双戟八十斤，万夫莫当': 'The Evil Lai of old, the valiant general of today, wielding twin halberds of eighty jin, a match for ten thousand men',
    '青丝一缕，红颜铿锵，可传香风万里，钢铁柔肠': 'A thread of black silk, a valiant beauty, whose fragrant grace carries ten thousand miles, with a heart of steel',
    '校军场木人对你的崇敬达到了一个新的高度': 'The training ground wooden dummy\'s reverence for you has reached a new height',
    '任何一项武艺达到尊级九段获得的命格': 'Fate earned when any martial art reaches Venerable Rank 9',
    '校军场木人的眼中你就是神一般的存在': 'In the eyes of the training ground wooden dummy, you are a god-like existence',
    '可以找长安城壶公开启新的英雄道路': 'You may seek Old Hu in Chang\'an City to embark on a new hero\'s path',
    '鱼米乡，天堑地，富庶民，乐一方': 'A land of fish and rice, a natural moat, prosperous people, joy in all directions',
    '谁能一身是胆？谁敢七进七出？': 'Who has courage in every fiber? Who dares charge in and out seven times?',
    '堂上谋臣帷幄，边头猛将干戈': 'Strategists plan within the hall, valiant generals wage war at the frontier',
    '道不尽将军风，传予今日豪雄': 'Words cannot exhaust the general\'s bearing, passed on to today\'s heroes',
    '拥有了与战魂产生共鸣的能力': 'Gained the ability to resonate with the War Soul',
    '赤壁7周年庆典天榜至尊称号': 'Chibi 7th Anniversary Heaven Board Supreme Title',
    '赤壁7周年庆典天榜无双称号': 'Chibi 7th Anniversary Heaven Board Peerless Title',
    '赤壁7周年庆典天榜王者称号': 'Chibi 7th Anniversary Heaven Board King Title',
    '赤壁7周年庆典天榜豪杰称号': 'Chibi 7th Anniversary Heaven Board Hero Title',
    '赤壁7周年庆典地榜至尊称号': 'Chibi 7th Anniversary Earth Board Supreme Title',
    '赤壁7周年庆典地榜无双称号': 'Chibi 7th Anniversary Earth Board Peerless Title',
    '赤壁7周年庆典地榜王者称号': 'Chibi 7th Anniversary Earth Board King Title',
    '赤壁7周年庆典地榜豪杰称号': 'Chibi 7th Anniversary Earth Board Hero Title',
    '赤壁7周年庆典人榜至尊称号': 'Chibi 7th Anniversary Human Board Supreme Title',
    '赤壁7周年庆典人榜无双称号': 'Chibi 7th Anniversary Human Board Peerless Title',
    '赤壁7周年庆典人榜王者称号': 'Chibi 7th Anniversary Human Board King Title',
    '称号只显示已拥有最高级的': 'Title only shows the highest level owned',
    '获得濮阳之战贰所有图鉴后': 'After obtaining all illustrations from Battle of Puyang II',
    '白帝城跑商中获得的称号': 'Title earned in Baidi City Trade Caravan',
    '忠义有千秋，孤胆真英雄': 'Loyalty and righteousness span a thousand autumns; a lone courage makes a true hero',
    '年英雄令活动专属称号': 'Year Hero Token Event Exclusive Title',
    '愿天下有情人终成眷属': 'May All Lovers Be United',
    '总有一天我会当将军的': 'One day I will become a general',
    '哈哈哈,尔等可敢一战': 'Hahaha, do you dare fight?',
    '官渡之战所获得军衔': 'Military Rank earned at Battle of Guandu',
    '年烟花活动专属称号': 'Year Fireworks Event Exclusive Title',
    '年七夕活动专属称号': 'Year Qixi Event Exclusive Title',
    '霸主何为？政通人和': 'What makes a hegemon? Good governance and harmony',
    '霸主何为？天命所归': 'What makes a hegemon? Where the Mandate of Heaven converges',
    '霸主何为？方圆地利': 'What makes a hegemon? Advantage of terrain',
    '千山万水，一路相随': 'A thousand mountains and ten thousand waters, accompanying all the way',
    '跟我冲,取敌人首级': 'Follow me and charge! Take the enemy\'s head',
    '魏国武官上月获得': 'Wei Military Officer earned last month',
    '魏国文官上月获得': 'Wei Civil Officer earned last month',
    '蜀国武官上月获得': 'Shu Military Officer earned last month',
    '蜀国文官上月获得': 'Shu Civil Officer earned last month',
    '吴国武官上月获得': 'Wu Military Officer earned last month',
    '吴国文官上月获得': 'Wu Civil Officer earned last month',
    '兵曹长吏习演武处': 'Military Affairs Officer\'s Martial Arts Practice Ground',
    '逆旅河山战场获得': 'Earned in Battle of Journey Through Rivers and Mountains',
    '王者归来限量称号': 'King Returns Limited Title',
    '赤壁玩家专属称号': 'Chibi Player Exclusive Title',
    '得天命者，定四方': 'Those who gain the Mandate of Heaven secure the four corners',
    '得地利者，长久安': 'Those who gain the advantage of terrain enjoy lasting peace',
    '光棍节里彻底脱光': 'Stripped bare on Singles\' Day',
    '魏国武勋排行第': 'Wei Military Merit Ranking ',
    '魏国文勋排行第': 'Wei Civil Merit Ranking ',
    '蜀国武勋排行第': 'Shu Military Merit Ranking ',
    '蜀国文勋排行第': 'Shu Civil Merit Ranking ',
    '吴国武勋排行第': 'Wu Military Merit Ranking ',
    '吴国文勋排行第': 'Wu Civil Merit Ranking ',
    '葭萌关奖励称号': 'Jiameng Pass Reward Title',
    '七星阵成就称号': 'Seven Star Formation Achievement Title',
    '群英会奖励称号': 'Heroes Assembly Reward Title',
    '天命得之定四方': 'Mandate of Heaven, gained to secure the four corners',
    '人力夺之斩八荒': 'By human might seized, to cleave the eight wildernesses',
    '天下皆唾手可得': 'All under heaven is within reach',
    '间在军团基地': 'at the Legion Base',
    '活动专属称号': 'Event Exclusive Title',
    '中获得的称号': 'Title Earned in',
    '私人订制称号': 'Custom Title',
    '上军大将军印': 'Seal of the Upper Army Grand General',
    '中军大将军印': 'Seal of the Central Army Grand General',
    '右车骑将军印': 'Seal of the Right Chariot & Cavalry General',
    '右骠骑将军印': 'Seal of the Right Cavalry General',
    '抚军大将军印': 'Seal of the Army-Supporting Grand General',
    '辅国大将军印': 'Seal of the State-Assisting Grand General',
    '镇军大将军印': 'Seal of the Army-Guarding Grand General',
    '前领军将军印': 'Seal of the Front Vanguard General',
    '右领军将军印': 'Seal of the Right Vanguard General',
    '后领军将军印': 'Seal of the Rear Vanguard General',
    '左领军将军印': 'Seal of the Left Vanguard General',
    '永久生效：': 'Permanent Effect: ',
    '永久生效:': 'Permanent Effect: ',
    '装备生效：': 'Equipment Effect: ',
    '装备生效:': 'Equipment Effect: ',
    '可于周日晚': 'Claimable Sunday evening',
    '获得的称号': 'Title Earned',
    '车骑将军印': 'Seal of the Chariot & Cavalry General',
    '骠骑将军印': 'Seal of the Cavalry General',
    '右大将军印': 'Seal of the Right Grand General',
    '镇东将军印': 'Seal of the General Who Guards the East',
    '镇西将军印': 'Seal of the General Who Guards the West',
    '镇南将军印': 'Seal of the General Who Guards the South',
    '镇北将军印': 'Seal of the General Who Guards the North',
    '征东将军印': 'Seal of the General Who Conquers the East',
    '征西将军印': 'Seal of the General Who Conquers the West',
    '征南将军印': 'Seal of the General Who Conquers the South',
    '征北将军印': 'Seal of the General Who Conquers the North',
    '排行榜第': 'Leaderboard Rank ',
    '地区声望': 'Region Renown',
    '族系声望': 'Clan Renown',
    '永久生效': 'Permanent Effect',
    '装备生效': 'Equipment Effect',
    '法术抗性': 'Spell Resist',
    '直接抗性': 'Direct Resist',
    '演义战场': 'Romance Battlefield',
    '逆旅河山': 'Journey Through Rivers and Mountains',
    '王者归来': 'King Returns',
    '欢度圣诞': 'Merry Christmas',
    '万众瞩目': 'Center of Attention',
    '豪气冲天': 'Valorous Spirit',
    '学会技能': 'Learn Skill',
    '忍耐钓术': 'Endurance Fishing',
    '不瞬之目': 'Unblinking Eye',
    '杖八金刚': 'Eight金刚 Staff',
    '大丞相印': 'Seal of the Grand Chancellor',
    '大将军印': 'Seal of the Grand General',
    '大都督印': 'Seal of the Grand Commander',
    '卫将军印': 'Seal of the Guard General',
    '右都护印': 'Seal of the Right Protector General',
    '大司农印': 'Seal of the Grand Minister of Agriculture',
    '大鸿胪印': 'Seal of the Grand Ceremonial Master',
    '左都护印': 'Seal of the Left Protector General',
    '京兆尹印': 'Seal of the Capital Governor',
    '光禄勋印': 'Seal of the Master of Ceremonies',
    '前监军印': 'Seal of the Front Inspector',
    '右扶风印': 'Seal of the Right Fuyi Governor',
    '右监军印': 'Seal of the Right Inspector',
    '后监军印': 'Seal of the Rear Inspector',
    '左监军印': 'Seal of the Left Inspector',
    '大长秋印': 'Seal of the Grand Chamberlain',
    '左冯翊印': 'Seal of the Left Fengyi Governor',
    '阵营：': 'Faction: ',
    '阵营:': 'Faction: ',
    '来源：': 'Source: ',
    '来源:': 'Source: ',
    '印玺：': 'Seal: ',
    '印玺:': 'Seal: ',
    '全资质': 'All Aptitudes',
    '英雄名': 'Hero Name',
    '交流群': 'Exchange Group',
    '品三国': 'Three Kingdoms Connoisseur',
    '传千古': 'passed down through the ages',
    '司徒印': 'Seal of the Minister of Works',
    '司空印': 'Seal of the Minister of Education',
    '太尉印': 'Seal of the Grand Commandant',
    '卫尉印': 'Seal of the Guard Commander',
    '太仆印': 'Seal of the Grand Coachman',
    '太常印': 'Seal of the Grand Ceremonial',
    '宗正印': 'Seal of the Imperial Clan Director',
    '廷尉印': 'Seal of the Chief Justice',
    '少府印': 'Seal of the Director of the Imperial Household',
    '地区': 'Region',
    '族系': 'Clan',
    '青龙': 'Azure Dragon',
    '白虎': 'White Tiger',
    '朱雀': 'Vermilion Bird',
    '玄武': 'Black Tortoise',
    '策划': 'Planner',
    '限时': 'Limited Time',
    '雏凤': 'Young Phoenix',
    '潜龙': 'Hidden Dragon',
    '魏': 'Wei',
    '蜀': 'Shu',
    '吴': 'Wu',
    '名': 'place',
    '2015年520活动': '2015 520 Event',
    '杖八金刚': 'Eight-Vajra Staff',
    '限时7天': 'Limited Time 7 days',
    '防御值': 'Defense',
    '体力值': 'Stamina',
    '首获': 'First time won',
    '再获': 'Second time won',
    '三获': 'Third time won',
    '四获': 'Fourth time won',
    '金刚': 'Vajra',
    '限时': 'Limited Time',
    '值': '',

    '首获《赤壁》外传战场策划大奖的奖励称号': 'First time winning the Chibi Side Story Battlefield Planner Grand Prize reward title',
    '再获《赤壁》外传战场策划大奖的奖励称号': 'Second time winning the Chibi Side Story Battlefield Planner Grand Prize reward title',
    '三获《赤壁》外传战场策划大奖的奖励称号': 'Third time winning the Chibi Side Story Battlefield Planner Grand Prize reward title',
    '四获《赤壁》外传战场策划大奖的奖励称号': 'Fourth time winning the Chibi Side Story Battlefield Planner Grand Prize reward title',
    '专属称号': 'Exclusive Title',

}

def apply_stats2(text):
    """Apply extended stats/labels longest-match-first."""
    for src, dst in sorted(STATS2.items(), key=lambda x: -len(x[0])):
        text = text.replace(src, dst)
    return text


TITLE_LABELS = {'名流': 'Celebrity', '豪侠': 'Hero', '七十二众': 'Seventy-Two Heroes'}

REGION_RANK_LABELS = {
    '新秀': 'Rookie', '名杰': 'Renowned Hero', '精英': 'Elite',
    '栋梁': 'Pillar', '国士': 'National Hero', '柱石': 'Cornerstone',
    '名士': 'Famous Scholar', '英杰': 'Hero', '尊者': 'Venerable',
    '七秀': 'Seven Stars', '十八骑': 'Eighteen Cavalry', '三十六强': 'Thirty-Six Champions',
    '七豪': 'Seven Heroes', '七杰': 'Seven Champions', '七雄': 'Seven Warriors',
    '七怪': 'Seven Eccentrics', '七俊': 'Seven Talents', '七侠': 'Seven Knights',
}

REGION_TITLES = {
    '中原': 'Central Plains', '关中': 'Guanzhong', '南蛮': 'Southern Barbarians',
    '巫南': 'Wunan', '巴蜀': 'Ba-Shu', '江南': 'Jiangnan',
    '川南': 'South Sichuan', '东海': 'Eastern Sea',
    '河北': 'Hebei', '荆襄': 'Jing-Xiang', '西凉': 'Xi Liang',
    '赤壁': 'Chibi', '八顾': 'Ba Gu', '八骏': 'Ba Jun',
}


HEROES = {
    '典韦': 'Dian Wei', '吕布': 'Lu Bu', '尚香': 'Shangxiang', '赵云': 'Zhao Yun',
    '刘备': 'Liu Bei', '孙权': 'Sun Quan', '曹操': 'Cao Cao',
}

# Chinese nine-rank official system. 正 = principal, 从 = secondary/sub.
OFFICES = {
    '大丞相': 'Grand Chancellor', '大将军': 'Grand General', '大都督': 'Grand Commander',
    '卫将军': 'Guard General', '司徒': 'Minister of Works', '司空': 'Minister of Education',
    '太尉': 'Grand Commandant', '车骑将军': 'Chariot & Cavalry General',
    '骠骑将军': 'Cavalry General',
    '上军大将军': 'Upper Army Grand General', '中军大将军': 'Central Army Grand General',
    '卫尉': 'Guard Commander', '右大将军': 'Right Grand General',
    '右车骑将军': 'Right Chariot & Cavalry General', '右都护': 'Right Protector General',
    '右骠骑将军': 'Right Cavalry General', '大司农': 'Grand Minister of Agriculture',
    '大鸿胪': 'Grand Ceremonial Master', '太仆': 'Grand Coachman',
    '太常': 'Grand Ceremonial', '左都护': 'Left Protector General',
    '抚军大将军': 'Army-Supporting Grand General', '辅国大将军': 'State-Assisting Grand General',
    '镇军大将军': 'Army-Guarding Grand General',
    '京兆尹': 'Capital Governor', '光禄勋': 'Master of Ceremonies',
    '前监军': 'Front Inspector', '前领军将军': 'Front Vanguard General',
    '右扶风': 'Right Fuyi Governor', '右监军': 'Right Inspector',
    '右领军将军': 'Right Vanguard General', '后监军': 'Rear Inspector',
    '后领军将军': 'Rear Vanguard General', '大长秋': 'Grand Chamberlain',
    '宗正': 'Minister of Imperial Clan', '少府': 'Privy Treasurer',
    '左冯翊': 'Left Fengyi Governor', '左监军': 'Left Inspector',
    '左领军将军': 'Left Vanguard General', '廷尉': 'Minister of Justice',
    '征东将军': 'General Who Conquers the East', '征北将军': 'General Who Conquers the North',
    '征南将军': 'General Who Conquers the South', '征西将军': 'General Who Conquers the West',
    '镇东将军': 'General Who Guards the East', '镇北将军': 'General Who Guards the North',
    '镇南将军': 'General Who Guards the South', '镇西将军': 'General Who Guards the West',
    '太子太傅': 'Crown Grand Tutor', '将作大匠': 'Master Builder',
    '平东将军': 'General Who Pacifies the East', '平北将军': 'General Who Pacifies the North',
    '平南将军': 'General Who Pacifies the South', '平西将军': 'General Who Pacifies the West',
    '执金吾': 'Guardian of the Capital', '水衡都尉': 'Waterworks Commandant',
    '中书令': 'Director of the Secretariat', '侍中': 'Palace Attendant',
    '前将军': 'Front General', '右将军': 'Right General', '后将军': 'Rear General',
    '左将军': 'Left General', '太子少傅': 'Crown Young Tutor',
    '尚书令': 'Director of State Affairs',
    '中散大夫': 'Consultant Attendant', '五官中郎将': 'Five Offices Commandant',
    '太中大夫': 'Grand Master of Standards', '尚书仆射': 'Director Assistant',
    '御史中丞': 'Vice Censor-in-Chief', '武卫中郎将': 'Martial Guard Commandant',
    '羽林中郎将': 'Feather Forest Commandant', '虎贲中郎将': 'Tiger Guard Commandant',
    '典军中郎将': 'Army Commandant', '太子洗马': 'Crown Groom',
    '建威中郎将': 'Might-Building Commandant', '抚军中郎将': 'Army-Supporting Commandant',
    '散骑常侍': 'Attached Cavalry Attendant', '荡寇中郎将': 'Bandit-Sweeping Commandant',
    '谏议大夫': 'Remonstrance Master', '谒者仆射': 'Usher Assistant',
    '伏波将军': 'Wave-Calming General', '太乐令': 'Grand Music Director',
    '太仓令': 'Grand Granary Director', '太医令': 'Grand Medical Director',
    '太史令': 'Grand Historian', '横野将军': 'Wilderness-Spanning General',
    '讨虏将军': 'Bandit-Punishing General', '鹰扬将军': 'Falcon-Soaring General',
    '偏将': 'Side General', '别驾': 'Regional Aide', '裨将': 'Deputy General',
    '长史': 'Chief Clerk', '主簿': 'Record Secretary', '都尉': 'Commandant',
    '功曹': 'Merit Officer', '校尉': 'Colonel', '书佐': 'Secretary', '军侯': 'Marquis',
}

RANK_PREFIX = {'正': '', '从': 'Sub-'}

def translate_rank(num_str):
    """正一品 -> Grade 1; 从一品 -> Sub-Grade 1; 五品 -> Grade 5."""
    cn_digits = {'一': '1', '二': '2', '三': '3', '四': '4', '五': '5',
                 '六': '6', '七': '7', '八': '8', '九': '9'}
    m = re.match(r'(正|从)?([一二三四五六七八九])品$', num_str)
    if not m:
        return num_str
    sub = 'Sub-' if m.group(1) == '从' else ''
    return f'{sub}Grade {cn_digits[m.group(2)]}'

# ============================================================================
# PREFIX HANDLING
# ============================================================================

PREFIX_RE = re.compile(r'^(\d*(?:\^[0-9a-fA-F]{6})?)')

def split_prefix(s):
    """Split leading flag+color prefix from Chinese body."""
    m = PREFIX_RE.match(s)
    if m:
        return m.group(1), s[m.end():]
    return '', s

def reattach(prefix, body):
    return prefix + body if prefix else body

# ============================================================================
# PATTERN TRANSLATORS (operate on Chinese BODY only)
# ============================================================================

def apply_stats(text):
    """Replace stat terms longest-match-first."""
    for src, dst in sorted(STATS.items(), key=lambda x: -len(x[0])):
        text = text.replace(src, dst)
    return text

CN_NUMERALS = {
    '一': '1', '二': '2', '三': '3', '四': '4', '五': '5',
    '六': '6', '七': '7', '八': '8', '九': '9', '十': '10',
}

def t_stat_perm(body):
    """永久生效\r... or 永久生效:\r... (colon optional)"""
    if body.startswith('永久生效:'):
        rest = body[len('永久生效:'):]
        return 'Permanent Effect:' + '\\r'.join(apply_stats(p) for p in rest.split('\\r'))
    if body.startswith('永久生效'):
        rest = body[len('永久生效'):]
        return 'Permanent Effect' + '\\r'.join(apply_stats(p) for p in rest.split('\\r'))
    return None

def t_equip_effect(body):
    """为头顶称号时生效: / 装备生效："""
    for head in ['为头顶称号时生效:', '为头顶称号时生效：', '装备生效:', '装备生效：']:
        if body.startswith(head):
            rest = body[len(head):]
            return 'Effective when equipped as title:' + '\\r'.join(
                apply_stats(p) for p in rest.split('\\r'))
    return None

def t_marriage_level(body):
    """称号等级：N级 / 称号等级：CN级 (Arabic or Chinese numeral)\\r..."""
    m = re.match(r'称号等级：([一二三四五六七八九十]|\d+)级', body)
    if not m:
        return None
    num = m.group(1)
    level = CN_NUMERALS.get(num, num)
    rest = body[m.end():]
    # Strip leading \r to avoid double separator (function prepends \r after level)
    if rest.startswith('\\r'):
        rest = rest[2:]
    rest = rest.replace('拥有更高级姻缘称号后', 'When you obtain a higher Marriage title')
    rest = rest.replace('属性将移至新的高级称号', 'attributes will move to the new higher title')
    parts = rest.split('\\r')
    new_parts = []
    for p in parts:
        p = apply_stats(p)
        new_parts.append(p)
    return f'Title Level: {level}\\r' + '\\r'.join(new_parts)

def t_title_level_simple(body):
    """称号等级：N级 (just the level line alone)"""
    m = re.match(r'称号等级：(\d+)级$', body)
    if m:
        return f'Title Level: {m.group(1)}'
    return None

def t_faction_renown_rank(body):
    """X国上周获得名望排行榜第N名称号。"""
    m = re.match(r'(魏国|蜀国|吴国|群雄)上周获得名望排行榜第(.+?)名称号。', body)
    if not m:
        return None
    return f'{FACTIONS[m.group(1)]} last week\'s Renown Ranking: {m.group(2)} place title.'

def t_legion_activity(body):
    """X国军团上周活跃度第N名。"""
    m = re.match(r'(魏国|蜀国|吴国|群雄)军团上周活跃度第(.+?)名。', body)
    if not m:
        return None
    return f'{FACTIONS[m.group(1)]} Legion last week\'s Activity Ranking: {m.group(2)} place.'

def t_legion_activity_reward(body):
    """X国军团上周活跃度第N名的奖励称号\\r..."""
    m = re.match(r'(魏国|蜀国|吴国|群雄)军团上周活跃度第(.+?)名的奖励称号', body)
    if not m:
        return None
    f = FACTIONS[m.group(1)]
    rank = cn_rank_en(m.group(2))
    rest = body[m.end():]
    rest = rest.replace('！', '!')
    rest = rest.replace('：', ':')
    rest = rest.replace('18:00到22:00', '18:00 to 22:00')
    rest = rest.replace('可于周日晚18:00到22:00间在军团基地', 'Claim at the Legion Base on Sunday evening between 18:00 and 22:00')
    rest = rest.replace('兵曹长吏习演武处领取奖励。', 'from the Military Affairs Officer\'s Martial Arts Practice Ground.')
    rest = rest.replace('(军团长国家与军团所属国家不同时无法领奖!)', '(Cannot claim if the Legion Leader\'s kingdom differs from the Legion\'s kingdom!)')
    rest = rest.replace('注:军团内成员每升一级可带来大量活跃度。', 'Note: Each level gained by a Legion member brings a large amount of Activity.')
    return f'{f} Legion last week\'s Activity Rank {rank} reward title{rest}'

def t_legion_commander(body):
    """拥有X国第N大势力的军团都督\\r..."""
    m = re.match(r'拥有(魏国|蜀国|吴国|群雄)第(\d+)大势力的军团都督', body)
    if not m:
        return None
    rest = body[m.end():]
    rest = rest.replace('本周军团指令数增加', 'This week\'s Legion Command Count +')
    rest = rest.replace('团员可以前去皇甫炎领取战略指令', 'Members may receive strategic orders from Huangfu Yan')
    rest = rest.replace('本周军团指令数增加', 'This week\'s Legion Command Count +')
    return f"Legion Commander of {FACTIONS[m.group(1)]}'s {m.group(2)} largest power" + rest

def t_peerage(body):
    """名望N获得的爵位。"""
    m = re.match(r'名望(\d+)－(\d+)获得的爵位。', body)
    if m:
        return f'Peerage earned at Renown {m.group(1)}-{m.group(2)}.'
    m = re.match(r'名望(\d+)获得的爵位。', body)
    if m:
        return f'Peerage earned at Renown {m.group(1)}.'
    return None

def cn2int(s):
    """Convert Chinese numeral string to int. Handles 零一二三四五六七八九十百千."""
    digits = {'零': 0, '一': 1, '二': 2, '三': 3, '四': 4, '五': 5, '六': 6, '七': 7, '八': 8, '九': 9}
    units = {'十': 10, '百': 100, '千': 1000}
    section = 0
    number = 0
    for ch in s:
        if ch in digits:
            number = digits[ch]
        elif ch in units:
            if number == 0:
                number = 1  # 十 = 10, not 0
            section += number * units[ch]
            number = 0
    return section + number

def ordinal(n):
    """Return English ordinal: 1 -> 1st, 2 -> 2nd, 3 -> 3rd, 4 -> 4th, 11 -> 11th, 21 -> 21st."""
    if 11 <= (n % 100) <= 13:
        suffix = 'th'
    else:
        suffix = {1: 'st', 2: 'nd', 3: 'rd'}.get(n % 10, 'th')
    return f'{n}{suffix}'

def cn_rank_en(expr):
    """Convert Chinese rank expression to English ordinals.
    '一' -> '1st'; '二到四'/'二至五' -> '2nd to 4th'/'2nd to 5th'; '三十一到一百' -> '31st to 100th'"""
    for sep in ('到', '至'):
        if sep in expr:
            a, b = expr.split(sep)
            return f'{ordinal(cn2int(a))} to {ordinal(cn2int(b))}'
    return ordinal(cn2int(expr))

def t_comp_rank_tail(rest):
    """Translate trailing stat block after arena ranking title head.
    Input like '。\r永久生效\r^ffffff生命上限 +10％\r攻击力上限 +20'
    Preserves \r separators and ^color codes."""
    text = rest.replace('永久生效', 'Permanent Effect')
    text = text.replace('％', '%')
    text = text.replace('。', '.')
    text = apply_stats(text)
    return text

def t_comp_rank(body):
    """竞技积分排行榜第N名... / 竞技积分排行第N名..."""
    m = re.match(r'竞技积分排行第(.+?)名获得的武艺称号', body)
    if m:
        rank = cn_rank_en(m.group(1))
        rest = body[m.end():]
        tail = t_comp_rank_tail(rest) if rest else ''
        return f'Arena Points Ranking {rank} place martial arts title{tail}'
    m = re.match(r'竞技积分排行榜第(.+?)名所获之称号', body)
    if m:
        rank = cn_rank_en(m.group(1))
        return f'Arena Points Ranking {rank} title'
    return None

def t_benevolence_rank(body):
    """仁义值排行榜第N名获得的称号。"""
    m = re.match(r'仁义值排行榜第(.+?)名获得的称号。', body)
    if m:
        return f'Righteousness Ranking {m.group(1)} place title.'
    return None

def t_overlord_weapon(body):
    """X之霸者"""
    m = re.match(r'(.+?)之霸者$', body)
    if not m:
        return None
    w = m.group(1)
    for src, dst in sorted(WEAPONS.items(), key=lambda x: -len(x[0])):
        w = w.replace(src, dst)
    return f'{w} Overlord'

def t_weapon_warrior(body):
    """持X勇士所获之称号"""
    m = re.match(r'持(.+?)勇士所获之称号$', body)
    if not m:
        return None
    w = m.group(1)
    for src, dst in sorted(WEAPONS.items(), key=lambda x: -len(x[0])):
        w = w.replace(src, dst)
    return f'Title earned by a {w} Warrior'

def t_christmas_snowball(body):
    """12.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取N个普通雪球。"""
    m = re.match(r'12\.25－1\.8圣诞活动期间，每天可以在完美礼品使者处领取(\d+)个普通雪球。', body)
    if m:
        return f'During Christmas Event Dec 25 - Jan 8, you can collect {m.group(1)} Normal Snowballs daily from the Perfect Gift Messenger.'
    m = re.match(r'圣诞活动期间获得新年积分第(.+?)名的勇士。', body)
    if m:
        return f'Warrior who ranked #{m.group(1)} in New Year Points during Christmas Event.'
    return None

def t_chibi_award(body):
    """N获《赤壁》外传..."""
    m = re.match(r'(.+?)获《赤壁》外传战场(.+?)大奖的奖励称号', body)
    if m:
        ordinal_map = {'首': 'First', '再': 'Second', '三': 'Third', '四': 'Fourth'}
        ordinal = ordinal_map.get(m.group(1), m.group(1))
        return f'{ordinal} time won the Chibi Side Story Battlefield {m.group(2)} Grand Prize reward title'
    return None

def t_hero_inheritance(body):
    """得名将X之传承\\r装备生效：\\r..."""
    m = re.match(r'得名将(.+?)之传承', body)
    if m:
        hero = m.group(1)
        for src, dst in HEROES.items():
            hero = hero.replace(src, dst)
        rest = body[m.end():]
        rest = rest.replace('装备生效：', 'Equipment Effect:').replace('装备生效:', 'Equipment Effect:')
        parts = rest.split('\\r')
        return f'Inheritance of the famed general {hero}\\r' + '\\r'.join(apply_stats(p) for p in parts)
    m = re.match(r'得英雄(.+?)之传承', body)
    if m:
        hero = m.group(1)
        for src, dst in HEROES.items():
            hero = hero.replace(src, dst)
        return f'Inheritance of the hero {hero}'
    return None

def t_military_rank(body):
    """〓rank office〓 / ※〓rank office〓※ (nine-rank official titles)"""
    m = re.match(r'※?〓([^〓]+?) ([^〓]+?)〓※?$', body)
    if not m:
        return None
    rank = translate_rank(m.group(1).strip())
    office = OFFICES.get(m.group(2).strip(), m.group(2).strip())
    return f'〓{rank} {office}〓'

def t_title_rank_combo(body):
    """【X国Y】 / ※X国Y※ / ※X区Y※ (faction or region + rank, optionally wrapped)"""
    m = re.match(r'[【※]?(魏国|蜀国|吴国|群雄|河北|荆襄|西凉|赤壁|八顾|八骏|中原|关中|南蛮|巫南|巴蜀|江南|川南|东海)(义士|侠客|豪杰|英雄|名士|英杰|尊者|小霸王|五虎将|家将|重臣|猛将|义臣|名流|仕官|七秀|十八骑|三十六强|七十二众|新秀|名杰|精英|栋梁|国士|柱石|七豪|七杰|七雄|七怪|七俊|七侠)[】※]?', body)
    if not m:
        return None
    place = {**FACTIONS, **REGION_TITLES}.get(m.group(1), m.group(1))
    rank = {**RANK_MAP, **TITLE_LABELS, **REGION_RANK_LABELS}.get(m.group(2), m.group(2))
    return f'{rank} of {place}'

def t_spouse_title(body):
    """【$S的相公】 / 【$S的娘子】"""
    if body == '【$S的相公】':
        return '[$S\'s Husband]'
    if body == '【$S的娘子】':
        return '[$S\'s Wife]'
    return None

def t_merit_general(body):
    """X国功勋彪炳之武将所获之称号\\r获得资格：X国武勋排行第N名"""
    m = re.match(r'(魏国|蜀国|吴国)功勋彪炳之武将所获之称号', body)
    if not m:
        return None
    f = FACTIONS[m.group(1)]
    rest = body[m.end():]
    rest = rest.replace('获得资格：', 'Qualification: ')
    rest = rest.replace(f + '武勋排行第', f + ' Military Merit Ranking #')
    return f'Title earned by the meritorious general of {f}' + rest

def t_merit_civil(body):
    """X国功绩卓越之文臣所获之称号\\r获得资格：X国文勋排行第N名"""
    m = re.match(r'(魏国|蜀国|吴国)功绩卓越之文臣所获之称号', body)
    if not m:
        return None
    f = FACTIONS[m.group(1)]
    rest = body[m.end():]
    rest = rest.replace('获得资格：', 'Qualification: ')
    rest = rest.replace(f + '文勋排行第', f + ' Civil Merit Ranking #')
    return f'Title earned by the outstanding civil minister of {f}' + rest

def t_renown_top100(body):
    """X国声望排行一到一百名的奖励称号\\r国战时拥有部分国家事务的处理权"""
    m = re.match(r'(魏国|蜀国|吴国)声望排行一到一百名的奖励称号', body)
    if not m:
        return None
    f = FACTIONS[m.group(1)]
    rest = body[m.end():]
    rest = rest.replace('国战时拥有部分国家事务的处理权', 'During national wars, holds partial authority over national affairs')
    return f'{f} Renown Ranking top 100 reward title' + rest

def t_region_rank_title(body):
    """※X名流※ / ※X豪侠※ / ※X七十二众※ / ※X新秀※ (region + rank label)"""
    m = re.match(r'※(.+?)(名流|豪侠|七十二众|新秀|名杰|精英|栋梁|国士|柱石)※', body)
    if not m:
        return None
    region = REGION_TITLES.get(m.group(1), m.group(1))
    label = {**TITLE_LABELS, **REGION_RANK_LABELS}.get(m.group(2), m.group(2))
    return f'※{label} of {region}※'

def t_region_renown_title(body):
    """X名流 / X豪杰 (region + rank, no brackets)"""
    m = re.match(r'(中原|关中|南蛮|巫南|巴蜀|江南|川南|东海)(名流|豪杰|豪侠|英雄|义士|侠客|猛将|仕官|重臣|义臣|家将|小霸王|五虎将)$', body)
    if not m:
        return None
    region = REGION_TITLES.get(m.group(1), m.group(1))
    rank = RANK_MAP.get(m.group(2), m.group(2))
    return f'{rank} of {region}'

# 28 lunar mansions (二十八宿). Chinese name -> English name.
MANSIONS = {
    '角木蛟': 'Horn Wood Dragon', '亢金龙': 'Neck Gold Dragon',
    '氐土貉': 'Root Earth Racoon', '房日兔': 'Room Sun Rabbit',
    '心月狐': 'Heart Moon Fox', '尾火虎': 'Tail Fire Tiger',
    '箕水豹': 'Winnow Water Leopard', '斗木獬': 'Dipper Wood Xie',
    '牛金牛': 'Ox Gold Ox', '女土蝠': 'Girl Earth Bat',
    '虚日鼠': 'Void Sun Rat', '危月燕': 'Danger Moon Swallow',
    '室火猪': 'House Fire Pig', '壁水畜': 'Wall Water Beast',
    '奎木狼': 'Legs Wood Wolf', '娄金狗': 'Bond Gold Dog',
    '胃土雉': 'Stomach Earth Pheasant', '昴日鸡': 'Hairy Sun Rooster',
    '毕月乌': 'Net Moon Crow', '觜火猴': 'Turtle Beak Fire Monkey',
    '参水猿': 'Three Water Ape', '井木犴': 'Well Wood Wildcat',
    '鬼金羊': 'Ghost Gold Goat', '柳土獐': 'Willow Earth Deer',
    '星日马': 'Star Sun Horse', '张月鹿': 'Extended Moon Deer',
    '翼火蛇': 'Wings Fire Snake', '轸水蚓': 'Chariot Water Earthworm',
}

def t_player_custom_title(body):
    """玩家^ff7d2f<NAME>^ffffff私人订制称号。"""
    m = re.match(r'玩家(\^[0-9a-fA-F]{6})(.+?)(\^[0-9a-fA-F]{6})私人订制称号。', body)
    if m:
        return f'Player {m.group(1)}{m.group(2)}{m.group(3)} Custom Title.'
    return None


def t_mansion_title(body):
    """【危月燕·危宿一】 / 【危月燕】 (28 lunar mansion titles)"""
    m = re.match(r'【(.+?)·(.+?)宿([一二三四五六七八九十])】$', body)
    if m:
        animal = MANSIONS.get(m.group(1), m.group(1))
        num = CN_NUMERALS.get(m.group(3), m.group(3))
        return f'【{animal} · Mansion {num}】'
    m = re.match(r'【(.+?)】$', body)
    if m and m.group(1) in MANSIONS:
        return f'【{MANSIONS[m.group(1)]}】'
    return None

def t_region_rank_wrapped(body):
    """※Xrank※ (region/faction + rank label, wrapped in ※)"""
    m = re.match(r'※(.+?)※$', body)
    if not m:
        return None
    inner = m.group(1)
    # Nine-rank officials: ※〓从一品 卫将军〓※ already handled by t_military_rank
    if '〓' in inner:
        return None
    # Try region/faction + rank label
    m2 = re.match(r'(大魏|大蜀|大吴|魏国|蜀国|吴国|群雄|大汉|中原|关中|南蛮|巫南|巴蜀|江南|川南|东海|河北|荆襄|西凉|赤壁|八顾|八骏)(.+)$', inner)
    if m2:
        place = {**FACTIONS, **REGION_TITLES, '大魏': 'Great Wei', '大蜀': 'Great Shu', '大吴': 'Great Wu'}.get(m2.group(1), m2.group(1))
        rank = {**RANK_MAP, **TITLE_LABELS, **REGION_RANK_LABELS}.get(m2.group(2), m2.group(2))
        return f'※{rank} of {place}※'
    # Try standalone rank label
    if inner in {**RANK_MAP, **TITLE_LABELS, **REGION_RANK_LABELS}:
        rank = {**RANK_MAP, **TITLE_LABELS, **REGION_RANK_LABELS}[inner]
        return f'※{rank}※'
    return None

MILITARY_RANK_LABELS = {
    '伍长': 'Squad Leader', '什长': 'Platoon Leader',
    '百夫长': 'Centurion', '千夫长': 'Chiliarch',
    '军司马': 'Division Commander', '军侯': 'Marquis',
    '门吏': 'Gate Clerk', '兵卒': 'Soldier', '武卒': 'Warrior',
    '都尉': 'Commandant', '校尉': 'Colonel',
    '中郎将': 'Commandant', '偏将军': 'Side General',
    '裨将军': 'Deputy General', '卫将军': 'Guard General',
    '车骑将军': 'Chariot & Cavalry General', '骠骑将军': 'Cavalry General',
    '大将军': 'Grand General', '大司马': 'Grand Marshal',
    '兵马大都督': 'Grand Commander of Forces',
}

def t_military_rank_label(body):
    """Bare military rank labels (no brackets)"""
    if body in MILITARY_RANK_LABELS:
        return MILITARY_RANK_LABELS[body]
    return None

# ============================================================================
# PAIRS FOR SHORT/PROSE STRINGS
# ============================================================================

PAIRS = {
    '01～3名': 'Ranks 01-3',
    '04～10名': 'Ranks 04-10',
    '0^0184ff师徒奖励称号': '0^0184ffMentor & Apprentice reward title',
    '0^0184ff擂台大会竞技积分达到100点，获得的称号。': '0^0184ffTitle earned when Arena Points reach 100.',
    '0^0184ff校军场木人感到你的战斗力相当不俗。\\r体质 +80': '0^0184ffThe training ground wooden men feel your combat power is quite impressive.\\rStamina +80',
    '0^0184ff每天第一次参与护送可以额外获得一定历练。': '0^0184ffYour first escort participation each day grants a certain amount of bonus EXP.',
    '0^0184ff演义战场“逆旅河山”中获得的称号\\r攻击力 +3,防御值+1': '0^0184ffTitle earned in Chronicle Battlefield "Reversing Rivers and Mountains"\\rAttack +3, Defense +1',
    '0^0184ff白帝城跑商中获得的称号\\r生命值+10，攻击力 +5，防御力+3': '0^0184ffTitle earned in Baidi City Trade Run\\rMax HP +10, Attack +5, Defense +3',
    '0^72fe002009年1月23日－2月26日春节活动期间生效\\r^ffffff攻击力 +5\\r防御力 +5\\r生命值 +5%': '0^72fe00Effective during Spring Festival Event Jan 23 - Feb 26, 2009\\r^ffffffAttack +5\\rDefense +5\\rMax HP +5%',
    '0^72fe00参加全国竞技赛夺得亚军所获之称号': '0^72fe00Title earned by the National Arena runner-up',
    '0^72fe00参加全国竞技赛夺得冠军所获之称号': '0^72fe00Title earned by the National Arena champion',
    '0^72fe00参加全国竞技赛进入八强所获之称号': '0^72fe00Title earned by a National Arena Top 8 competitor',
    '0^72fe00参加全国竞技赛进入四强所获之称号': '0^72fe00Title earned by a National Arena Top 4 competitor',
    '0^72fe00品质：普通': '0^72fe00Quality: Common',
    '0^72fe00嗜血擂台赛胜利者所获之称号': '0^72fe00Title earned by the Bloodthirsty Arena victor',
    '0^72fe00大风起兮云飞扬，威加海内兮归故乡！': '0^72fe00The great wind rises, clouds fly high; power reaches all within the seas, returning to my homeland!',
    '0^72fe00奖励在轩辕圣火的传递过程中有突出贡献的勇者': '0^72fe00Rewards warriors who made outstanding contributions during the passing of the Sacred Flame of Xuanyuan',
    '0^72fe00奖给对游戏有特殊贡献的人': '0^72fe00Awarded to those who made special contributions to the game',
    '0^72fe00师徒奖励称号': '0^72fe00Mentor & Apprentice reward title',
    '0^72fe00师徒称号奖励': '0^72fe00Mentor & Apprentice title reward',
    '0^72fe00情人节情侣专属称号。': "0^72fe00Valentine's Day couple-exclusive title.",
    '0^72fe00拥有9999朵玫瑰的牛人！': '0^72fe00The one who owns 9999 roses!',
    '0^72fe00拥有精兵召集令的勇士所获之称号': '0^72fe00Title earned by warriors holding the Elite Soldier Summoning Order',
    '0^72fe00擂台大会竞技积分达到10点，获得的称号。': '0^72fe00Title earned when Arena Points reach 10.',
    '0^72fe00校军场木人普遍认为你比较能打。\\r体质 +40': '0^72fe00The training ground wooden men generally consider you quite skilled in combat.\\rStamina +40',
    '0^72fe00每天第一次参与护送可以额外获得少量历练。': '0^72fe00Your first escort participation each day grants a small amount of bonus EXP.',
    '0^72fe00永远忠诚的勇士！': '0^72fe00Forever loyal warrior!',
    '0七夕活动中获得的称号！': '0Title earned in Qixi Event!',
    '0义结天下活动奖励称号！': '0Reward title from Brotherhood of the World Event!',
    '0从此便相濡以沫，不离不弃。': '0From now on, nurture each other through hardships, never leaving or abandoning each other.',
    '0你已经是吴国精兵中的一员！': "0You are now one of Kingdom of Wu's elite soldiers!",
    '0你已经是大汉的精兵！': '0You are now an elite soldier of Great Han!',
    '0你已经是蜀国精兵中的一员！': "0You are now one of Kingdom of Shu's elite soldiers!",
    '0你已经是魏国精兵中的一员！': "0You are now one of Kingdom of Wei's elite soldiers!",
    '0你现在已经成为吴国的人士！': '0You have now become a citizen of Kingdom of Wu!',
    '0你现在已经成为蜀国的人士！': '0You have now become a citizen of Kingdom of Shu!',
    '0你现在已经成为魏国的人士！': '0You have now become a citizen of Kingdom of Wei!',
    '0你现在已经是吴国的成员！': '0You are now a member of Kingdom of Wu!',
    '0你现在已经是蜀国的成员！': '0You are now a member of Kingdom of Shu!',
    '0你现在已经是魏国的成员！': '0You are now a member of Kingdom of Wei!',
    '0你现在已经是魏国的成员！\\r身份：军团首领': '0You are now a member of Kingdom of Wei!\\rStatus: Legion Leader',
    '0你现在是一位在野人士！': '0You are now a wandering free agent!',
    '0你现在是自由的闲云野鹤！': '0You are now a free wanderer!',
    '0你现在还没有加入任何国家！': '0You have not joined any nation yet!',
    '0无双战场“隆中奇情”中获得的称号\\r攻击力 +3': '0Title earned in Peerless Battlefield "Romance at Longzhong"\\rAttack +3',
    '0无双战场“隆中奇情”中获得的称号\\r攻击力 +5,生命值 +20': '0Title earned in Peerless Battlefield "Romance at Longzhong"\\rAttack +5, Max HP +20',
    '0无双战场“隆中奇情”中获得的称号\\r攻击力+10,生命值+50': '0Title earned in Peerless Battlefield "Romance at Longzhong"\\rAttack +10, Max HP +50',
    '0校军场木人认为你是他们中的普通一员。\\r体质 +20': '0The training ground wooden men consider you an ordinary member among them.\\rStamina +20',
    '0百团盛典活动中获得，记录遍访故土河山的足迹，乡情永存游子心中。': "0Earned in Hundred Legions Celebration Event, recording footsteps across the homeland; homesickness lives forever in the wanderer's heart.",
    '2010全国竞技赛亚军': '2010 National Arena Runner-up',
    '2010全国竞技赛冠军': '2010 National Arena Champion',
    '2010全国竞技赛季军': '2010 National Arena 3rd Place',
    '2010全国竞技赛的亚军得主': '2010 National Arena Tournament Runner-up',
    '2010全国竞技赛的冠军得主': '2010 National Arena Tournament Champion',
    '2010全国竞技赛的季军得主': '2010 National Arena Tournament Third Place',
    '2010年元旦登高的收获。新年立志高远，你的未来将无比美好！': "Harvest from New Year's Day 2010 Mountain Climbing. Set High Aspirations at the New Year; Your Future Will Be Incomparably Beautiful!",
    '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff体质+120\\r攻击力+10\\r防御力+5': '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffStamina+120\\rAttack+10\\rDefense+5',
    '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff体质+250\\r攻击力+15\\r防御力+10\\r附加伤害+5': '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffStamina+250\\rAttack+15\\rDefense+10\\rBonus DMG+5',
    '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff体质+400\\r攻击力+20\\r防御力+15\\r附加伤害+10\\r暴击附加伤害+10\\r暴击伤害+3%': '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffStamina+400\\rAttack+20\\rDefense+15\\rBonus DMG+10\\rCrit Bonus DMG+10\\rCrit DMG+3%',
    '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff体质+600\\r攻击力+30\\r防御力+20\\r附加伤害+20\\r暴击附加伤害+20\\r暴击伤害+3%\\r暴击+1': '2014年七夕活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffStamina+600\\rAttack+30\\rDefense+20\\rBonus DMG+20\\rCrit Bonus DMG+20\\rCrit DMG+3%\\rCrit+1',
    '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff生命值+1000\\r攻击力+25\\r防御力+20\\r强韧+30\\r暴击抗性+2': '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffHP+1000\\rAttack+25\\rDefense+20\\rToughness+30\\rCrit Resist+2',
    '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff生命值+1000\\r攻击力+25\\r防御力+20\\r强韧+30\\r直接抗性+1\\r间接抗性+1': '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffHP+1000\\rAttack+25\\rDefense+20\\rToughness+30\\r直接抗性+1\\r间接抗性+1',
    '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff生命值+1000\\r攻击力+50\\r防御力+10\\r暴击附加伤害+30\\r刺破+1\\r攻击强度+3%': '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffHP+1000\\rAttack+50\\rDefense+10\\rCrit Bonus DMG+30\\rPierce+1\\rAttack Power+3%',
    '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffff生命值+1000\\r攻击力+50\\r防御力+10\\r暴击附加伤害+30\\r暴击+1\\r暴击伤害+3%': '2015年520活动专属称号。\\r愿天下有情人终成眷属。\\r^ffffffHP+1000\\rAttack+50\\rDefense+10\\rCrit Bonus DMG+30\\rCrit+1\\rCrit DMG+3%',
    '2015年度全国竞技赛亚军奖励！': '2015 National Arena Tournament Runner-up Reward!',
    '2015年度全国竞技赛冠军奖励！': '2015 National Arena Tournament Champion Reward!',
    '2015年度全国竞技赛季军奖励！': '2015 National Arena Tournament Third Place Reward!',
    'A级机动车驾驶员凭证': 'Class A Motor Vehicle Driver Certificate',
    'B级机动车驾驶员凭证': 'Class B Motor Vehicle Driver Certificate',
    'C级机动车驾驶员凭证': 'Class C Motor Vehicle Driver Certificate',
    'PK之王个人赛亚军': 'PK King Personal Tournament Runner-up',
    'PK之王个人赛冠军': 'PK King Personal Tournament Champion',
    'PK之王个人赛季军': 'PK King Personal Tournament 3rd Place',
    'PK之王个人赛的亚军！': 'PK King Individual Tournament Runner-up!',
    'PK之王个人赛的冠军！': 'PK King Individual Tournament Champion!',
    'PK之王个人赛的季军！': 'PK King Individual Tournament Third Place!',
    'VIP1级象征\\r等级越高，特权越多！': 'VIP Level 1 Symbol\\rThe Higher the Level, the More Privileges!',
    'VIP2级象征\\r等级越高，特权越多！': 'VIP Level 2 Symbol\\rThe Higher the Level, the More Privileges!',
    'VIP3级象征\\r等级越高，特权越多！': 'VIP Level 3 Symbol\\rThe Higher the Level, the More Privileges!',
    'VIP4级象征\\r等级越高，特权越多！': 'VIP Level 4 Symbol\\rThe Higher the Level, the More Privileges!',
    'VIP5级象征\\r等级越高，特权越多！': 'VIP Level 5 Symbol\\rThe Higher the Level, the More Privileges!',
    '^72fe00【兵卒】': '^72fe00【Soldier】',
    '^72fe00【兵长】': '^72fe00【Corporal】',
    '^72fe00【新兵】': '^72fe00【Recruit】',
    '^72fe00废弃': '^72fe00Deprecated',
    '^ffbc3c废弃': '^ffbc3cDeprecated',
    '※〓大吴霸主〓※': '※〓Great Wu Overlord〓※',
    '※〓大蜀霸主〓※': '※〓Great Shu Overlord〓※',
    '※〓大魏霸主〓※': '※〓Great Wei Overlord〓※',
    '★三国大富豪★': '★ Three Kingdoms Tycoon ★',
    '★多金善贾★': '★ Wealthy Merchant ★',
    '★富甲一方★': '★ Richest in the Region ★',
    '★小财主★': '★ Little Moneybag ★',
    '★知名大富翁★': '★ Famous Tycoon ★',
    '『十全武者』': '『Perfect Warrior』',
    '【$T的徒弟】': "【$T's Apprentice】",
    '【17173VIP试驾英雄】': '【17173 VIP Test Drive Hero】',
    '【17173斗群英】': '【17173 Hero Clash】',
    '【17173激斗战天下】': '【17173 Fierce Battle for the World】',
    '【17173百变英雄】': '【17173 Versatile Hero】',
    '【2010全国竞技赛亚军】': '【2010 National Arena Runner-up】',
    '【2010全国竞技赛冠军】': '【2010 National Arena Champion】',
    '【2010全国竞技赛季军】': '【2010 National Arena 3rd Place】',
    '【2013·斗群英个人争霸赛亚军】': '【2013 · Hero Clash Individual Runner-up】',
    '【2013·斗群英个人争霸赛冠军】': '【2013 · Hero Clash Individual Championship】',
    '【2013·斗群英个人争霸赛季军】': '【2013 · Hero Clash Individual Third Place】',
    '【A级机动车驾驶员】': '【Class A Motor Vehicle Driver】',
    '【B级机动车驾驶员】': '【Class B Motor Vehicle Driver】',
    '【C级机动车驾驶员】': '【Class C Motor Vehicle Driver】',
    '【YY皇室斗群英】': '【YY Royal Hero Clash】',
    '【Y仔特权试驾英雄】': '【Y Boy Privilege Test Drive Hero】',
    '【Y仔试驾先锋】': '【Y Boy Test Drive Vanguard】',
    '【sina特权试驾英雄】': '【sina Privilege Test Drive Hero】',
    '【※春风习习带头羊又登泰山顶】': '【Spring Breeze Blows; The Leader Sheep Ascends Mount Tai Again】',
    '【※羊笔如椽描山绘水书春意】': "【Sheep Brush Like a Rafter; Painting Mountains and Rivers; Writing Spring's Meaning】",
    '【一代名师】': '【Teacher of a Generation】',
    '【一夕相守千载情】': '【One Night Together, A Thousand Years of Love】',
    '【一夜筑城的人】': '【The One Who Built a City in One Night】',
    '【一往情深深几许】': '【How Deep Is Love】',
    '【一心一意一双人】': '【Wholeheartedly, One Couple】',
    '【一等护国大将军】': '【First-Class Guardian of the Nation Great General】',
    '【一等车骑将军】': '【First-Class Chariot and Cavalry General】',
    '【一等骠骑将军】': '【First-Class Cavalry General】',
    '【一统天下无二人】': '【Unify the World, None Like Me】',
    '【一身布衣从军行】': '【In Plain Clothes, Joining the Army】',
    '【一马当先乱世枭雄】': '【Riding Ahead of All; Tyrant of the Chaotic Age】',
    '【一马当先天下无双】': '【Riding Ahead of All; Unparalleled in the World】',
    '【一马当先群雄并起】': '【Riding Ahead of All; Heroes Rising Together】',
    '【一马当先诸侯纷争】': '【Riding Ahead of All; Lords in Dispute】',
    '【一马踏千山】': '【One Horse Treads a Thousand Hills】',
    '【一骑当千·初露锋芒】': '【One Rider Against a Thousand · First Showing of Brilliance】',
    '【一骑当千·功成名就】': '【One Rider Against a Thousand · Achievement and Fame Accomplished】',
    '【一骑当千·唯我独尊】': '【One Rider Against a Thousand · Sole Supreme】',
    '【一骑当千·天下无双】': '【One Rider Against a Thousand · Unparalleled in the World】',
    '【一骑当千·威震四野】': '【One Rider Against a Thousand · Might Shakes the Four Wilds】',
    '【一骑当千·武林高手】': '【One Rider Against a Thousand · Martial Arts Master】',
    '【一骑当千·盖世英豪】': '【One Rider Against a Thousand · Hero of the Age】',
    '【一骑当千·神威天成】': '【One Rider Against a Thousand · Divine Might Born of Heaven】',
    '【一骑当千·纵横天下】': '【One Rider Against a Thousand · Roaming the World Free】',
    '【一骑当千·绝世奇才】': '【One Rider Against a Thousand · Peerless Prodigy】',
    '【一骑当千·运筹帷幄】': '【One Rider Against a Thousand · Strategizing Behind Curtains】',
    '【一骑当千·龙吟九霄】': '【One Rider Against a Thousand · Dragon Roar in the Ninth Heaven】',
    '【一骑当千】': '【One Rider Against a Thousand】',
    '【万人敌】': '【Takes On Ten Thousand】',
    '【万夫莫敌针锋对】': '【None Can Match; Needle Point Against Needle Point】',
    '【万水千山总关情】': '【Ten Thousand Waters and a Thousand Mountains All Bear Feeling】',
    '【万里月光号的助手】': '【Assistant of the Ten-Thousand-Mile Moonlight】',
    '【三分天下·丹元廉贞】': '【Three Kingdoms Division · Danyuan Lianzhen】',
    '【三分天下·天关破军】': '【Three Kingdoms Division · Tianguan Army Breaker】',
    '【三分天下·玄冥文曲】': '【Three Kingdoms Division · Xuanming Wenqu】',
    '【三分霸主】': '【Overlord of the Three Kingdoms】',
    '【三千世界万行具足觉妙如来逆时自在法王】': '【Thirty Thousand Worlds, All Practices Complete, Awakened Wondrous Tathagata, Dharma King of Timeless Freedom】',
    '【三千功名尘与土】': '【Three Thousand Merits and Fame Are Dust and Earth】',
    '【三君贤师】': '【Three Lords, Worthy Teachers】',
    '【三国巡礼者】': '【Pilgrim of the Three Kingdoms】',
    '【三国无敌】': '【Invincible in the Three Kingdoms】',
    '【三国试驾先锋】': '【Three Kingdoms Test Drive Vanguard】',
    '【三等护国大将军】': '【Third-Class Guardian of the Nation Great General】',
    '【三等车骑将军】': '【Third-Class Chariot and Cavalry General】',
    '【三等骠骑将军】': '【Third-Class Cavalry General】',
    '【不屈之人】': '【The Unyielding】',
    '【与子偕老】': '【Growing Old Together】',
    '【专业采诗官】': '【Professional Poetry Collector】',
    '【专坑小马】': '【Specialized in Trapping Little Horses】',
    '【世界大同】': '【Great Harmony in the World】',
    '【丙申金猴抱新喜，春满大地福满人】': '【Bingshen Golden Monkey Embraces New Joy; Spring Fills the Earth, Fortune Fills the People】',
    '【东游玩子陪你玩赤壁】': '【Eastern Wanderer Plays Chibi With You】',
    '【两仪极渊】': '【Two Principles, Ultimate Abyss】',
    '【两生花开不记年】': '【Two Lives in Bloom, Years Unremembered】',
    '【个人赛亚军】': '【Personal Tournament Runner-up】',
    '【个人赛冠军】': '【Personal Tournament Champion】',
    '【个人赛季军】': '【Personal Tournament 3rd Place】',
    '【中级名师】': '【Intermediate Teacher】',
    '【中级大师】': '【Intermediate Master】',
    '【中级师傅】': '【Intermediate Master】',
    '【举世无双人见人爱花见花开开天辟地好少年】': '【Unparalleled in the World; Everyone Loves You; Flowers Bloom at Your Sight; A Marvelous Youth Who Creates Heaven and Earth】',
    '【九方星野】': '【Nine Directions, Starry Wilds】',
    '【九歌云中君】': '【Nine Songs: Lord in the Clouds】',
    '【九死一生】': '【Nine Deaths, One Life】',
    '【习武之人】': '【Martial Practitioner】',
    '【乡侯】': '【Village Marquis】',
    '【乱世战群雄·执手留英名】': '【Chaotic Age Battles Among Heroes · Holding Hands Leaves a Noble Name】',
    '【乱世歌者】': '【Singer of the Chaotic Age】',
    '【二月初惊见草芽】': '【Early Spring, First Surprise at the Grass Buds】',
    '【二等护国大将军】': '【Second-Class Guardian of the Nation Great General】',
    '【二等车骑将军】': '【Second-Class Chariot and Cavalry General】',
    '【二等骠骑将军】': '【Second-Class Cavalry General】',
    '【云游山水的小贩】': '【Wandering Mountain Peddler】',
    '【五丁部落的客人】': '【Guest of the Five-Ding Tribe】',
    '【五丁部落的救星】': '【Savior of the Five-Ding Tribe】',
    '【五丁部落的朋友】': '【Friend of the Five-Ding Tribe】',
    '【五丁部落的英雄】': '【Hero of the Five-Ding Tribe】',
    '【五湖四海皆春色万水千山尽得辉】': '【Five Lakes and Four Seas All in Spring Colors; Ten Thousand Waters and a Thousand Mountains Bathed in Brilliance】',
    '【五虎将·义薄云天荡九州】': '【Five Tiger Generals · Righteousness Reaches the Clouds, Sweeping the Nine Provinces】',
    '【五虎将·狮盔银铠冠三军】': '【Five Tiger Generals · Lion Helm and Silver Armor Crown Three Armies】',
    '【五虎将·长弓满月惊风雷】': '【Five Tiger Generals · Long Bow Full as the Moon Startles Wind and Thunder】',
    '【五虎将·阵前一喝破人胆】': '【Five Tiger Generals · One Shout Before the Formation Breaks Enemy Courage】',
    '【五虎将·龙吟虎啸贯千秋】': '【Five Tiger Generals · Dragon Roar and Tiger Howl Resound Through the Ages】',
    '【亮粉】': '【Bright Powder】',
    '【人中赤兔马中吕布】': '【Red Hare Among Horses, Lu Bu Among Men】',
    '【人民艺术家】': "【People's Artist】",
    '【人生若只如初见】': '【If Life Were Only Like First Meetings】',
    '【人间路快乐少年郎】': '【Happy Youth on the Human Path】',
    '【任人唯贤取众长】': '【Employ the Worthy, Take All Strengths】',
    '【伏鹿圣者】': '【Deer-Taming Sage】',
    '【众人群中立杆影】': '【Standing Tall Among the Crowd】',
    '【伯爵】': '【Earl】',
    '【似曾相识燕归来】': '【Swallows Return as If Familiar】',
    '【佛挡杀佛】': '【Kill Buddhas If They Stand in the Way】',
    '【侠义之剑】': '【Sword of Chivalry】',
    '【侯爵】': '【Marquis】',
    '【倾国倾城丶大魏佳人】': '【City-Tilting Beauty · Great Wei Beauty】',
    '【傲群英·刀猛胜云长】': '【Heroic Pride · Blade Fiercer Than Yunchang】',
    '【傲群英·剑舞美周郎】': '【Heroic Pride · Sword Dance as Beautiful as Zhoulang】',
    '【傲群英·叉疾战张辽】': '【Heroic Pride · Trident Speed Battles Zhang Liao】',
    '【傲群英·弓准比黄忠】': '【Heroic Pride · Bow as Accurate as Huang Zhong】',
    '【傲群英·弩灵超张颌】': '【Heroic Pride · Crossbow Spirit Surpasses Zhang He】',
    '【傲群英·戟画过吕布】': '【Heroic Pride · Halberd Art Surpasses Lu Bu】',
    '【傲群英·扇谋赛诸葛】': '【Heroic Pride · Fan Strategy Rivals Zhuge】',
    '【傲群英·斧威敌徐晃】': '【Heroic Pride · Axe Might Rivals Xu Huang】',
    '【傲群英·杖仙师左慈】': '【Heroic Pride · Staff Immortal Master Zuoci】',
    '【傲群英·枪快如子龙】': '【Heroic Pride · Spear as Swift as Zilong】',
    '【傲群英·棍风似程普】': '【Heroic Pride · Staff Wind Like Cheng Pu】',
    '【傲群英·爪袭甘兴霸】': '【Heroic Pride · Claw Strike Like Gan Xingba】',
    '【傲群英·环巧孙尚香】': '【Heroic Pride · Ring Skill Like Sun Shangxiang】',
    '【傲群英·盾挡痴许褚】': '【Heroic Pride · Shield Blocks Foolish Xu Chu】',
    '【傲群英·舞妙过貂蝉】': '【Heroic Pride · Dance More Beautiful Than Diaochan】',
    '【傲群英·钩意赫司马】': '【Heroic Pride · Hook Intent Shames Sima】',
    '【傲群英·钺狠斗魏延】': '【Heroic Pride · Battle Axe Fiercely Fights Wei Yan】',
    '【傲群英·锏胜太史慈】': '【Heroic Pride · Mace Surpasses Taishi Ci】',
    '【傲群英·锤动撼典韦】': '【Heroic Pride · Hammer Shakes Dian Wei】',
    '【傲群英·鞭乱如甄姬】': '【Heroic Pride · Whip Chaos Like Zhen Ji】',
    '【傲视三军新英雄】': '【New Hero Who Towers Over Three Armies】',
    '【元帅】': '【Marshal】',
    '【八卦异士】': '【Bagua Eccentric】',
    '【八厨君子】': '【Gentleman of the Eight Kitchens】',
    '【八及君子】': '【Gentleman of the Eight Reaches】',
    '【八阵苍穹】': '【Eight Formations of the Firmament】',
    '【公会斗群英,天下战火燃】': '【Guild Hero Clash, Fires of War Ignite the World】',
    '【公会群英聚,天下战火燃】': '【Guild Heroes Gather, Fires of War Ignite the World】',
    '【公爵】': '【Duke】',
    '【六扇门神捕】': '【Six Doors Divine Catcher】',
    '【六载热血赤壁情,三国激情永不休】': '【Six Years of Hot-blooded Chibi Love; Three Kingdoms Passion Never Ends】',
    '【关中圣雄】': '【Sage Hero of Guanzhong】',
    '【关中王者】': '【King of Guanzhong】',
    '【关内侯】': '【Marquis Within the Pass】',
    '【兵卒】': '【Soldier】',
    '【兵法透彻】': '【Thorough in the Art of War】',
    '【兵长】': '【Corporal】',
    '【兹尔多士为民先锋】': '【You Scholars Are the Vanguard of the People】',
    '【冠军·天下第一团】': "【Champion · World's Number One Legion】",
    '【冲斗七星大将军】': '【Great General of the Seven Star Charge】',
    '【冲破天权星】': '【Breaking the Heavenly Authority Star】',
    '【冲破天玑星】': '【Breaking the Heavenly Mechanism Star】',
    '【冲破天璇星】': '【Breaking the Heavenly Jade Star】',
    '【冲破开阳星】': '【Breaking the Opening Yang Star】',
    '【冲破玉衡星】': '【Breaking the Heavenly Balance Star】',
    '【冷笑话帝】': '【Emperor of Cold Jokes】',
    '【冷血精兵】': '【Cold-Blooded Elite】',
    '【几回魂梦与君同】': '【How Many Times in Dreams With You】',
    '【凤雏弟子】': "【Fengchu's Disciple】",
    '【凯歌阵阵千里马早过玉门关※】': '【Victory Songs Ring; The Thousand-li Horse Has Long Passed Jade Gate Pass】',
    '【刀猛胜云长】': '【Blade Fiercer Than Yunchang】',
    '【初立擂台试高低】': '【First Arena Duel】',
    '【初级名师】': '【Novice Teacher】',
    '【初级大师】': '【Junior Master】',
    '【初级师傅】': '【Novice Master】',
    '【前路猛将谁人敌】': '【Who Can Match the Fierce General Ahead】',
    '【剑舞美周郎】': '【Sword Dance as Beautiful as Zhoulang】',
    '【副将】': '【Deputy General】',
    '【功成名就】': '【Achievement and Fame Accomplished】',
    '【勇士精英】': '【Warrior Elite】',
    '【勇斗三国·万人莫敌】': '【Bravely Fighting the Three Kingdoms · None Can Match Ten Thousand Men】',
    '【勇斗三国·举世无双】': '【Bravely Fighting the Three Kingdoms · Unparalleled in the World】',
    '【勇斗三国·乱世英豪】': '【Bravely Fighting the Three Kingdoms · Hero of the Chaotic Age】',
    '【勇斗三国·单兵之王】': '【Bravely Fighting the Three Kingdoms · King of Individual Soldiers】',
    '【勇斗三国·唯我称雄】': '【Bravely Fighting the Three Kingdoms · Only I Am the Hero】',
    '【勇斗三国·所向披靡】': '【Bravely Fighting the Three Kingdoms · Invincible】',
    '【勇斗三国·独霸一方】': '【Bravely Fighting the Three Kingdoms · Dominating One Region】',
    '【勇斗三国·英勇无敌】': '【Bravely Fighting the Three Kingdoms · Brave and Invincible】',
    '【勇斗三国·霸王降临】': '【Bravely Fighting the Three Kingdoms · The Overlord Descends】',
    '【化蝶去寻花，夜夜栖芳草】': '【Transformed into a Butterfly Seeking Flowers; Every Night Resting on Fragrant Grass】',
    '【十人敌】': '【Takes On Ten】',
    '【十八武艺展绝学】': '【Eighteen Martial Arts Displayed in Peerless Skill】',
    '【十八诸侯会东都】': '【Eighteen Lords Gather at the Eastern Capital】',
    '【千人敌】': '【Takes On Thousand】',
    '【千里独行客】': '【Lone Traveler of a Thousand Miles】',
    '【单枪匹马战温侯】': '【Single-Handed Battle Against Marquis Wen】',
    '【南中蛮王】': '【Barbarian King of Southern Zhong】',
    '【南中踏破】': '【Southern Zhong Conquered】',
    '【南蛮圣雄】': '【Sage Hero of the Southern Barbarians】',
    '【南蛮王者】': '【King of the Southern Barbarians】',
    '【印象派画家】': '【Impressionist Painter】',
    '【历史见证者】': '【Witness of History】',
    '【原来是美男啊】': '【So He Is Handsome!】',
    '【县侯】': '【County Marquis】',
    '【双重★身份】': '【Double ★ Identity】',
    '【口吐莲花小商人】': '【Lotus-Blooming-Mouth Little Merchant】',
    '【只愿君心似我心】': '【Only Wishing Your Heart Like Mine】',
    '【同袍之谊永不弃】': '【Comradeship Never Abandoned】',
    '【名侦探】': '【Great Detective】',
    '【吴·精锐将臣】': '【Wu · Elite Officer and Minister】',
    '【吴国人士】': '【Citizen of Wu】',
    '【吴国公】': '【Duke of Wu】',
    '【吴国发言官】': '【Wu Spokesperson】',
    '【吴国天下第一主公】': '【Wu No.1 Lord】',
    '【吴国夫人】': '【Lady of Wu】',
    '【吴国头目】': '【Wu Chieftain】',
    '【吴国将领】': '【Wu General】',
    '【吴国精兵】': '【Wu Elite Soldier】',
    '【吴王】': '【King of Wu】',
    '【吾将上下而求索】': '【I Shall Search High and Low】',
    '【咒泉乡旅人】': '【Curse-Spring Village Traveler】',
    '【商会大当家】': '【Merchant Guild Chief】',
    '【商会学徒】': '【Merchant Guild Apprentice】',
    '【商会执事】': '【Merchant Guild Steward】',
    '【商会掌柜】': '【Merchant Guild Shopkeeper】',
    '【商会旅行商】': '【Merchant Guild Traveling Merchant】',
    '【商会长老】': '【Merchant Guild Elder】',
    '【商界名人】': '【Famous Businessman】',
    '【商界富豪】': '【Wealthy Merchant】',
    '【喋血狼烟起·琴瑟惊锦衣】': '【Blood Shed, Wolf Smoke Rises · Zither Startles Brocade Robes】',
    '【嗜血擂台王者】': '【Bloodthirsty Arena King】',
    '【四等护国大将军】': '【Fourth-Class Guardian of the Nation Great General】',
    '【四等车骑将军】': '【Fourth-Class Chariot and Cavalry General】',
    '【四等骠骑将军】': '【Fourth-Class Cavalry General】',
    '【四象均尘】': '【Four Symbols Equal Dust】',
    '【园艺圣手】': '【Gardening Sage】',
    '【国战大兵】': '【Nation War Veteran】',
    '【国战小将】': '【Nation War Junior Officer】',
    '【国战枭雄·吴】': '【Nation War Tyrant · Wu】',
    '【国战枭雄·蜀】': '【Nation War Tyrant · Shu】',
    '【国战枭雄·魏】': '【Nation War Tyrant · Wei】',
    '【国战枭雄】': '【Nation War Tyrant】',
    '【国战英豪】': '【Nation War Hero】',
    '【圣火护卫队】': '【Sacred Fire Guard】',
    '【圣诞圆舞曲】': '【Christmas Waltz】',
    '【圣诞小夜曲】': '【Christmas Serenade】',
    '【圣诞老人小助手】': "【Santa Claus's Little Helper】",
    '【圣诞赐福居士】': '【Christmas Blessing Recluse】',
    '【圣诞雪宝宝】': '【Christmas Snow Baby】',
    '【圣诞雪精灵】': '【Christmas Snow Sprite】',
    '【在地愿为连理枝】': '【On Earth, We Shall Be Intertwined Branches】',
    '【在天愿作比翼鸟】': '【In Heaven, We Shall Be Birds Flying Wing to Wing】',
    '【在水一方蓝颜醉】': '【By the Waterside, a Handsome Face Intoxicated】',
    '【在野人士】': '【Wandering Free Agent】',
    '【坐拥红颜锦裘】': '【With Beauty and Fine Furs】',
    '【坐看云起万里鹏程】': "【Sitting Watching Clouds Rise; A Ten-Thousand-Li Roc's Journey】",
    '【士兵】': '【Soldier】',
    '【多情美人】': '【Passionate Beauty】',
    '【多玩激斗战天下】': '【Duowan Fierce Battle for the World】',
    '【多玩百变英雄】': '【Duowan Versatile Hero】',
    '【大丞相】': '【Grand Chancellor】',
    '【大内密探】': '【Inner-Secret Agent】',
    '【大司徒】': '【Grand Minister of Education】',
    '【大司空】': '【Grand Minister of Works】',
    '【大司马】': '【Grand Minister of War】',
    '【大吴上将】': '【Great Wu Supreme General】',
    '【大吴名将】': '【Great Wu Renowned General】',
    '【大吴名臣】': '【Great Wu Renowned Minister】',
    '【大吴将佐】': '【Great Wu Officer】',
    '【大吴强主】': '【Great Wu Strong Lord】',
    '【大吴无双都督】': '【Great Wu Peerless Commander】',
    '【大吴明主】': '【Great Wu Wise Lord】',
    '【大吴杰出都督】': '【Great Wu Outstanding Commander】',
    '【大吴精英都督】': '【Great Wu Elite Commander】',
    '【大吴统帅】': '【Great Wu Commander-in-Chief】',
    '【大吴能臣】': '【Great Wu Capable Minister】',
    '【大吴臣佐】': '【Great Wu Minister Aide】',
    '【大吴良将】': '【Great Wu Good General】',
    '【大吴良臣】': '【Great Wu Good Minister】',
    '【大吴英主】': '【Great Wu Heroic Lord】',
    '【大吴雄主】': '【Great Wu Mighty Lord】',
    '【大吴首辅】': '【Great Wu Chief Minister】',
    '【大将】': '【Great General】',
    '【大将军】': '【Grand General】',
    '【大将归来战沙场】': '【The Great General Returns to Battle the Battlefield】',
    '【大汉头目】': '【Great Han Chieftain】',
    '【大汉精兵】': '【Great Han Elite Soldier】',
    '【大蜀上将】': '【Great Shu Supreme General】',
    '【大蜀名将】': '【Great Shu Renowned General】',
    '【大蜀名臣】': '【Great Shu Renowned Minister】',
    '【大蜀将佐】': '【Great Shu Officer】',
    '【大蜀强主】': '【Great Shu Strong Lord】',
    '【大蜀无双都督】': '【Great Shu Peerless Commander】',
    '【大蜀明主】': '【Great Shu Wise Lord】',
    '【大蜀杰出都督】': '【Great Shu Outstanding Commander】',
    '【大蜀精英都督】': '【Great Shu Elite Commander】',
    '【大蜀统帅】': '【Great Shu Commander-in-Chief】',
    '【大蜀能臣】': '【Great Shu Capable Minister】',
    '【大蜀臣佐】': '【Great Shu Minister Aide】',
    '【大蜀良将】': '【Great Shu Good General】',
    '【大蜀良臣】': '【Great Shu Good Minister】',
    '【大蜀英主】': '【Great Shu Heroic Lord】',
    '【大蜀雄主】': '【Great Shu Mighty Lord】',
    '【大蜀首辅】': '【Great Shu Chief Minister】',
    '【大金刚】': '【Great Vajra】',
    '【大魏上将】': '【Great Wei Supreme General】',
    '【大魏名将】': '【Great Wei Renowned General】',
    '【大魏名臣】': '【Great Wei Renowned Minister】',
    '【大魏将佐】': '【Great Wei Officer】',
    '【大魏强主】': '【Great Wei Strong Lord】',
    '【大魏无双都督】': '【Great Wei Peerless Commander】',
    '【大魏明主】': '【Great Wei Wise Lord】',
    '【大魏杰出都督】': '【Great Wei Outstanding Commander】',
    '【大魏精英都督】': '【Great Wei Elite Commander】',
    '【大魏统帅】': '【Great Wei Commander-in-Chief】',
    '【大魏能臣】': '【Great Wei Capable Minister】',
    '【大魏臣佐】': '【Great Wei Minister Aide】',
    '【大魏良将】': '【Great Wei Good General】',
    '【大魏良臣】': '【Great Wei Good Minister】',
    '【大魏英主】': '【Great Wei Heroic Lord】',
    '【大魏雄主】': '【Great Wei Mighty Lord】',
    '【大魏首辅】': '【Great Wei Chief Minister】',
    '【天下为尊·跨服PK赛冠军】': '【Honored by the World · Cross-server PK Tournament Champion】',
    '【天下八杰军团众】': '【Eight Champions of the Realm Legion】',
    '【天下无敌】': '【Invincible in the World】',
    '【天下最荣耀主公】': "【The World's Most Honorable Lord】",
    '【天下有情人终成眷属】': '【May All Lovers in the World Finally Be United】',
    '【天下第一仁君】': "【The World's Number One Benevolent Lord】",
    '【天下谁人不识君】': '【Who in the World Does Not Know You】',
    '【天佑·吴战群僚一人勇】': "【Heaven's Blessing · Wu Fights Many Officials, One Man's Courage】",
    '【天佑·蜀战群僚一人勇】': "【Heaven's Blessing · Shu Fights Many Officials, One Man's Courage】",
    '【天佑·魏战群僚一人勇】': "【Heaven's Blessing · Wei Fights Many Officials, One Man's Courage】",
    '【天佑中华 同心祈福】': '【Heaven Blesses China; United in Prayer】',
    '【天朝良师】': '【Worthy Teacher of the Heavenly Dynasty】',
    '【天生一对】': '【A Match Made in Heaven】',
    '【天禄小福星】': '【Heavenly Fortune Little Lucky Star】',
    '【天禄小福神】': '【Heavenly Fortune Little God of Blessing】',
    '【天若有情天亦老】': '【If Heaven Had Feelings, Heaven Would Also Age】',
    '【天荒地老】': '【Until the End of Time】',
    '【天险难困金蛟龙】': '【Golden Dragon Unbound by Peril】',
    '【太平洋斗群英】': '【Pacific Hero Clash】',
    '【夫妻称号11】': '【Spouse Title 11】',
    '【奎木狼·奎宿十一】': '【Kui Wood Wolf · Mansion Eleven】',
    '【奎木狼·奎宿十三】': '【Kui Wood Wolf · Mansion Thirteen】',
    '【奎木狼·奎宿十二】': '【Kui Wood Wolf · Mansion Twelve】',
    '【奎木狼·奎宿十五】': '【Kui Wood Wolf · Mansion Fifteen】',
    '【奎木狼·奎宿十四】': '【Kui Wood Wolf · Mansion Fourteen】',
    '【女王的闺蜜】': "【Queen's Best Friend】",
    '【奸雄之相】': '【Face of a Cunning Hero】',
    '【妙手空空】': '【Light-Fingered Thief】',
    '【妙笔丹青】': '【Master of the Brush】',
    '【子午谷名将】': '【Renowned General of Ziwu Valley】',
    '【子爵】': '【Viscount】',
    '【寡人有喜】': '【The Lonely One Has Joy】',
    '【寰宇一刀】': '【A Blade Across the Universe】',
    '【小企鹅陪我战三国】': '【Little Penguin Fights the Three Kingdoms With Me】',
    '【尚香亲卫队】': "【Shangxiang's Honor Guard】",
    '【屈子护卫】': '【Guard of Qu Yuan】',
    '【川南圣雄】': '【Sage Hero of South Sichuan】',
    '【川南王者】': '【King of South Sichuan】',
    '【巴蜀圣雄】': '【Sage Hero of Ba-Shu】',
    '【巴蜀王者】': '【King of Ba-Shu】',
    '【巾帼·香风】': '【Heroine · Fragrant Wind】',
    '【开疆辟土真英雄】': '【True Hero Who Expands the Frontiers】',
    '【弓准比黄忠】': '【Bow as Accurate as Huang Zhong】',
    '【当时明月在，缘是故人归】': '【The Bright Moon Is Present; Fate Brings the Old Friend Home】',
    '【彻底脱光】': '【Completely Stripped Bare】',
    '【待定】': '【To Be Determined】',
    '【御雪天王】': '【Snow-riding Heaven King】',
    '【心有灵犀】': '【Hearts Linked as One】',
    '【心近情归千里相思难成苦白首相依愿成真】': '【Hearts Close, Love Returns; A Thousand Miles of Longing Becomes Joy; Growing Old Together, Wish Fulfilled】',
    '【忠义·孤胆】': '【Loyalty · Lone Courage】',
    '【怒战沙场碎铁衣】': '【Fury on the Battlefield Shatters Iron Armor】',
    '【急速破敌】': '【Swift Enemy Breaker】',
    '【总镖头】': '【Chief Escort】',
    '【恩爱两不疑】': '【Devoted Love Without Doubt】',
    '【悍勇破关将】': '【Brave Gatebreaker General】',
    '【慧眼识珠赛伯乐】': '【Discerning Eyes Rival Bo Le】',
    '【戎马啸天下·河山为卿嫁】': '【War Horses Roar Across the World · Rivers and Mountains Wed You】',
    '【我是谁】': '【Who Am I】',
    '【我是阵营一块砖·哪里需要哪里搬】': '【I Am a Brick of the Faction; Moved Wherever Needed】',
    '【我本楚狂人】': '【I Am a Chu Madman】',
    '【我比明星有爱心】': '【I Have More Love Than a Star】',
    '【我的团长我的团】': '【My Commander, My Legion】',
    '【战倾天下·一骑绝尘】': '【War Sweeps the World · One Rider Raises No Dust】',
    '【战倾天下·势不可挡】': '【War Sweeps the World · Unstoppable Force】',
    '【战倾天下·勇冠三军】': '【War Sweeps the World · Bravest of Three Armies】',
    '【战倾天下·君临天下】': '【War Sweeps the World · Sovereign of the World】',
    '【战倾天下·天降战神】': '【War Sweeps the World · God of War Descends from Heaven】',
    '【战倾天下·孤峰绝顶】': "【War Sweeps the World · Lone Peak's Summit】",
    '【战倾天下·战无不胜】': '【War Sweeps the World · Victorious in Every Battle】',
    '【战倾天下·霸气无双】': '【War Sweeps the World · Overbearing Spirit Unmatched】',
    '【战天下签到达人】': '【World War Check-in Master】',
    '【战无不胜·跨服PK赛季军】': '【Victorious in Every Battle · Cross-server PK Tournament Third Place】',
    '【战神降临丶大魏军魂】': '【God of War Descends · Great Wei Military Soul】',
    '【战神降临，平定三国】': '【God of War Descends; Pacifies the Three Kingdoms】',
    '【战罢沙场月色寒，醉若沉梦桂兰香】': '【After Battle, the Battlefield Moon Is Cold; Drunk as in a Deep Dream, Sweet Osmanthus Fragrance】',
    '【战魂使】': '【War Soul Envoy】',
    '【扇谋赛诸葛】': '【Fan Strategy Rivals Zhuge】',
    '【手挽萝莉趁夜凉】': '【Hand in Hand with Loli in the Night Cool】',
    '【执子之手，与子偕老】': '【Hold Your Hand, Grow Old with You】',
    '【执着的追寻者】': '【Persistent Seeker】',
    '【扫黄先锋】': '【Anti-Vice Vanguard】',
    '【折冲军】': '【Shock Troops】',
    '【抛头颅撒热血】': '【Shed Heads and Spill Hot Blood】',
    '【披星戴月日理万机劳动小标兵】': '【Star-cloaked, Moon-draped; Handling Ten Thousand Affairs Daily; Little Model Worker】',
    '【招财小神】': '【Little God of Fortune】',
    '【招财进宝小财神】': '【Little God of Wealth Who Attracts Treasure】',
    '【挑战塔·闯过白银殿】': '【Challenge Tower · Passed the Silver Hall】',
    '【挑战塔·闯过青铜殿】': '【Challenge Tower · Passed the Bronze Hall】',
    '【挑战塔·闯过黄金殿】': '【Challenge Tower · Passed the Gold Hall】',
    '【捉鬼大师】': '【Ghost-Catching Master】',
    '【探宝歌·不贪为宝】': '【Treasure Song: Not Greedy for Treasure】',
    '【探宝歌·宝山空回】': '【Treasure Song: Return Empty from Treasure Mountain】',
    '【探宝歌·抱宝怀珍】': '【Treasure Hunt Song · Embracing Precious Jewels】',
    '【探宝歌·招财进宝】': '【Treasure Hunt Song · Attracting Wealth and Treasure】',
    '【探宝歌·财神爷】': '【Treasure Hunt Song · God of Wealth】',
    '【摸金校尉】': '【Tomb-Robbing Colonel】',
    '【故穿庭树作飞花】': '【Deliberately Threading Through Garden Trees as Flying Blossoms】',
    '【救世神棍】': '【World-saving Divine Staff】',
    '【斧威敌徐晃】': '【Axe Might Rivals Xu Huang】',
    '【斧斧生威】': '【Axe After Axe Exudes Might】',
    '【新三国名流】': '【Celebrity of the New Three Kingdoms】',
    '【新三国英雄】': '【Hero of the New Three Kingdoms】',
    '【新三国豪杰】': '【Champion of the New Three Kingdoms】',
    '【新三国贤士】': '【Worthy Scholar of New Three Kingdoms】',
    '【新三国霸王】': '【Overlord of the New Three Kingdoms】',
    '【新兵】': '【Recruit】',
    '【新年都未有芳华】': '【No Fragrance Yet at the New Year】',
    '【新浪斗群英】': '【Sina Hero Clash】',
    '【新浪旷世英雄】': '【Sina Peerless Hero】',
    '【新浪激斗战天下】': '【Sina Fierce Battle for the World】',
    '【新浪百变英雄】': '【Sina Versatile Hero】',
    '【施丹青绘血火峥嵘】': '【Painting with Vivid Colors the Glorious Blood and Fire】',
    '【无兄弟不赤壁】': '【No Brothers, No Chibi】',
    '【无神论者】': '【Atheist】',
    '【星语寥寥月伶仃】': '【Sparse Star Whispers, Lonely Moon】',
    '【智慧王者】': '【Wise King】',
    '【智慧霸主】': '【Wise Overlord】',
    '【智谋贯通】': '【Strategic Wisdom Pervading】',
    '【曾给神仙捶过腿】': "【Once Massaged a God's Legs】",
    '【月如无恨月长圆】': '【If the Moon Had No Regret, the Moon Would Always Be Full】',
    '【木人兵卒】': '【Wooden Man Soldier】',
    '【木人大将】': '【Wooden Man General】',
    '【木人百姓】': '【Wooden Man Civilian】',
    '【木人皇帝】': '【Wooden Man Emperor】',
    '【木人队长】': '【Wooden Man Captain】',
    '【朱雀之主】': '【Lord of the Vermilion Bird】',
    '【杀戮征伐·跨服PK赛亚军】': '【Slaughter and Expedition · Cross-server PK Tournament Runner-up】',
    '【杀神·四方】': '【God of Slaughter · Four Directions】',
    '【杖仙师左慈】': '【Staff Immortal Master Zuoci】',
    '【杖八金刚】': '【Eight金刚 Staff】',
    '【枪快如子龙】': '【Spear as Swift as Zilong】',
    '【枭雄谱传奇·长空共比翼】': '【Tyrant Writes Legend · Long Sky, Flying Wing to Wing】',
    '【柔情似水，佳期如梦】': '【Tenderness Like Water; A Beautiful Date Like a Dream】',
    '【校尉】': '【Colonel】',
    '【梅雪煮茶人】': '【Plum-Snow Tea Brewer】',
    '【梦里不知身是客】': '【In Dreams, Unaware I Am a Guest】',
    '【棋痴】': '【Chess Obsessive】',
    '【棍风似程普】': '【Staff Wind Like Cheng Pu】',
    '【楼兰烟花使童】': '【Loulan Fireworks Page】',
    '【楼兰烟花使节】': '【Loulan Fireworks Envoy】',
    '【楼兰烟花圣使】': '【Loulan Fireworks Sacred Envoy】',
    '【楼兰烟花大使】': '【Loulan Fireworks Ambassador】',
    '【横野军】': '【Wilderness Army】',
    '【武圣之手】': '【Hand of the Martial Sage】',
    '【武圣小友】': '【Little Friend of the Martial Sage】',
    '【武圣小徒】': '【Little Disciple of the Martial Sage】',
    '【武圣崇拜者】': '【Worshipper of the Martial Sage】',
    '【武圣衣钵传人】': "【Inheritor of the Martial Sage's Robe and Bowl】",
    '【武圣门徒】': '【Disciple of the Martial Sage】',
    '【武神传人】': '【Inheritor of the Martial God】',
    '【武艺大师】': '【Martial Arts Master】',
    '【武艺高手】': '【Martial Arts Expert】',
    '【死生契阔】': '【In Life and Death, Bound Together】',
    '【比GM还牛逼的人】': '【Someone Even More Awesome Than GM】',
    '【永远忠诚】': '【Eternally Loyal】',
    '【江南圣雄】': '【Sage Hero of Jiangnan】',
    '【江南王者】': '【King of Jiangnan】',
    '【江山如此多娇】': '【How Lovely Is This Land】',
    '【沧浪清兮濯吾缨】': '【Clear Waves Wash My Hat Tassels】',
    '【河北圣雄】': '【Sage Hero of Hebei】',
    '【河北王者】': '【King of Hebei】',
    '【法天立道圣德神功玫瑰王】': '【Rose King of Divine Virtue】',
    '【泰军否极】': '【Peace Army, Misfortune Reaches Its Limit】',
    '【泼浓墨描三国悲愁】': '【Splash Dark Ink, Paint Three Kingdoms Sorrow】',
    '【洛渔乐·东猎西渔】': '【Luo Fishing Joy: Hunt East, Fish West】',
    '【洛渔乐·伊人垂钓】': '【Luo Fishing Joy: The Beauty Angling】',
    '【洛渔乐·叶舟风波】': '【Luo Fishing Joy: Leaf-Boat Storm】',
    '【洛渔乐·愿者上钩】': '【Luoyang Fishing Joy · Willing Bait Takes the Hook】',
    '【洛渔乐·浑水摸鱼】': '【Luo Fishing Joy: Fish in Troubled Waters】',
    '【洛渔乐·白头笠翁】': '【Luoyang Fishing Joy · White-haired Angler in a Straw Hat】',
    '【活跃新人大奖】': '【Active Newbie Grand Prize】',
    '【活跃新人小奖】': '【Active Newbie Small Prize】',
    '【温候近卫骑】': "【Marquis Wen's Guard Cavalry】",
    '【游刃无间因有余】': '【Blade Moves Without Haste, For There Is Surplus】',
    '【濮阳霸主】': '【Overlord of Puyang】',
    '【火曜来客】': '【Tuesday Visitor】',
    '【火眼金睛】': '【Fiery Eyes, Golden Gaze】',
    '【火雷克星】': '【Nemesis of Fire Bombs】',
    '【灵桥漫漫鹊相迎】': '【The Long Spirit Bridge; Magpies Welcome in Pairs】',
    '【炼蛊师】': '【Gu Refiner】',
    '【烈伍】': '【Blazing Squad】',
    '【热血忠臣赤丹心】': '【Hot-blooded Loyal Minister, Heart of Crimson】',
    '【热血青年】': '【Hot-Blooded Youth】',
    '【烽烟起将士着铁衣 长征战英雄永不离】': '【When Beacon Fires Rise, Soldiers Don Iron Armor; Long Campaigns, Heroes Never Part】',
    '【燎伍】': '【Scorching Squad】',
    '【爪袭甘兴霸】': '【Claw Strike Like Gan Xingba】',
    '【爱多玩，爱YY】': '【Love Duowan, Love YY】',
    '【爱江山更爱美人】': '【Love the Realm, Love Beauty More】',
    '【爱游戏，爱17173】': '【Love Games, Love 17173】',
    '【爱生活爱三星】': '【Love Life, Love Samsung】',
    '【牛气冲天】': '【Awe-inspiring Spirit Soaring to the Sky】',
    '【牧羊刀狼】': '【Shepherd Blade Wolf】',
    '【牧羊小牛】': '【Shepherd Calf】',
    '【牧羊神兽】': '【Shepherd Divine Beast】',
    '【牧羊虾米】': '【Shepherd Shrimp】',
    '【犹恐相逢是梦中】': '【Fearing This Meeting Is a Dream】',
    '【猛将·恶来】': '【Fierce General · E Lai】',
    '【献爱心的小商人】': '【Kind-hearted Little Merchant】',
    '【玄武之主】': '【Lord of the Black Tortoise】',
    '【王爵】': '【King】',
    '【王者归来·乱世英豪战三国】': '【King Returns · Chaotic Age Heroes War in the Three Kingdoms】',
    '【环巧孙尚香】': '【Ring Skill Like Sun Shangxiang】',
    '【环球先生】': '【Mr. Universe】',
    '【环球小姐】': '【Miss Universe】',
    '【瑜米】': '【Yu Rice】',
    '【生妙笔书赤壁春秋】': "【A Wonderful Brush Writes Chibi's Annals】",
    '【生怕情多累美人】': '【Fearing Love Too Heavy Burdens the Beauty】',
    '【用人不疑礼下士】': '【Trust Those Employed, Honor the Worthy】',
    '【甲百万车千万骑乘万匹叱咤风云所向披靡】': '【A Hundred Million Armors, Ten Million Chariots, Ten Thousand Cavalry; Commanding the Storm, Invincible】',
    '【电玩巴士激斗战天下】': '【VGBus Fierce Battle for the World】',
    '【男爵】': '【Baron】',
    '【登崖一啸千峰鸣】': '【Climbing the Cliff, One Howl Makes a Thousand Peaks Ring】',
    '【白云堪卧君早归】': '【White Clouds Are Good to Lie On; Return Soon】',
    '【白墨墨者】': '【White Ink Mohist】',
    '【白墨长老】': '【White Ink Elder】',
    '【白墨队主】': '【White Ink Squad Leader】',
    '【白帝城荣誉商人】': '【Baidi City Honored Merchant】',
    '【白虎之主】': '【Lord of the White Tiger】',
    '【白门楼义士】': '【White Gate Tower Righteous Man】',
    '【白雪却嫌春色晩】': '【White Snow Dislikes Spring Arriving Late】',
    '【百人敌】': '【Takes On Hundred】',
    '【百步穿扬】': '【Piercing a Willow Leaf at a Hundred Paces】',
    '【盛世无隐英雄归】': '【In the Golden Age, No Hero Remains Hidden】',
    '【相思不到楚江东】': '【Longing Cannot Reach East of the Chu River】',
    '【相望无期方相见】': '【Only When Hope Seems Endless Do We Meet】',
    '【相逢何必曾相识】': '【Why Must We Have Known Each Other Before Meeting】',
    '【相逢恨晚两心知】': '【Regretting Meeting Too Late; Two Hearts Understand】',
    '【相逢未有期】': '【Meeting Without a Date】',
    '【看门侠】': '【Gate-Watching Knight】',
    '【真别摸我】': "【Really Don't Touch Me】",
    '【破虏营】': '【Terror of the Barbarians Camp】',
    '【碧山入画又逢君】': '【Green Mountains Enter the Painting; Meeting You Again】',
    '【祈魂大师】': '【Soul Prayer Master】',
    '【神扇鬼谋】': '【Divine Fan, Ghostly Stratagem】',
    '【神挡杀神 佛挡杀佛】': '【Kill Gods Who Stand in the Way, Slay Buddhas Who Block the Path】',
    '【神武营】': '【Divine Might Camp】',
    '【神火营】': '【Divine Fire Camp】',
    '【神算鬼谋】': '【Divine Calculation, Ghostly Stratagem】',
    '【神龙枪圣】': '【Divine Dragon Spear Sage】',
    '【笑揽社稷九州】': '【Laughing, Embracing the Nine Provinces】',
    '【精彩一百迎新年】': '【Wonderful Hundred Welcome the New Year】',
    '【精打细算小富商】': '【Meticulous Little Merchant】',
    '【糖葫芦大将军】': '【Candied Hawthorn Grand General】',
    '【糖葫芦小队长】': '【Candied Hawthorn Squad Leader】',
    '【糖葫芦游侠】': '【Candied Hawthorn Ranger】',
    '【糖葫芦至尊糖主】': '【Candied Hawthorn Supreme Chief】',
    '【糖葫芦预备兵】': '【Candied Hawthorn Recruit】',
    '【红尘数见应识我】': '【Seen Often in the Mortal World, You Should Know Me】',
    '【红酥手暖】': '【Warm Crimson Hands】',
    '【纵横·利舌】': '【Persuasion · Sharp Tongue】',
    '【纵横天下】': '【Roaming the World Free】',
    '【终结者】': '【Terminator】',
    '【结义天下，所向披靡 】': '【Sworn Brotherhood Across the World; Invincible】',
    '【绝妙问题提供者】': '【Provider of Brilliant Questions】',
    '【统帅天下齐归心】': '【Commanding the World; All Hearts Turn to You】',
    '【统领】': '【Commander】',
    '【网易激斗战天下】': '【NetEase Fierce Battle for the World】',
    '【网易达人，更懂游戏】': '【NetEase Expert, Better Understanding Games】',
    '【罡魂·吴战群僚一人勇】': "【Gang Soul · Wu Fights Many Officials, One Man's Courage】",
    '【罡魂·蜀战群僚一人勇】': "【Gang Soul · Shu Fights Many Officials, One Man's Courage】",
    '【罡魂·魏战群僚一人勇】': "【Gang Soul · Wei Fights Many Officials, One Man's Courage】",
    '【羁旅千年闲问花】': '【A Thousand Years a Wanderer, Idly Asking Flowers】',
    '【羽林郎将】': '【Feather Forest Colonel】',
    '【翼火蛇·翼宿二十】': '【Wing Fire Snake · Mansion Twenty】',
    '【翼火蛇·翼宿二十一】': '【Wing Fire Snake · Mansion Twenty-One】',
    '【翼火蛇·翼宿二十二】': '【Wing Fire Snake · Mansion Twenty-Two】',
    '【翼火蛇·翼宿十一】': '【Wing Fire Snake · Mansion Eleven】',
    '【翼火蛇·翼宿十七】': '【Wing Fire Snake · Mansion Seventeen】',
    '【翼火蛇·翼宿十三】': '【Wing Fire Snake · Mansion Thirteen】',
    '【翼火蛇·翼宿十九】': '【Wing Fire Snake · Mansion Nineteen】',
    '【翼火蛇·翼宿十二】': '【Wing Fire Snake · Mansion Twelve】',
    '【翼火蛇·翼宿十五】': '【Wing Fire Snake · Mansion Fifteen】',
    '【翼火蛇·翼宿十八】': '【Wing Fire Snake · Mansion Eighteen】',
    '【翼火蛇·翼宿十六】': '【Wing Fire Snake · Mansion Sixteen】',
    '【翼火蛇·翼宿十四】': '【Wing Fire Snake · Mansion Fourteen】',
    '【老夫让你三招】': "【I'll Give You Three Moves】",
    '【联通斗群英】': '【Unicom Hero Clash】',
    '【能工巧匠】': '【Skilled Artisan】',
    '【能臣之相】': '【Face of a Capable Minister】',
    '【脉脉含情】': '【Eyes Full of Tenderness】',
    '【脚踏双星，刀劈阿斗】': '【Feet on Two Stars, Blade Splits Adou】',
    '【腹有诗书气自华】': '【Poetry Within, Radiance Without】',
    '【腾讯激斗战天下】': '【Tencent Fierce Battle for the World】',
    '【腾讯特权试驾英雄】': '【Tencent Privilege Test Drive Hero】',
    '【腾讯百变英雄】': '【Tencent Versatile Hero】',
    '【至戟无敌】': '【Halberd Peerless in the World】',
    '【舌战高手】': '【Debate Master】',
    '【舞林至尊】': '【Martial Arts World Supreme】',
    '【花好月圆】': '【Beautiful Flowers and Full Moon】',
    '【英雄六载峥嵘,赤壁唯我独霸】': "【Hero's Six Glorious Years; In Chibi, Only I Dominate】",
    '【英雄命格】': "【Hero's Fate】",
    '【英雄回归金特权】': '【Hero Return Gold Privilege】',
    '【英雄回归银特权】': '【Hero Return Silver Privilege】',
    '【英雄露颖在今朝，重回赤壁战天下】': '【Heroes Show Their Edge Today; Return to Chibi to War for the World】',
    '【荆襄圣雄】': '【Sage Hero of Jingxiang】',
    '【荆襄王者】': '【King of Jingxiang】',
    '【草庐闲居】': '【Living Idle in a Thatched Hut】',
    '【草莽捐躯赴国难】': '【From the Grassroots, Sacrificing for National Crisis】',
    '【荒野大镖客】': '【Wilderness Escort】',
    '【荣归故里】': '【Return Home in Glory】',
    '【莫愁前路无知己】': '【Do Not Worry the Road Ahead Has No True Friend】',
    '【菩提落叶化泥尘·几度轮回几度人】': '【Bodhi Falling Leaves Turn to Dust · How Many Rebirths, How Many People】',
    '【葭萌关元帅】': '【Jiameng Pass Marshal】',
    '【葭萌关兵长】': '【Jiameng Pass Corporal】',
    '【葭萌关副将】': '【Jiameng Pass Deputy General】',
    '【葭萌关士兵】': '【Jiameng Pass Soldier】',
    '【葭萌关大将】': '【Jiameng Pass Great General】',
    '【葭萌关校尉】': '【Jiameng Pass Colonel】',
    '【葭萌关统领】': '【Jiameng Pass Commander】',
    '【虎将归来】': '【The Fierce General Returns】',
    '【虎牢关下称英雄】': '【Heroes Beneath Hulao Pass】',
    '【虎牢关五虎将】': '【Five Tiger Generals of Hulao Pass】',
    '【蜀·精锐将臣】': '【Shu · Elite Officer and Minister】',
    '【蜀国人士】': '【Citizen of Shu】',
    '【蜀国公】': '【Duke of Shu】',
    '【蜀国发言官】': '【Shu Spokesperson】',
    '【蜀国天下第一主公】': '【Shu No.1 Lord】',
    '【蜀国夫人】': '【Lady of Shu】',
    '【蜀国头目】': '【Shu Chieftain】',
    '【蜀国将领】': '【Shu General】',
    '【蜀国精兵】': '【Shu Elite Soldier】',
    '【蜀王】': '【King of Shu】',
    '【蜃之名人】': '【Celebrity of the Mirage】',
    '【蜃楼城幕僚】': '【Mirage City Advisor】',
    '【行伍】': '【Marching Squad】',
    '【衣锦还乡】': '【Return Home in Fine Robes】',
    '【被忽悠了的善良商人】': '【The Fooled Kind Merchant】',
    '【西凉圣雄】': '【Sage Hero of Xiliang】',
    '【西凉王者】': '【King of Xiliang】',
    '【见习采诗官】': '【Apprentice Poetry Collector】',
    '【讨逆之忠臣】': '【Loyal Minister Who Punishes Rebels】',
    '【许一世柔情为浅笑】': '【A Lifetime of Tenderness for a Gentle Smile】',
    '【试问不平事】': '【Dare Ask of Injustice】',
    '【赤墨墨者】': '【Red Ink Mohist】',
    '【赤墨长老】': '【Red Ink Elder】',
    '【赤墨队主】': '【Red Ink Squad Leader】',
    '【赤壁·夺魄之刃】': '【Chibi · Soul-Seizing Blade】',
    '【赤壁·新视觉】': '【Chibi · New Vision】',
    '【赤壁帅哥】': '【Chibi Handsome Guy】',
    '【赤壁弓手】': '【Chibi Archer】',
    '【赤壁提督】': '【Chibi Admiral】',
    '【赤壁桨手】': '【Chibi Oarsman】',
    '【赤壁炮兵】': '【Chibi Cannoneer】',
    '【赤壁百晓生】': '【Chibi Know-It-All】',
    '【赤壁第一大人妖】': "【Chibi's Number One Great Shemale】",
    '【赤壁索女】': '【Chibi Glamour Girl】',
    '【赤壁船长】': '【Chibi Captain】',
    '【赤壁虎将】': '【Chibi Tiger General】',
    '【赤壁达人】': '【Chibi Expert】',
    '【赤壁霸主】': '【Chibi Overlord】',
    '【赵云的主公】': "【Zhao Yun's Lord】",
    '【趟子手】': '【Escort Walker】',
    '【跨服雄兵连·吴国大将】': '【Cross-server Elite Legion · Wu Great General】',
    '【跨服雄兵连·蜀国大将】': '【Cross-server Elite Legion · Shu Great General】',
    '【跨服雄兵连·魏国大将】': '【Cross-server Elite Legion · Wei Great General】',
    '【路漫漫其修远兮】': '【Long and Far Is the Road】',
    '【踏雪寻梅客】': '【Snow-Treading Plum Seeker】',
    '【车骑军】': '【Chariot and Cavalry Army】',
    '【输给GM的笨蛋】': '【The Idiot Who Lost to GM】',
    '【运重笔话大江滔滔】': '【With Heavy Brush, Speak of the Great River】',
    '【进宝小仙】': '【Little Immortal Who Brings Treasure】',
    '【逆天之巫者】': '【Heaven-Defying Shaman】',
    '【逆天改命】': '【Defy Heaven, Change Fate】',
    '【逆旅散人】': '【Wanderer of the Reversing Journey】',
    '【遍地开花旗飘扬】': '【Blossoming Everywhere, Flags Fluttering】',
    '【重望高名人皆拜】': '【Renowned and Respected, All Bow in Reverence】',
    '【金牌园丁】': '【Gold Medal Gardener】',
    '【金玉良缘】': '【Golden Jade Match】',
    '【鏖战天下傲群英】': '【Fierce Battle Across the World, Proud of the Heroes】',
    '【钓鱼之神】': '【Fishing God】',
    '【钓鱼名人】': '【Fishing Celebrity】',
    '【钓鱼大师】': '【Fishing Master】',
    '【钓鱼快手】': '【Fishing Swift Hand】',
    '【钓鱼新手】': '【Fishing Novice】',
    '【钓鱼高手】': '【Fishing Expert】',
    '【铁伍】': '【Iron Squad】',
    '【铁壁恶来】': '【Iron Wall E Lai】',
    '【铁鞋踏遍山河路】': '【Iron Shoes Tread Every Mountain and River Path】',
    '【铭印·吴战群僚一人勇】': "【Imprint · Wu Fights Many Officials, One Man's Courage】",
    '【铭印·蜀战群僚一人勇】': "【Imprint · Shu Fights Many Officials, One Man's Courage】",
    '【铭印·魏战群僚一人勇】': "【Imprint · Wei Fights Many Officials, One Man's Courage】",
    '【锐步营】': '【Swift Steps Camp】',
    '【锦帆贼】': '【Brocade Sail Bandit】',
    '【锦瑟无端五十弦，一弦一柱思华年】': '【The Zither Has Fifty Strings Without Reason; Each String, Each Pillar, Reminds of Blooming Years】',
    '【镇威军】': '【Might Suppressing Army】',
    '【镇疆御使】': '【Frontier Guarding Envoy】',
    '【镖头】': '【Escort Chief】',
    '【长乐未央】': '【Endless Eternal Joy】',
    '【长驱行万里】': '【Drive Ten Thousand Miles】',
    '【闪亮圣诞大天使】': '【Shining Christmas Archangel】',
    '【问题提供者】': '【Question Giver】',
    '【闲云野鹤】': '【Idle Cloud, Wild Crane】',
    '【阵营指挥官】': '【Faction Commander】',
    '【除魔卫道】': '【Exorcise Demons, Guard the Way】',
    '【险过华容道】': '【Narrow Escape at Huarong Pass】',
    '【集结号】': '【Assembly Call】',
    '【霸主·人和】': "【Overlord · People's Harmony】",
    '【霸主·地利】': '【Overlord · Geographic Advantage】',
    '【霸主·天命】': '【Overlord · Mandate of Heaven】',
    '【青春山神】': '【Youthful Mountain God】',
    '【青青子衿，悠悠我心】': '【Green, Green Your Collar; Long, Long My Heart】',
    '【青龙之主】': '【Lord of the Azure Dragon】',
    '【鞍前马后护将军】': '【Guarding the General Before and After the Saddle】',
    '【顺天之勇士】': '【Warrior Who Follows Heaven】',
    '【风情万种鹊桥归】': '【A Thousand Charms Return via the Magpie Bridge】',
    '【风月情浓痴情种】': '【Strong Love in Wind and Moon; A Passionate Soul】',
    '【风流才子】': '【Romantic Scholar】',
    '【风雅窃书贼】': '【Elegant Book Thief】',
    '【飞将之神助】': '【Divine Aid of the Flying General】',
    '【飞雪圣诞小恶魔】': '【Flying Snow Christmas Little Devil】',
    '【马大姐】': '【Big Sister Ma】',
    '【马大帅】': '【Commander Ma】',
    '【马蹄腾雪步韵留香报福音※】': '【Horse Hooves Leap Snow; Steps Leave Fragrance; Spreading Good Tidings】',
    '【驯象师】': '【Elephant Tamer】',
    '【驾乘香车宝辇】': '【Riding the Fragrant Carriage】',
    '【骠骑军】': '【Cavalry Army】',
    '【高级名师】': '【Senior Teacher】',
    '【高级大师】': '【Senior Master】',
    '【高级师傅】': '【Senior Master】',
    '【鬼伍】': '【Ghost Squad】',
    '【鬼吹灯】': '【Ghost Blows Out the Light】',
    '【鬼斧神工】': '【Divine Craftsmanship】',
    '【鬼谋之神助】': "【Ghostly Stratagem's Divine Aid】",
    '【魅影刺客】': '【Phantom Assassin】',
    '【魏·精锐将臣】': '【Wei · Elite Officer and Minister】',
    '【魏国人士】': '【Citizen of Wei】',
    '【魏国公】': '【Duke of Wei】',
    '【魏国发言官】': '【Wei Spokesperson】',
    '【魏国天下第一主公】': '【Wei No.1 Lord】',
    '【魏国夫人】': '【Lady of Wei】',
    '【魏国头目】': '【Wei Chieftain】',
    '【魏国将领】': '【Wei General】',
    '【魏国精兵】': '【Wei Elite Soldier】',
    '【魏王】': '【King of Wei】',
    '【麒麟儿】': '【Prodigious Child】',
    '【麦城三百勇士】': '【Three Hundred Warriors of Mai City】',
    '【黄沙百战穿金甲】': '【A Hundred Battles in Yellow Sand Pierce Golden Armor】',
    '【黄金千夫长】': '【Gold Thousand-Man Commander】',
    '【黄金战甲勇士】': '【Gold War Armor Warrior】',
    '【黄金斗神勇士】': '【Gold Fighting God Warrior】',
    '【黄金百夫长】': '【Gold Hundred-Man Commander】',
    '【黄金精兵】': '【Gold Elite Soldier】',
    '【鼓励奖】': '【Consolation Prize】',
    '【龙锋营】': '【Dragon Vanguard Camp】',
    '【龙马震九州】': '【Dragon and Horse Shake the Nine Provinces】',
    '一代名师': 'Teacher of a Generation',
    '一夜筑城的人': 'The One Who Built a City in One Night',
    '一往情深深几许': 'How Deep Is Love',
    '一马踏千山': 'One Horse Treads a Thousand Hills',
    '七夕活动获得。拥有999朵蓝色妖姬，人所钟情的无双君子！': 'Obtained from the Qixi Event. Possessing 999 Blue Demon Roses; The Peerless Gentleman Loved by All!',
    '七夕活动获得。拥有999朵蓝色妖姬，人所钟情的绝世美人！': 'Obtained from the Qixi Event. Possessing 999 Blue Demon Roses; The Peerless Beauty Loved by All!',
    '七星阵成就称号\\r^ffffff攻击力+10': '七星阵成就称号\\r^ffffffAttack+10',
    '七星阵成就称号\\r^ffffff攻击力+20\\r防御力+10\\r生命值+200\\r治疗点数+10\\r暴击附加伤害+30\\r攻击强度+1%': '七星阵成就称号\\r^ffffffAttack+20\\rDefense+10\\rHP+200\\rHeal Potency+10\\rCrit Bonus DMG+30\\rAttack Power+1%',
    '七星阵成就称号\\r^ffffff暴击附加伤害+20': '七星阵成就称号\\r^ffffffCrit Bonus DMG+20',
    '七星阵成就称号\\r^ffffff治疗点数+5': '七星阵成就称号\\r^ffffffHeal Potency+5',
    '七星阵成就称号\\r^ffffff生命值+100': '七星阵成就称号\\r^ffffffHP+100',
    '七星阵成就称号\\r^ffffff防御力+5': '七星阵成就称号\\r^ffffffDefense+5',
    '万人敌': 'Takes On Ten Thousand',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+11\\r防御力+5\\r生命值+200': '万众瞩目,豪气冲天!\\r^ffffffAttack+11\\rDefense+5\\rHP+200',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+15\\r防御力+7\\r生命值+300': '万众瞩目,豪气冲天!\\r^ffffffAttack+15\\rDefense+7\\rHP+300',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+18\\r防御力+9\\r生命值+350': '万众瞩目,豪气冲天!\\r^ffffffAttack+18\\rDefense+9\\rHP+350',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+21\\r防御力+10\\r生命值+400': '万众瞩目,豪气冲天!\\r^ffffffAttack+21\\rDefense+10\\rHP+400',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+24\\r防御力+12\\r生命值+450': '万众瞩目,豪气冲天!\\r^ffffffAttack+24\\rDefense+12\\rHP+450',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+30\\r防御力+15\\r生命值+600': '万众瞩目,豪气冲天!\\r^ffffffAttack+30\\rDefense+15\\rHP+600',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+33\\r防御力+16\\r生命值+650': '万众瞩目,豪气冲天!\\r^ffffffAttack+33\\rDefense+16\\rHP+650',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+36\\r防御力+18\\r生命值+700': '万众瞩目,豪气冲天!\\r^ffffffAttack+36\\rDefense+18\\rHP+700',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+39\\r防御力+19\\r生命值+750': '万众瞩目,豪气冲天!\\r^ffffffAttack+39\\rDefense+19\\rHP+750',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+45\\r防御力+22\\r生命值+1000': '万众瞩目,豪气冲天!\\r^ffffffAttack+45\\rDefense+22\\rHP+1000',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+5\\r防御力+2\\r生命值+100': '万众瞩目,豪气冲天!\\r^ffffffAttack+5\\rDefense+2\\rHP+100',
    '万众瞩目,豪气冲天!\\r^ffffff攻击力+8\\r防御力+4\\r生命值+150': '万众瞩目,豪气冲天!\\r^ffffffAttack+8\\rDefense+4\\rHP+150',
    '万里月光号的助手': 'Assistant of the Ten-Thousand-Mile Moonlight',
    '不可忤逆其意志的神在华容道降临了。\\r^72fe00永久生效:\\r^ffffff体质+240 攻击力+20': 'A God Whose Will Cannot Be Defied Descended at Huarong Pass.\\r^72fe00永久生效:\\r^ffffffStamina+240 Attack+20',
    '不可贪心他人之宝，你已经摸到了探宝的门道\\r^0184ff永久生效:\\r^ffffff攻击力+10\\r闪避+2\\r防御力+5': "Do Not Covet Others' Treasures; You Have Found the Way of Treasure Hunting\\r^0184ff永久生效:\\r^ffffffAttack+10\\rDodge+2\\rDefense+5",
    '不屈之人': 'The Unyielding',
    '专业采诗官': 'Professional Poetry Collector',
    '东海扬波': 'Eastern Sea Waves',
    '个人赛亚军': 'Personal Tournament Runner-up',
    '个人赛冠军': 'Personal Tournament Champion',
    '个人赛季军': 'Personal Tournament 3rd Place',
    '中原': 'Central Plains',
    '中级名师': 'Intermediate Teacher',
    '中级师傅': 'Intermediate Master',
    '九歌云中君': 'Nine Songs: Lord in the Clouds',
    '习武之人': 'Martial Practitioner',
    '乡侯': 'Village Marquis',
    '云游山水的小贩': 'Wandering Mountain Peddler',
    '五丁部落的客人': 'Guest of the Five-Ding Tribe',
    '五丁部落的救星': 'Savior of the Five-Ding Tribe',
    '五丁部落的朋友': 'Friend of the Five-Ding Tribe',
    '五丁部落的英雄': 'Hero of the Five-Ding Tribe',
    '五月榴花妖艳烘绿杨带雨垂垂重': 'May Pomegranate Blossoms, Enchanting and Radiant; Green Willows Heavy with Hanging Rain',
    '亮粉': 'Bright Powder',
    '亲友荣誉排行榜全服前一百名，力拔山兮气盖世的三国豪杰。': 'Friend Honor Leaderboard Server Top 100; The Three Kingdoms Champion with Strength to Uproot Mountains, Spirit Covering the World.',
    '亲友荣誉排行榜全服前五百名，声名闻达于诸侯的三国名流。': 'Friend Honor Leaderboard Server Top 500; The Three Kingdoms Celebrity Whose Fame Reaches All Lords.',
    '亲友荣誉排行榜全服前十名，力挽狂澜定乾坤的三国英雄。': 'Friend Honor Leaderboard Server Top 10; The Three Kingdoms Hero Who Turns the Tide and Sets the World Right.',
    '亲友荣誉排行榜全服第一名，众星拱月傲视群雄的三国霸主。': 'Friend Honor Leaderboard Server 1st Place; The Three Kingdoms Overlord Surrounded by Stars, Gazing Down on All Heroes.',
    '人中赤兔马中吕布': 'Red Hare Among Horses, Lu Bu Among Men',
    '人民艺术家': "People's Artist",
    '人生若只如初见': 'If Life Were Only Like First Meetings',
    '人间路快乐少年郎': 'Happy Youth on the Human Path',
    '仁义值': 'Righteousness',
    '仁义值排行榜第一的奖励称号\\r为头顶称号时生效:\\r^ffffff攻击力 +10\\r历练值 +20%\\r生命值 +200': 'Righteousness Points Leaderboard 1st Place Reward Title\\rActive When Worn as Overhead Title:\\r^ffffffAttack +10\\rEXP +20%\\rHP +200',
    '仁义值排行榜第二到第四的奖励称号\\r为头顶称号时生效:\\r^ffffff攻击力 +8\\r历练值 +10%\\r生命值 +100': 'Righteousness Points Leaderboard Rank 2 to 4 Reward Title\\rActive When Worn as Overhead Title:\\r^ffffffAttack +8\\rEXP +10%\\rHP +100',
    '仁义值排行榜第二十一到第二十八的奖励称号\\r为头顶称号时生效:\\r^ffffff攻击力 +1\\r历练值 +5%\\r生命值 +100': 'Righteousness Points Leaderboard Rank 21 to 28 Reward Title\\rActive When Worn as Overhead Title:\\r^ffffffAttack +1\\rEXP +5%\\rHP +100',
    '仁义值排行榜第二十九到第三十六的奖励称号\\r为头顶称号时生效:\\r^ffffff历练值 +5%\\r生命值 +80': 'Righteousness Points Leaderboard Rank 29 to 36 Reward Title\\rActive When Worn as Overhead Title:\\r^ffffffEXP +5%\\rHP +80',
    '仁义值排行榜第五到第十二的奖励称号\\r为头顶称号时生效:\\r^ffffff攻击力 +5\\r历练值 +10%\\r生命值 +100': 'Righteousness Points Leaderboard Rank 5 to 12 Reward Title\\rActive When Worn as Overhead Title:\\r^ffffffAttack +5\\rEXP +10%\\rHP +100',
    '仁义值排行榜第十三到第二十的奖励称号\\r为头顶称号时生效:\\r^ffffff攻击力 +3\\r历练值 +5%\\r生命值 +100': 'Righteousness Points Leaderboard Rank 13 to 20 Reward Title\\rActive When Worn as Overhead Title:\\r^ffffffAttack +3\\rEXP +5%\\rHP +100',
    '仕官': 'Official',
    '任人唯贤取众长': 'Employ the Worthy, Take All Strengths',
    '任何一项武艺达到尊级九段获得的命格，\\r可以找长安城壶公开启新的英雄道路。\\r永久生效:\\r^ffffff攻击力+10\\防御力+5\\体质+10\\命中+1': '任何一项武艺达到尊级九段获得的命格，\\r可以找长安城壶公开启新的英雄道路。\\r永久生效:\\r^ffffffAttack+10\\Defense+5\\Stamina+10\\Accuracy+1',
    '伏鹿圣者': 'Deer-Taming Sage',
    '传奇': 'Legend',
    '传承': 'Inheritance',
    '伯爵': 'Earl',
    '佛挡杀佛': 'Kill Buddhas If They Stand in the Way',
    '你已经达到了一个人人仰慕的境界了。\\r^72fe00永久生效:\\r^ffffff治疗点数+10\\r体质+80\\r防御力+5\\r附加伤害+3': 'You Have Reached a Realm All Admire.\\r^72fe00永久生效:\\r^ffffffHeal Potency+10\\rStamina+80\\rDefense+5\\rBonus DMG+3',
    '你成功的四十分钟内获得了华容道的胜利！\\r^72fe00永久生效:\\r^ffffff防御力+2': 'You Won at Huarong Pass Within Forty Minutes!\\r^72fe00永久生效:\\r^ffffffDefense+2',
    '你成功的护送步行的曹操闯过了华容道。\\r^72fe00永久生效:\\r^ffffff体力值+5': 'You Successfully Escorted the Walking Cao Cao Through Huarong Pass.\\r^72fe00永久生效:\\r^ffffffStamina+5',
    '你成功的救出了华容道所有的将领和士兵。\\r^72fe00永久生效:\\r^ffffff治疗点数+10': 'You Successfully Rescued All Generals and Soldiers from Huarong Pass.\\r^72fe00永久生效:\\r^ffffffHeal Potency+10',
    '你成功的没有让一个火雷罐在华容道里成功爆炸。\\r^72fe00永久生效:\\r^ffffff附加伤害+2': 'You Successfully Prevented Any Fire Bomb from Exploding in Huarong Pass.\\r^72fe00永久生效:\\r^ffffffBonus DMG+2',
    '你的钓鱼技艺已经达到垂钓于无形的境界\\r^72fe00永久生效:\\r^ffffff攻击力+30\\r命中+4\\r体质+160': 'Your Angling Skill Has Reached the Realm of Fishing Without Form\\r^72fe00永久生效:\\r^ffffffAttack+30\\rAccuracy+4\\rStamina+160',
    '侯爵': 'Marquis',
    '倾团之战后获得，惟以铭记军团伙伴：皇天后土，尘世苍茫，生死与共，情谊绵长。': "Obtained After the Legion's Fall; In Memory of Legion Comrades: Heaven and Earth, The Vast World, Life and Death Together, Bonds That Endure.",
    '偷偷向别人扔祝福雪球，可谓2009年圣诞节最可爱的小恶魔！': 'Secretly Throwing Blessing Snowballs at Others; The Cutest Little Devil of Christmas 2009!',
    '光棍节里彻底脱光!\\r^ffffff攻击力+1\\r防御力+1': '光棍节里彻底脱光!\\r^ffffffAttack+1\\rDefense+1',
    '全国队伍竞技团队亚军奖励！\\r他们是一方霸主，拥有占地为王的权利！': 'National Team Arena Runner-up Reward!\\rThey Are Regional Overlords, Holding the Right to Rule Their Territory!',
    '全国队伍竞技团队冠军奖励！\\r他们是一方霸主，翻手为云，覆手为雨！': 'National Team Arena Champion Reward!\\rThey Are Regional Overlords, Turning Their Hand to Clouds, Reversing It to Rain!',
    '全国队伍竞技团队季军奖励！\\r勇猛过人，以一当百！': 'National Team Arena Third Place Reward!\\rFiercely Brave; One Against a Hundred!',
    '八卦异士': 'Bagua Eccentric',
    '公爵': 'Duke',
    '六扇门神捕': 'Six Doors Divine Catcher',
    '关中': 'Guanzhong',
    '关内侯': 'Marquis Within the Pass',
    '军职': 'Military Post',
    '冷血精兵': 'Cold-Blooded Elite',
    '几回魂梦与君同': 'How Many Times in Dreams With You',
    '凤雏弟子': "Fengchu's Disciple",
    '初级名师': 'Novice Teacher',
    '初级师傅': 'Novice Master',
    '剧情': 'Story',
    '十人敌': 'Takes On Ten',
    '千人敌': 'Takes On Thousand',
    '千山万水，一路相随!\\r^ffffff生命值+100': '千山万水，一路相随!\\r^ffffffHP+100',
    '千里独行客': 'Lone Traveler of a Thousand Miles',
    '南中踏破': 'Southern Zhong Conquered',
    '南蛮': 'Southern Barbarians',
    '印象派画家': 'Impressionist Painter',
    '历史的沧桑与辉煌，赤壁的风雨和成长，尽在有心人眼中。': "The Vicissitudes and Glory of History; Chibi's Storms and Growth; All Visible to the Mindful Eye.",
    '县侯': 'County Marquis',
    '名侦探': 'Great Detective',
    '名望350000——599999获得的爵位。': 'Peerage Obtained with Renown 350,000-599,999.',
    '名望600000——999999获得的爵位。': 'Peerage Obtained with Renown 600,000-999,999.',
    '名望达到1000000以上，获得的最高爵位。': 'Highest Peerage Obtained When Renown Reaches 1,000,000 or Above.',
    '吴国': 'Kingdom of Wu',
    '吴国主公排名第一，荣耀之称！': 'Wu Lord Ranked First; Title of Honor!',
    '吴国人士': 'Citizen of Wu',
    '吴国公.dds': 'Duke of Wu.dds',
    '吴国发言官': 'Wu Spokesperson',
    '吴国天下第一主公': 'Wu No.1 Lord',
    '吴国夫人.dds': 'Lady of Wu.dds',
    '吴国头目': 'Wu Chieftain',
    '吴国将领': 'Wu General',
    '吴国精兵': 'Wu Elite Soldier',
    '吴王.dds': 'King of Wu.dds',
    '吾将上下而求索': 'I Shall Search High and Low',
    '周公吐哺，天下归心！\\r^72fe00永久生效:\\r^ffffff治疗点数+20\\r体质+240\\r防御力+10\\r附加伤害+5': 'The Duke of Zhou Spits Out His Meal; The World Turns to Him!\\r^72fe00永久生效:\\r^ffffffHeal Potency+20\\rStamina+240\\rDefense+10\\rBonus DMG+5',
    '和你的兄弟朋友携手并肩，纵横赤壁吧！': 'Join Hands with Your Brothers and Friends; Roam Chibi Free!',
    '咒泉乡旅人': 'Curse-Spring Village Traveler',
    '哈哈哈,尔等可敢一战!\\r^ffffff攻击力+30\\r防御力+15\\r生命值+300': '哈哈哈,尔等可敢一战!\\r^ffffffAttack+30\\rDefense+15\\rHP+300',
    '商会': 'Merchant Guild',
    '商会大当家': 'Merchant Guild Chief',
    '商会学徒': 'Merchant Guild Apprentice',
    '商会执事': 'Merchant Guild Steward',
    '商会掌柜': 'Merchant Guild Shopkeeper',
    '商会旅行商': 'Merchant Guild Traveling Merchant',
    '商会长老': 'Merchant Guild Elder',
    '商界名人': 'Famous Businessman',
    '商界富豪': 'Wealthy Merchant',
    '嗜血擂台王者': 'Bloodthirsty Arena King',
    '园艺圣手': 'Gardening Sage',
    '圣诞活动中获得新年积分11－100名的牛人。': 'The Awesome Person Who Ranked 11th-100th in the New Year Points During the Christmas Event.',
    '圣诞活动中获得新年积分2-10名的牛人。': 'The Awesome Person Who Ranked 2nd-10th in the New Year Points During the Christmas Event.',
    '圣诞活动中获得新年积分第一名的牛人。': 'The Awesome Person Who Ranked 1st in the New Year Points During the Christmas Event.',
    '圣诞赐福居士': 'Christmas Blessing Recluse',
    '圣诞雪宝宝': 'Christmas Snow Baby',
    '圣诞雪精灵': 'Christmas Snow Sprite',
    '在上周的跨服军团战中获得第一名！': "Won First Place in Last Week's Cross-server Legion War!",
    '在国战中获得胜利！': 'Victory in the Nation War!',
    '在端午节护卫三闾大夫的英勇证明。': 'Proof of Valor in Guarding the Three Lords During the Dragon Boat Festival.',
    '在群英会比赛中获得刀兵种的第一名！': 'Won First Place in the Blade Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得剑兵种的第一名！': 'Won First Place in the Sword Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得叉兵种的第一名！': 'Won First Place in the Trident Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得弓兵种的第一名！': 'Won First Place in the Bow Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得弩兵种的第一名！': 'Won First Place in the Crossbow Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得戟兵种的第一名！': 'Won First Place in the Halberd Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得扇兵种的第一名！': 'Won First Place in the Fan Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得斧兵种的第一名！': 'Won First Place in the Axe Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得杖兵种的第一名！': 'Won First Place in the Staff Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得枪兵种的第一名！': 'Won First Place in the Spear Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得棍兵种的第一名！': 'Won First Place in the Cudgel Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得爪兵种的第一名！': 'Won First Place in the Claw Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得环兵种的第一名！': 'Won First Place in the Ring Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得盾兵种的第一名！': 'Won First Place in the Shield Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得舞兵种的第一名！': 'Won First Place in the Dance Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得钩兵种的第一名！': 'Won First Place in the Hook Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得钺兵种的第一名！': 'Won First Place in the Battle Axe Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得锏兵种的第一名！': 'Won First Place in the Mace Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得锤兵种的第一名！': 'Won First Place in the Hammer Troop Type at the Heroes Gathering!',
    '在群英会比赛中获得鞭兵种的第一名！': 'Won First Place in the Whip Troop Type at the Heroes Gathering!',
    '在跨服军团竞技赛晋身前六名，名闻天下的强大军团的一员！': 'Member of the World-renowned Powerful Legion That Ranked Top Six in the Cross-server Legion Tournament!',
    '在跨服军团竞技赛获得亚军，名震天下的强大军团的一员！': 'Member of the World-renowned Powerful Legion That Won the Cross-server Legion Tournament Runner-up!',
    '在跨服军团竞技赛获得冠军，天下无敌的强大军团的一员！': "Member of the World's Invincible Legion That Won the Cross-server Legion Tournament Championship!",
    '在跨服军团竞技赛获得季军，名扬天下的强大军团的一员！': 'Member of the Renowned Powerful Legion That Won the Cross-server Legion Tournament Third Place!',
    '在野人士': 'Wandering Free Agent',
    '地区': 'Region',
    '坐拥红颜锦裘': 'With Beauty and Fine Furs',
    '垂钓技艺已经成为你一生的追求\\r^72fe00永久生效:\\r^ffffff攻击力+20\\r命中+4\\r体质+80': 'The Art of Angling Has Become Your Lifelong Pursuit\\r^72fe00永久生效:\\r^ffffffAttack+20\\rAccuracy+4\\rStamina+80',
    '多情美人': 'Passionate Beauty',
    '大丞相.dds': 'Grand Chancellor.dds',
    '大内密探': 'Inner-Secret Agent',
    '大司徒.dds': 'Grand Minister of Education.dds',
    '大司空.dds': 'Grand Minister of Works.dds',
    '大司马.dds': 'Grand Minister of War.dds',
    '大吴上将': 'Great Wu Supreme General',
    '大吴名将': 'Great Wu Renowned General',
    '大吴名臣': 'Great Wu Renowned Minister',
    '大吴将佐': 'Great Wu Officer',
    '大吴强主': 'Great Wu Strong Lord',
    '大吴无双都督': 'Great Wu Peerless Commander',
    '大吴明主': 'Great Wu Wise Lord',
    '大吴杰出都督': 'Great Wu Outstanding Commander',
    '大吴精英都督': 'Great Wu Elite Commander',
    '大吴统帅': 'Great Wu Commander-in-Chief',
    '大吴能臣': 'Great Wu Capable Minister',
    '大吴臣佐': 'Great Wu Minister Aide',
    '大吴良将': 'Great Wu Good General',
    '大吴良臣': 'Great Wu Good Minister',
    '大吴英主': 'Great Wu Heroic Lord',
    '大吴雄主': 'Great Wu Mighty Lord',
    '大吴首辅': 'Great Wu Chief Minister',
    '大将军.dds': 'Grand General.dds',
    '大汉头目': 'Great Han Chieftain',
    '大汉精兵': 'Great Han Elite Soldier',
    '大蜀上将': 'Great Shu Supreme General',
    '大蜀名将': 'Great Shu Renowned General',
    '大蜀名臣': 'Great Shu Renowned Minister',
    '大蜀将佐': 'Great Shu Officer',
    '大蜀强主': 'Great Shu Strong Lord',
    '大蜀无双都督': 'Great Shu Peerless Commander',
    '大蜀明主': 'Great Shu Wise Lord',
    '大蜀杰出都督': 'Great Shu Outstanding Commander',
    '大蜀精英都督': 'Great Shu Elite Commander',
    '大蜀统帅': 'Great Shu Commander-in-Chief',
    '大蜀能臣': 'Great Shu Capable Minister',
    '大蜀臣佐': 'Great Shu Minister Aide',
    '大蜀良将': 'Great Shu Good General',
    '大蜀良臣': 'Great Shu Good Minister',
    '大蜀英主': 'Great Shu Heroic Lord',
    '大蜀雄主': 'Great Shu Mighty Lord',
    '大蜀首辅': 'Great Shu Chief Minister',
    '大金刚': 'Great Vajra',
    '大魏上将': 'Great Wei Supreme General',
    '大魏名将': 'Great Wei Renowned General',
    '大魏名臣': 'Great Wei Renowned Minister',
    '大魏将佐': 'Great Wei Officer',
    '大魏强主': 'Great Wei Strong Lord',
    '大魏无双都督': 'Great Wei Peerless Commander',
    '大魏明主': 'Great Wei Wise Lord',
    '大魏杰出都督': 'Great Wei Outstanding Commander',
    '大魏精英都督': 'Great Wei Elite Commander',
    '大魏统帅': 'Great Wei Commander-in-Chief',
    '大魏能臣': 'Great Wei Capable Minister',
    '大魏臣佐': 'Great Wei Minister Aide',
    '大魏良将': 'Great Wei Good General',
    '大魏良臣': 'Great Wei Good Minister',
    '大魏英主': 'Great Wei Heroic Lord',
    '大魏雄主': 'Great Wei Mighty Lord',
    '大魏首辅': 'Great Wei Chief Minister',
    '天下八杰军团众': 'Eight Champions of the Realm Legion',
    '天下最荣耀之主公！': "The World's Most Honorable Lord!",
    '天下皆唾手可得!\\r^ffffff攻击力+40\\r防御力+20\\r生命值+500': '天下皆唾手可得!\\r^ffffffAttack+40\\rDefense+20\\rHP+500',
    '天生一对': 'A Match Made in Heaven',
    '天险难困金蛟龙': 'Golden Dragon Unbound by Peril',
    '夫妻称号11': 'Spouse Title 11',
    '奸雄之相': 'Face of a Cunning Hero',
    '妙手空空': 'Light-Fingered Thief',
    '妙笔丹青': 'Master of the Brush',
    '姻缘': 'Marriage',
    '子爵': 'Viscount',
    '官渡之战所获得军衔': 'Military Rank Obtained at Guandu Battle',
    '官渡之战所获得军衔\\r^ffffff攻击力+100\\r防御力+30\\r生命值+400': '官渡之战所获得军衔\\r^ffffffAttack+100\\rDefense+30\\rHP+400',
    '官渡之战所获得军衔\\r^ffffff攻击力+150\\r防御力+60\\r生命值+600': '官渡之战所获得军衔\\r^ffffffAttack+150\\rDefense+60\\rHP+600',
    '官渡之战所获得军衔\\r^ffffff攻击力+200\\r防御力+100\\r生命值+1000': '官渡之战所获得军衔\\r^ffffffAttack+200\\rDefense+100\\rHP+1000',
    '官渡之战所获得军衔\\r^ffffff攻击力+30': '官渡之战所获得军衔\\r^ffffffAttack+30',
    '官渡之战所获得军衔\\r^ffffff攻击力+60\\r生命值+200': '官渡之战所获得军衔\\r^ffffffAttack+60\\rHP+200',
    '官职': 'Official Post',
    '寡人有喜': 'The Lonely One Has Joy',
    '寰宇一刀': 'A Blade Across the Universe',
    '寻宝界的初出茅庐者\\r^72fe00永久生效:\\r^ffffff攻击力+5\\r闪避+1': 'A Novice in the World of Treasure Hunting\\r^72fe00永久生效:\\r^ffffffAttack+5\\rDodge+1',
    '川南': 'South Sichuan',
    '川南运命': 'South Sichuan Fate',
    '巫南': 'Wunan',
    '巴蜀': 'Ba-Shu',
    '巴蜀硝烟': 'Ba-Shu Smoke of War',
    '巾帼·香风': 'Heroine · Fragrant Wind',
    '师徒': 'Mentor & Apprentice',
    '师徒奖励称号': 'Mentor & Apprentice Reward Title',
    '师德排行奖励称号\\r^ffffff生命值+200 防御力+5': 'Mentorship Virtue Leaderboard Reward Title\\r^ffffffHP +200 Defense +5',
    '废弃': 'Deprecated',
    '待定': 'To Be Determined',
    '心有灵犀': 'Hearts Linked as One',
    '忠义·孤胆': 'Loyalty · Lone Courage',
    '急速破敌': 'Swift Enemy Breaker',
    '总有一天我会当将军的!\\r^ffffff攻击力+10': '总有一天我会当将军的!\\r^ffffffAttack+10',
    '情缘值排行榜第一名所获得称号。\\r防御力+20\\r治疗效果+1%': 'Title Obtained by Ranking 1st on the Affection Points Leaderboard.\\rDefense +20\\rHeal Effect +1%',
    '情缘值排行榜第二名至第五名所获得称号。': 'Title Obtained by Ranking 2nd to 5th on the Affection Points Leaderboard.',
    '情缘值排行榜第六名至第十名所获得称号。': 'Title Obtained by Ranking 6th to 10th on the Affection Points Leaderboard.',
    '情缘值达到520点所获得称号。': 'Title Obtained When Affection Points Reach 520.',
    '愿得一心人白首不相离。': 'Wish to Find One True Love, Never Parting Until White-haired.',
    '慧眼识珠赛伯乐': 'Discerning Eyes Rival Bo Le',
    '我是谁': 'Who Am I',
    '我本楚狂人': 'I Am a Chu Madman',
    '战神象征\\r^ff7d2f个人竞技经验排行榜第一名专属称号。\\r生命值+1000': 'God of War Symbol\\r^ff7d2fIndividual Arena EXP Leaderboard 1st Place Exclusive Title.\\rHP+1000',
    '战神象征\\r^ff7d2f个人竞技经验排行榜第三名专属称号。\\r生命值+600': 'God of War Symbol\\r^ff7d2fIndividual Arena EXP Leaderboard 3rd Place Exclusive Title.\\rHP+600',
    '战神象征\\r^ff7d2f个人竞技经验排行榜第二名专属称号。\\r生命值+800': 'God of War Symbol\\r^ff7d2fIndividual Arena EXP Leaderboard 2nd Place Exclusive Title.\\rHP+800',
    '战神象征\\r^ff7d2f个人竞技经验排行榜第五名专属称号。\\r生命值+600': 'God of War Symbol\\r^ff7d2fIndividual Arena EXP Leaderboard 5th Place Exclusive Title.\\rHP+600',
    '战神象征\\r^ff7d2f个人竞技经验排行榜第四名专属称号。\\r生命值+600': 'God of War Symbol\\r^ff7d2fIndividual Arena EXP Leaderboard 4th Place Exclusive Title.\\rHP+600',
    '所谓任人唯贤，胸怀大气，为能主之相。\\r^72fe00永久生效:\\r^ffffff治疗点数+10\\r体质+10\\r防御力+1': 'To Appoint Only the Worthy, with a Broad Mind, Is the Bearing of a Capable Lord.\\r^72fe00永久生效:\\r^ffffffHeal Potency+10\\rStamina+10\\rDefense+1',
    '手挽萝莉趁夜凉': 'Hand in Hand with Loli in the Night Cool',
    '扫黄先锋': 'Anti-Vice Vanguard',
    '拥有了与战魂产生共鸣的能力\\r生命+50，攻击力+5': '拥有了与战魂产生共鸣的能力\\rHP+50，Attack+5',
    '拥有吴国最强大势力的军团都督，\\r被全国群雄推戴为霸主。\\r可以发布奇袭敌国的命令。\\r本周军团指令数增加100。\\r团员可以前去皇甫炎领取战略指令。': "The Legion Commander with Wu's Mightiest Force;\\rProclaimed Overlord by Heroes Nationwide.\\rMay Issue Surprise Attack Orders Against Enemy Nations.\\rThis Week Legion Orders Increase by 100.\\rMembers May Visit Huangfu Yan to Claim Strategic Orders.",
    '拥有吴国第三大势力的军团都督\\r本周军团指令数增加70。\\r团员可以前去皇甫炎领取战略指令。': 'Wu 3rd Ranked Legion Commander\\rThis week Legion orders increase by 70.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有吴国第二大势力的军团都督\\r本周军团指令数增加80。\\r团员可以前去皇甫炎领取战略指令。': 'Wu 2nd Ranked Legion Commander\\rThis week Legion orders increase by 80.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有吴国第五大势力的军团都督\\r本周军团指令数增加50。\\r团员可以前去皇甫炎领取战略指令。': 'Wu 5th Ranked Legion Commander\\rThis week Legion orders increase by 50.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有吴国第四大势力的军团都督\\r本周军团指令数增加60。\\r团员可以前去皇甫炎领取战略指令。': 'Wu 4th Ranked Legion Commander\\rThis week Legion orders increase by 60.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有此称号在7月22-8月8日间\\r每晚19：30-21：30，在线即可获得“赤壁之战备战物资”奖励\\r周日晚还有万元大奖等着你哦，不要错过！': 'With This Title, Between July 22 and August 8;\\rLog In Nightly 19:30-21:30 to Receive the "Battle of Chibi War Prep Supplies" Reward;\\rSunday Nights Also Have a 10,000-yuan Grand Prize Waiting for You, Don\'t Miss It!',
    '拥有蜀国最强大势力的军团都督，\\r被全国群雄推戴为霸主。\\r可以发布奇袭敌国的命令。\\r本周军团指令数增加100。\\r团员可以前去皇甫炎领取战略指令。': "The Legion Commander with Shu's Mightiest Force;\\rProclaimed Overlord by Heroes Nationwide.\\rMay Issue Surprise Attack Orders Against Enemy Nations.\\rThis Week Legion Orders Increase by 100.\\rMembers May Visit Huangfu Yan to Claim Strategic Orders.",
    '拥有蜀国第三大势力的军团都督\\r本周军团指令数增加70。\\r团员可以前去皇甫炎领取战略指令。': 'Shu 3rd Ranked Legion Commander\\rThis week Legion orders increase by 70.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有蜀国第二大势力的军团都督\\r本周军团指令数增加80。\\r团员可以前去皇甫炎领取战略指令。': 'Shu 2nd Ranked Legion Commander\\rThis week Legion orders increase by 80.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有蜀国第五大势力的军团都督\\r本周军团指令数增加50。\\r团员可以前去皇甫炎领取战略指令。': 'Shu 5th Ranked Legion Commander\\rThis week Legion orders increase by 50.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有蜀国第四大势力的军团都督\\r本周军团指令数增加60。\\r团员可以前去皇甫炎领取战略指令。': 'Shu 4th Ranked Legion Commander\\rThis week Legion orders increase by 60.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有魏国最强大势力的军团都督，\\r被全国群雄推戴为霸主。\\r可以发布奇袭敌国的命令。\\r本周军团指令数增加100。\\r团员可以前去皇甫炎领取战略指令。': "The Legion Commander with Wei's Mightiest Force;\\rProclaimed Overlord by Heroes Nationwide.\\rMay Issue Surprise Attack Orders Against Enemy Nations.\\rThis Week Legion Orders Increase by 100.\\rMembers May Visit Huangfu Yan to Claim Strategic Orders.",
    '拥有魏国第三大势力的军团都督\\r本周军团指令数增加70。\\r团员可以前去皇甫炎领取战略指令。': 'Wei 3rd Ranked Legion Commander\\rThis week Legion orders increase by 70.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有魏国第二大势力的军团都督\\r本周军团指令数增加80。\\r团员可以前去皇甫炎领取战略指令。': 'Wei 2nd Ranked Legion Commander\\rThis week Legion orders increase by 80.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有魏国第五大势力的军团都督\\r本周军团指令数增加50。\\r团员可以前去皇甫炎领取战略指令。': 'Wei 5th Ranked Legion Commander\\rThis week Legion orders increase by 50.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '拥有魏国第四大势力的军团都督\\r本周军团指令数增加60。\\r团员可以前去皇甫炎领取战略指令。': 'Wei 4th Ranked Legion Commander\\rThis week Legion orders increase by 60.\\rMembers may visit Huangfu Yan to claim strategic orders.',
    '持有此称号，\\r可以消耗吴国诏书来进行阵营频道发言。': 'With This Title,\\rConsume a Wu Edict to Speak in Faction Channel.',
    '持有此称号，\\r可以消耗蜀国诏书来进行阵营频道发言。': 'With This Title,\\rConsume a Shu Edict to Speak in Faction Channel.',
    '持有此称号，\\r可以消耗魏国诏书来进行阵营频道发言。': 'With This Title,\\rConsume a Wei Edict to Speak in Faction Channel.',
    '捉鬼大师': 'Ghost-Catching Master',
    '排行榜': 'Ranking',
    '探宝歌·不贪为宝': 'Treasure Song: Not Greedy for Treasure',
    '探宝歌·宝山空回': 'Treasure Song: Return Empty from Treasure Mountain',
    '摸金校尉': 'Tomb-Robbing Colonel',
    '擂台大会竞技积分达到10000点，获得的称号。': 'Title Obtained When Arena Tournament Points Reach 10,000.',
    '擂台大会竞技积分达到1000点，获得的称号。': 'Title Obtained When Arena Tournament Points Reach 1,000.',
    '文官': 'Civil Post',
    '斗群英军团争霸赛称号': 'Hero Clash Legion Championship Title',
    '新服开启的2周内，在线满120小时获得的荣誉称号。': 'Honorary Title Obtained by Being Online 120 Hours Within 2 Weeks of a New Server Opening.',
    '新服开启的2周内，在线满80小时获得的荣誉称号。': 'Honorary Title Obtained by Being Online 80 Hours Within 2 Weeks of a New Server Opening.',
    '族系': 'Lineage',
    '无畏无惧勇往直前的将士。\\r^72fe00永久生效:\\r^ffffff体质+30 攻击力+5': 'A Fearless Soldier Charging Forward.\\r^72fe00永久生效:\\r^ffffffStamina+30 Attack+5',
    '无神论者': 'Atheist',
    '星盘': 'Star Chart',
    '暂无': 'None',
    '曾给神仙捶过腿': "Once Massaged a God's Legs",
    '木人兵卒': 'Wooden Man Soldier',
    '木人大将': 'Wooden Man General',
    '木人百姓': 'Wooden Man Civilian',
    '木人皇帝': 'Wooden Man Emperor',
    '木人队长': 'Wooden Man Captain',
    '朱雀': 'Vermilion Bird',
    '朱雀\\r^ffffff万众瞩目,豪气冲天!': 'Vermilion Bird\\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!',
    '朱雀\\r^ffffff攻击力+10': '朱雀\\r^ffffffAttack+10',
    '朱雀\\r^ffffff攻击力+10\\r暴击+1': '朱雀\\r^ffffffAttack+10\\rCrit+1',
    '朱雀\\r^ffffff攻击力+10\\r暴击抗性+1': '朱雀\\r^ffffffAttack+10\\rCrit Resist+1',
    '朱雀\\r^ffffff攻击力+20\\r攻击强度+2%': '朱雀\\r^ffffffAttack+20\\rAttack Power+2%',
    '朱雀\\r^ffffff攻击力+20\\r治疗效果+3%': '朱雀\\r^ffffffAttack+20\\rHeal Effect+3%',
    '朱雀\\r^ffffff攻击力+30\\r刺破+2\\r穿透+2': '朱雀\\r^ffffffAttack+30\\rPierce+2\\rPenetration+2',
    '朱雀\\r^ffffff攻击力+45\\r防御力+10\\r附加伤害+30\\r刺破+2\\r穿透+2': '朱雀\\r^ffffffAttack+45\\rDefense+10\\rBonus DMG+30\\rPierce+2\\rPenetration+2',
    '朱雀\\r^ffffff攻击力+5': '朱雀\\r^ffffffAttack+5',
    '朱雀\\r^ffffff攻击力+5\\r攻击强度+1%': '朱雀\\r^ffffffAttack+5\\rAttack Power+1%',
    '朱雀\\r^ffffff攻击力+5\\r闪避+1': '朱雀\\r^ffffffAttack+5\\rDodge+1',
    '朱雀\\r^ffffff生命值+1200\\r攻击力+65\\r防御力+40\\r附加伤害+110\\r强韧+80\\r攻击强度+1%\\r闪避+1\\r治疗效果+3%': '朱雀\\r^ffffffHP+1200\\rAttack+65\\rDefense+40\\rBonus DMG+110\\rToughness+80\\rAttack Power+1%\\rDodge+1\\rHeal Effect+3%',
    '朱雀\\r^ffffff生命值+300\\r强韧+20': '朱雀\\r^ffffffHP+300\\rToughness+20',
    '朱雀\\r^ffffff生命值+300\\r攻击力+10\\r防御力+15\\r附加伤害+10\\r强韧+20\\r间接伤害抗性+2': '朱雀\\r^ffffffHP+300\\rAttack+10\\rDefense+15\\rBonus DMG+10\\rToughness+20\\rIndirect DMG Resist+2',
    '朱雀\\r^ffffff生命值+300\\r攻击力+20\\r防御力+20\\r附加伤害+20\\r强韧+20\\r直接伤害抗性+2': '朱雀\\r^ffffffHP+300\\rAttack+20\\rDefense+20\\rBonus DMG+20\\rToughness+20\\rDirect DMG Resist+2',
    '朱雀\\r^ffffff生命值+300\\r攻击力+25\\r防御力+10\\r附加伤害+20\\r强韧+20\\r暴击抗性+1': '朱雀\\r^ffffffHP+300\\rAttack+25\\rDefense+10\\rBonus DMG+20\\rToughness+20\\rCrit Resist+1',
    '朱雀\\r^ffffff生命值+600\\r攻击力+25\\r防御力+10\\r附加伤害+20\\r强韧+40\\r暴击+1': '朱雀\\r^ffffffHP+600\\rAttack+25\\rDefense+10\\rBonus DMG+20\\rToughness+40\\rCrit+1',
    '朱雀\\r^ffffff生命值+600\\r攻击力+30\\r防御力+5\\r附加伤害+10\\r强韧+40\\r攻击强度+2%': '朱雀\\r^ffffffHP+600\\rAttack+30\\rDefense+5\\rBonus DMG+10\\rToughness+40\\rAttack Power+2%',
    '朱雀\\r^ffffff防御力+10\\r直接伤害抗性+2': '朱雀\\r^ffffffDefense+10\\rDirect DMG Resist+2',
    '朱雀\\r^ffffff防御力+10\\r间接伤害抗性+2': '朱雀\\r^ffffffDefense+10\\rIndirect DMG Resist+2',
    '朱雀\\r^ffffff防御力+5\\r附加伤害+10': '朱雀\\r^ffffffDefense+5\\rBonus DMG+10',
    '朱雀\\r^ffffff防御力+5\\r附加伤害+15': '朱雀\\r^ffffffDefense+5\\rBonus DMG+15',
    '杀神·四方': 'God of Slaughter · Four Directions',
    '来自演义剧本麦城之战\\r^72fe00永久生效\\r^ffffff攻击力 +2': 'From the Romance Script: Battle of Maicheng\\r^72fe00永久生效\\r^ffffffAttack +2',
    '来自演义剧本麦城之战\\r^72fe00永久生效\\r^ffffff攻击力 +3，暴击伤害 +1%': 'From the Romance Script: Battle of Maicheng\\r^72fe00永久生效\\r^ffffffAttack +3，Crit DMG +1%',
    '来自演义剧本麦城之战\\r^72fe00永久生效\\r^ffffff攻击力 +5，暴击伤害 +2%': 'From the Romance Script: Battle of Maicheng\\r^72fe00永久生效\\r^ffffffAttack +5，Crit DMG +2%',
    '校军场木人对你的崇敬达到了一个新的高度。\\r体质 +160': '校军场木人对你的崇敬达到了一个新的高度。\\rStamina +160',
    '校军场木人的眼中你就是神一般的存在！\\r体质 +320': '校军场木人的眼中你就是神一般的存在！\\rStamina +320',
    '梅雪煮茶人': 'Plum-Snow Tea Brewer',
    '梦里不知身是客': 'In Dreams, Unaware I Am a Guest',
    '棋痴': 'Chess Obsessive',
    '欢乐积分排行榜第11-100名专属称号！\\r拥有此称号，可前往完美礼品使者处领取奖品。': 'Joy Points Leaderboard Rank 11-100 Exclusive Title!\\rWith This Title, Visit the Perfect Gift Emissary to Claim Rewards.',
    '欢乐积分排行榜第1名专属称号！\\r拥有此称号，可前往完美礼品使者处领取奖品。': 'Joy Points Leaderboard Rank 1 Exclusive Title!\\rWith This Title, Visit the Perfect Gift Emissary to Claim Rewards.',
    '欢乐积分排行榜第2-10名专属称号！\\r拥有此称号，可前往完美礼品使者处领取奖品。': 'Joy Points Leaderboard Rank 2-10 Exclusive Title!\\rWith This Title, Visit the Perfect Gift Emissary to Claim Rewards.',
    '欢度圣诞!\\r^ffffff攻击力+10\\r防御力+5': '欢度圣诞!\\r^ffffffAttack+10\\rDefense+5',
    '欢度圣诞!\\r^ffffff攻击力+30\\r防御力+15': '欢度圣诞!\\r^ffffffAttack+30\\rDefense+15',
    '武官': 'Military Post',
    '武艺大师': 'Martial Arts Master',
    '武艺高手': 'Martial Arts Expert',
    '每周生效:\\r^ffffff阵营：吴\\r来源：上周五丈原贡献度排行榜前五十名。': 'Active Weekly:\\r^ffffffFaction: Wu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard Top 50.',
    '每周生效:\\r^ffffff阵营：蜀\\r来源：上周阵五丈原献度排行榜前五十名。': 'Active Weekly:\\r^ffffffFaction: Shu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard Top 50.',
    '每周生效:\\r^ffffff阵营：魏\\r来源：上周五丈原贡献度排行榜前五十名。': 'Active Weekly:\\r^ffffffFaction: Wei\\rSource: Last Week Wuzhangyuan Contribution Leaderboard Top 50.',
    '每周生效:\\r阵营：吴\\r来源：上周五丈原贡献度排行榜第一名。\\r可佩勋章：天佑勋章(吴)': "Active Weekly:\\rFaction: Wu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 1st Place.\\rEquippable Medal: Heaven's Blessing Medal (Wu)",
    '每周生效:\\r阵营：吴\\r来源：上周五丈原贡献度排行榜第三名。\\r可佩勋章：铭印勋章(吴)': 'Active Weekly:\\rFaction: Wu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 3rd Place.\\rEquippable Medal: Imprint Medal (Wu)',
    '每周生效:\\r阵营：吴\\r来源：上周五丈原贡献度排行榜第二名。\\r可佩勋章：罡魂勋章(吴)': 'Active Weekly:\\rFaction: Wu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 2nd Place.\\rEquippable Medal: Gang Soul Medal (Wu)',
    '每周生效:\\r阵营：蜀\\r来源：上周五丈原贡献度排行榜第一名。\\r可佩戴勋章：天佑勋章(蜀)': "Active Weekly:\\rFaction: Shu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 1st Place.\\rEquippable Medal: Heaven's Blessing Medal (Shu)",
    '每周生效:\\r阵营：蜀\\r来源：上周五丈原贡献度排行榜第三名。\\r可佩勋章：铭印勋章(蜀)': 'Active Weekly:\\rFaction: Shu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 3rd Place.\\rEquippable Medal: Imprint Medal (Shu)',
    '每周生效:\\r阵营：蜀\\r来源：上周五丈原贡献度排行榜第二名。\\r可佩勋章：罡魂勋章(蜀)': 'Active Weekly:\\rFaction: Shu\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 2nd Place.\\rEquippable Medal: Gang Soul Medal (Shu)',
    '每周生效:\\r阵营：魏\\r来源：上周五丈原献度排行榜第三名。\\r可佩勋章：铭印勋章(魏)': 'Active Weekly:\\rFaction: Wei\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 3rd Place.\\rEquippable Medal: Imprint Medal (Wei)',
    '每周生效:\\r阵营：魏\\r来源：上周五丈原贡献度排行榜第一名。\\r可佩戴勋章：天佑勋章(魏)': "Active Weekly:\\rFaction: Wei\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 1st Place.\\rEquippable Medal: Heaven's Blessing Medal (Wei)",
    '每周生效:\\r阵营：魏\\r来源：上周五丈原贡献度排行榜第二名。\\r可佩戴勋章：罡魂勋章(魏)': 'Active Weekly:\\rFaction: Wei\\rSource: Last Week Wuzhangyuan Contribution Leaderboard 2nd Place.\\rEquippable Medal: Gang Soul Medal (Wei)',
    '每天第一次参与护送可以额外获得较多历练。': 'The first escort participation each day grants extra EXP.',
    '每月消费积分排行榜第一名获得的称号\\r生命值+1000 暴击+5 命中+10 治疗点数+150\\r^fffd44有效期至每月月底': 'Monthly Consumption Points Leaderboard 1st Place Title\\rHP +1000 Crit +5 Accuracy +10 Heal Potency +150\\r^fffd44Valid Until Month End',
    '每月消费积分排行榜第二至十名获得的称号\\r生命值+500 暴击+2 命中+5 治疗点数+80\\r^ff9c00有效期至每月月底': 'Monthly Consumption Points Leaderboard 2nd to 10th Place Title\\rHP +500 Crit +2 Accuracy +5 Heal Potency +80\\r^ff9c00Valid Until Month End',
    '每月生效:\\r阵营：吴\\r来源：上月襄阳之战吴国积分排行榜前十八位。\\r获得该荣誉的玩家请于本周六参与跨服襄阳之战，过期不候。': 'Active Monthly:\\rFaction: Wu\\rSource: Last Month Battle of Xiangyang Wu Points Leaderboard Top 18.\\rPlayers Who Earned This Honor Please Participate in the Cross-server Battle of Xiangyang This Saturday; No Exceptions After Expiry.',
    '每月生效:\\r阵营：蜀\\r来源：上月襄阳之战蜀国积分排行榜前十八位。\\r获得该荣誉的玩家请于本周六参与跨服襄阳之战，过期不候。': 'Active Monthly:\\rFaction: Shu\\rSource: Last Month Battle of Xiangyang Shu Points Leaderboard Top 18.\\rPlayers Who Earned This Honor Please Participate in the Cross-server Battle of Xiangyang This Saturday; No Exceptions After Expiry.',
    '每月生效:\\r阵营：魏\\r来源：上月襄阳之战魏国积分排行榜前十八位。\\r获得该荣誉的玩家请于本周六参与跨服襄阳之战，过期不候。': 'Active Monthly:\\rFaction: Wei\\rSource: Last Month Battle of Xiangyang Wei Points Leaderboard Top 18.\\rPlayers Who Earned This Honor Please Participate in the Cross-server Battle of Xiangyang This Saturday; No Exceptions After Expiry.',
    '比驯鹿更灵活，比精灵更聪敏!': 'More Agile Than Reindeer, More Clever Than Elves!',
    '民间': 'Civilian',
    '江南': 'Jiangnan',
    '河北': 'Hebei',
    '法天立道圣德神功玫瑰王': 'Rose King of Divine Virtue',
    '泼浓墨描三国悲愁': 'Splash Dark Ink, Paint Three Kingdoms Sorrow',
    '洛渔乐·东猎西渔': 'Luo Fishing Joy: Hunt East, Fish West',
    '洛渔乐·伊人垂钓': 'Luo Fishing Joy: The Beauty Angling',
    '洛渔乐·叶舟风波': 'Luo Fishing Joy: Leaf-Boat Storm',
    '洛渔乐·浑水摸鱼': 'Luo Fishing Joy: Fish in Troubled Waters',
    '洛阳黍离': 'Luoyang Millet Desolation',
    '活动': 'Event',
    '消费积分': 'Consumption Points',
    '温候近卫骑': "Marquis Wen's Guard Cavalry",
    '满80级凭称号可以领取一个秘文·冥（专属）；\\r满英雄15级凭称号可以领取一个秘文·兵（专属）；\\r满英雄30级凭称号可以领取20个星之仙华。': 'At Level 80, Claim One Mystic Scroll · Nether (Exclusive) with This Title;\\rAt Hero Level 15, Claim One Mystic Scroll · Soldier (Exclusive) with This Title;\\rAt Hero Level 30, Claim 20 Star Fairy Blossoms with This Title.',
    '满80级凭称号可以领取一个秘文·冥（专属）；\\r满英雄15级凭称号可以领取一个秘文·兵（专属）；\\r满英雄30级凭称号可以领取30个星之仙华。': 'At Level 80, Claim One Mystic Scroll · Nether (Exclusive) with This Title;\\rAt Hero Level 15, Claim One Mystic Scroll · Soldier (Exclusive) with This Title;\\rAt Hero Level 30, Claim 30 Star Fairy Blossoms with This Title.',
    '演义战场“逆旅河山”中获得的称号\\r攻击力 +2': '演义战场“逆旅河山”中获得的称号\\rAttack +2',
    '演义战场“逆旅河山”中获得的称号\\r攻击力+5,防御值+2，体力值+5': '演义战场“逆旅河山”中获得的称号\\rAttack+5,Defense值+2，Stamina+5',
    '火曜来客': 'Tuesday Visitor',
    '火眼金睛': 'Fiery Eyes, Golden Gaze',
    '炼蛊师': 'Gu Refiner',
    '烟雨江南': 'Misty Rain Jiangnan',
    '热血青年': 'Hot-Blooded Youth',
    '爱江山更爱美人': 'Love the Realm, Love Beauty More',
    '爵位': 'Peerage',
    '牧羊小牛': 'Shepherd Calf',
    '牧羊虾米': 'Shepherd Shrimp',
    '犹如蛟龙一般，轻松飞跃华容天险的豪杰。\\r^72fe00永久生效:\\r^ffffff体质+80 攻击力+10': 'A Hero Who Soared Over the Perils of Huarong Like a Flood Dragon.\\r^72fe00永久生效:\\r^ffffffStamina+80 Attack+10',
    '犹恐相逢是梦中': 'Fearing This Meeting Is a Dream',
    '猛将·恶来': 'Fierce General · E Lai',
    '玄武': 'Black Tortoise',
    '玄武\\r^ffffff万众瞩目,豪气冲天!': 'Black Tortoise\\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!',
    '玄武\\r^ffffff强韧+10\\r闪避+1': '玄武\\r^ffffffToughness+10\\rDodge+1',
    '玄武\\r^ffffff攻击力+2': '玄武\\r^ffffffAttack+2',
    '玄武\\r^ffffff攻击力+3': '玄武\\r^ffffffAttack+3',
    '玄武\\r^ffffff攻击力+3\\r穿透+1': '玄武\\r^ffffffAttack+3\\rPenetration+1',
    '玄武\\r^ffffff攻击力+3\\r防御力+5\\r暴击+1': '玄武\\r^ffffffAttack+3\\rDefense+5\\rCrit+1',
    '玄武\\r^ffffff攻击力+4\\r刺破+1': '玄武\\r^ffffffAttack+4\\rPierce+1',
    '玄武\\r^ffffff攻击力+5\\r间接伤害抗性+1': '玄武\\r^ffffffAttack+5\\rIndirect DMG Resist+1',
    '玄武\\r^ffffff攻击力+6\\r防御力+2\\r附加伤害+5\\r刺破+1': '玄武\\r^ffffffAttack+6\\rDefense+2\\rBonus DMG+5\\rPierce+1',
    '玄武\\r^ffffff暴击+1\\r防御力+5': '玄武\\r^ffffffCrit+1\\rDefense+5',
    '玄武\\r^ffffff生命值+100': '玄武\\r^ffffffHP+100',
    '玄武\\r^ffffff生命值+100\\r强韧+6': '玄武\\r^ffffffHP+100\\rToughness+6',
    '玄武\\r^ffffff生命值+100\\r攻击力+4\\r强韧+16\\r闪避+1': '玄武\\r^ffffffHP+100\\rAttack+4\\rToughness+16\\rDodge+1',
    '玄武\\r^ffffff生命值+100\\r攻击力+6\\r防御力+2\\r附加伤害+16\\r强韧+6\\r命中+1': '玄武\\r^ffffffHP+100\\rAttack+6\\rDefense+2\\rBonus DMG+16\\rToughness+6\\rAccuracy+1',
    '玄武\\r^ffffff生命值+200\\r攻击力+14\\r防御力+5\\r附加伤害+10\\r强韧+12\\r间接伤害抗性+1': '玄武\\r^ffffffHP+200\\rAttack+14\\rDefense+5\\rBonus DMG+10\\rToughness+12\\rIndirect DMG Resist+1',
    '玄武\\r^ffffff生命值+200\\r攻击力+7\\r防御力+1\\r附加伤害+5\\r强韧+6\\r穿透+1': '玄武\\r^ffffffHP+200\\rAttack+7\\rDefense+1\\rBonus DMG+5\\rToughness+6\\rPenetration+1',
    '玄武\\r^ffffff防御力+1\\r附加伤害+5': '玄武\\r^ffffffDefense+1\\rBonus DMG+5',
    '玄武\\r^ffffff防御力+2\\r附加伤害+5': '玄武\\r^ffffffDefense+2\\rBonus DMG+5',
    '玄武\\r^ffffff防御力+3\\r治疗点数+10': '玄武\\r^ffffffDefense+3\\rHeal Potency+10',
    '玄武\\r^ffffff防御力+3\\r附加伤害+5': '玄武\\r^ffffffDefense+3\\rBonus DMG+5',
    '玄武\\r^ffffff防御力+5\\r附加伤害+5\\r治疗点数+10': '玄武\\r^ffffffDefense+5\\rBonus DMG+5\\rHeal Potency+10',
    '玄武\\r^ffffff附加伤害+10\\r命中+1': '玄武\\r^ffffffBonus DMG+10\\rAccuracy+1',
    '王爵': 'King',
    '王者归来限量称号。\\r^ffffff攻击力+30\\r防御力+15\\r附加伤害+20\\r命中+1\\r强韧+20': '王者归来限量称号。\\r^ffffffAttack+30\\rDefense+15\\rBonus DMG+20\\rAccuracy+1\\rToughness+20',
    '玩家^ff7d2fξ天降男神^ffffff私人订制称号。': 'Player ^ff7d2fξ天降男神^ffffff Custom Title.',
    '玩家^ff7d2f丿☆堇色素颜`丶^ffffff私人订制称号。': 'Player ^ff7d2f丿☆堇色素颜`丶^ffffff Custom Title.',
    '玩家^ff7d2f灬婉风若曦灬^ffffff私人订制称号。': 'Player ^ff7d2f灬婉风若曦灬^ffffff Custom Title.',
    '玩家^ff7d2f王者归来※品三国^ffffff私人订制称号。': 'Player ^ff7d2f王者归来※品三国^ffffff Custom Title.',
    '玩家^ff7d2f竹海子龙^ffffff私人订制称号。': 'Player ^ff7d2f竹海子龙^ffffff Custom Title.',
    '玩家^ff7d2f绝铯惑℃☆帝^ffffff私人订制称号。': 'Player ^ff7d2f绝铯惑℃☆帝^ffffff Custom Title.',
    '玩家^ff7d2f跳大神的黄半仙^ffffff私人订制称号。': 'Player ^ff7d2f跳大神的黄半仙^ffffff Custom Title.',
    '瑜米': 'Yu Rice',
    '生命值+100': 'HP+100',
    '生命值+1000': 'HP+1000',
    '生命值+300': 'HP+300',
    '生命值+600': 'HP+600',
    '用人不疑礼下士': 'Trust Those Employed, Honor the Worthy',
    '用抢夺来的一些糖葫芦换来的称号。\\r离正式加入抢夺糖葫芦的大军不远了。\\r^72fe00永久生效:\\r^ffffff生命值+30\\r攻击力+2': 'Title Earned with Some Seized Candied Haws.\\rYou Are Not Far from Officially Joining the Candied Haw Seizing Army.\\r^72fe00永久生效:\\r^ffffffHP+30\\rAttack+2',
    '用抢夺来的各种糖葫芦换来的称号。\\r^72fe00永久生效:\\r^ffffff生命值+10': 'Title Earned with Various Seized Candied Haws.\\r^72fe00永久生效:\\r^ffffffHP+10',
    '用抢夺来的大量糖葫芦换来的称号。\\r恭喜已经成功升职为抢夺大军的小队长了。\\r^72fe00永久生效:\\r^ffffff生命值+80\\r攻击力+5': 'Title Earned with a Great Quantity of Seized Candied Haws.\\rCongratulations on Your Promotion to Squad Leader of the Seizing Army.\\r^72fe00永久生效:\\r^ffffffHP+80\\rAttack+5',
    '用抢夺来的成堆的糖葫芦换来的称号。\\r你已经为整个抢夺糖葫芦的军队做出了杰出的贡献。\\r^72fe00永久生效:\\r^ffffff生命值+200\\r攻击力+10\\r治疗效果+1%': 'Title Earned with Heaps of Seized Candied Haws.\\rYou Have Made Outstanding Contributions to the Entire Candied Haw Seizing Army.\\r^72fe00永久生效:\\r^ffffffHP+200\\rAttack+10\\rHeal Effect+1%',
    '用抢夺来的海量的糖葫芦换来的称号。\\r你在抢夺糖葫芦的军队里，已经所向披靡无人能及了。\\r^72fe00永久生效:\\r^ffffff生命值+400\\r攻击力+20\\r治疗效果+1%\\r攻击强度+1%': 'Title Earned with an Ocean of Seized Candied Haws.\\rIn the Candied Haw Seizing Army, You Are Now Unmatched and Invincible.\\r^72fe00永久生效:\\r^ffffffHP+400\\rAttack+20\\rHeal Effect+1%\\rAttack Power+1%',
    '由Gamania官方认证的至尊武者': 'Officially Certified Supreme Warrior by Gamania',
    '男爵': 'Baron',
    '白墨墨者': 'White Ink Mohist',
    '白墨长老': 'White Ink Elder',
    '白墨队主': 'White Ink Squad Leader',
    '白帝城荣誉商人': 'Baidi City Honored Merchant',
    '白帝城跑商中获得的称号\\r体力值+5': '白帝城跑商中获得的称号\\rStamina+5',
    '白帝城跑商中获得的称号\\r攻击力 +2，防御力+1': '白帝城跑商中获得的称号\\rAttack +2，Defense+1',
    '白帝城跑商中获得的称号\\r治疗属性+1%': '白帝城跑商中获得的称号\\rHeal Stat+1%',
    '白帝城跑商中获得的称号\\r生命值+60，攻击力 +10，防御力+5': '白帝城跑商中获得的称号\\rHP+60，Attack +10，Defense+5',
    '白帝城跑商中获得的称号\\r附加伤害+2': '白帝城跑商中获得的称号\\rBonus DMG+2',
    '白虎': 'White Tiger',
    '白虎\\r^ffffff万众瞩目,豪气冲天!': 'White Tiger\\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!',
    '白虎\\r^ffffff攻击力+10\\r命中+2': '白虎\\r^ffffffAttack+10\\rAccuracy+2',
    '白虎\\r^ffffff攻击力+10\\r暴击抗性+1': '白虎\\r^ffffffAttack+10\\rCrit Resist+1',
    '白虎\\r^ffffff攻击力+10\\r闪避+2': '白虎\\r^ffffffAttack+10\\rDodge+2',
    '白虎\\r^ffffff攻击力+12\\r刺破+1\\r穿透+1': '白虎\\r^ffffffAttack+12\\rPierce+1\\rPenetration+1',
    '白虎\\r^ffffff攻击力+14\\r防御力+3\\r附加伤害+10\\r暴击抗性+1': '白虎\\r^ffffffAttack+14\\rDefense+3\\rBonus DMG+10\\rCrit Resist+1',
    '白虎\\r^ffffff攻击力+3': '白虎\\r^ffffffAttack+3',
    '白虎\\r^ffffff攻击力+4': '白虎\\r^ffffffAttack+4',
    '白虎\\r^ffffff攻击力+4\\r命中+1': '白虎\\r^ffffffAttack+4\\rAccuracy+1',
    '白虎\\r^ffffff攻击力+4\\r防御力+14\\r附加伤害+10\\r直接伤害抗性+1\\r间接伤害抗性+1': '白虎\\r^ffffffAttack+4\\rDefense+14\\rBonus DMG+10\\rDirect DMG Resist+1\\rIndirect DMG Resist+1',
    '白虎\\r^ffffff生命值+200\\r强韧+12': '白虎\\r^ffffffHP+200\\rToughness+12',
    '白虎\\r^ffffff生命值+200\\r强韧+15': '白虎\\r^ffffffHP+200\\rToughness+15',
    '白虎\\r^ffffff生命值+200\\r攻击力+22\\r防御力+6\\r附加伤害+20\\r强韧+15\\r命中+2': '白虎\\r^ffffffHP+200\\rAttack+22\\rDefense+6\\rBonus DMG+20\\rToughness+15\\rAccuracy+2',
    '白虎\\r^ffffff生命值+200\\r攻击力+22\\r防御力+6\\r附加伤害+20\\r强韧+15\\r闪避+2': '白虎\\r^ffffffHP+200\\rAttack+22\\rDefense+6\\rBonus DMG+20\\rToughness+15\\rDodge+2',
    '白虎\\r^ffffff生命值+200\\r攻击力+4\\r防御力+5\\r强韧+12\\r治疗点数+20': '白虎\\r^ffffffHP+200\\rAttack+4\\rDefense+5\\rToughness+12\\rHeal Potency+20',
    '白虎\\r^ffffff生命值+400\\r攻击力+32\\r防御力+9\\r附加伤害+20\\r强韧+30\\r刺破+1\\r穿透+1': '白虎\\r^ffffffHP+400\\rAttack+32\\rDefense+9\\rBonus DMG+20\\rToughness+30\\rPierce+1\\rPenetration+1',
    '白虎\\r^ffffff生命值+800\\r攻击力+22\\r防御力+17\\r附加伤害+40\\r强韧+48\\r命中+1\\r攻击强度+1%': '白虎\\r^ffffffHP+800\\rAttack+22\\rDefense+17\\rBonus DMG+40\\rToughness+48\\rAccuracy+1\\rAttack Power+1%',
    '白虎\\r^ffffff防御力+10\\r直接伤害抗性+1\\r间接伤害抗性+1': '白虎\\r^ffffffDefense+10\\rDirect DMG Resist+1\\rIndirect DMG Resist+1',
    '白虎\\r^ffffff防御力+3\\r附加伤害+10': '白虎\\r^ffffffDefense+3\\rBonus DMG+10',
    '白虎\\r^ffffff防御力+4\\r附加伤害+10': '白虎\\r^ffffffDefense+4\\rBonus DMG+10',
    '白虎\\r^ffffff防御力+5\\r攻击强度+1%': '白虎\\r^ffffffDefense+5\\rAttack Power+1%',
    '白虎\\r^ffffff防御力+5\\r治疗点数+20': '白虎\\r^ffffffDefense+5\\rHeal Potency+20',
    '白虎\\r^ffffff防御力+5\\r附加伤害+10': '白虎\\r^ffffffDefense+5\\rBonus DMG+10',
    '白门楼义士': 'White Gate Tower Righteous Man',
    '百人敌': 'Takes On Hundred',
    '相逢未有期': 'Meeting Without a Date',
    '看门侠': 'Gate-Watching Knight',
    '真别摸我': "Really Don't Touch Me",
    '磨练垂钓的技艺\\r^72fe00永久生效:\\r^ffffff攻击力+15\\r命中+4\\r体质+40': 'Honing the Art of Angling\\r^72fe00永久生效:\\r^ffffffAttack+15\\rAccuracy+4\\rStamina+40',
    '礼贤下士，用人不疑，这是一个好的统帅具有的基本素质。\\r^72fe00永久生效:\\r^ffffff治疗点数+10': '礼贤下士，用人不疑，这是一个好的统帅具有的基本素质。\\r^72fe00永久生效:\\r^ffffffHeal Potency+10',
    '神扇鬼谋': 'Divine Fan, Ghostly Stratagem',
    '神算鬼谋': 'Divine Calculation, Ghostly Stratagem',
    '神龙枪圣': 'Divine Dragon Spear Sage',
    '稳坐家中亦能招揽珍宝，你在别人眼中就是一棵摇钱树了\\r^ff7d2f永久生效:\\r^ffffff攻击力+30\\r闪避+4\\r防御力+15\\r体质+100': "Even Sitting at Home, You Can Attract Treasures; In Others' Eyes, You Are a Money Tree\\r^ff7d2f永久生效:\\r^ffffffAttack+30\\rDodge+4\\rDefense+15\\rStamina+100",
    '竞技场': 'Arena',
    '竞技场个人等级10所获得称号。': 'Arena Individual Level 10 Title.',
    '竞技场个人等级11所获得称号。': 'Arena Individual Level 11 Title.',
    '竞技场个人等级12所获得称号。': 'Arena Individual Level 12 Title.',
    '竞技场个人等级13所获得称号。': 'Arena Individual Level 13 Title.',
    '竞技场个人等级14所获得称号。': 'Arena Individual Level 14 Title.',
    '竞技场个人等级15所获得称号。': 'Arena Individual Level 15 Title.',
    '竞技场个人等级16所获得称号。': 'Arena Individual Level 16 Title.',
    '竞技场个人等级17所获得称号。': 'Arena Individual Level 17 Title.',
    '竞技场个人等级18所获得称号。': 'Arena Individual Level 18 Title.',
    '竞技场个人等级19所获得称号。': 'Arena Individual Level 19 Title.',
    '竞技场个人等级1所获得称号。': 'Arena Individual Level 1 Title.',
    '竞技场个人等级20所获得称号。': 'Arena Individual Level 20 Title.',
    '竞技场个人等级2所获得称号。': 'Arena Individual Level 2 Title.',
    '竞技场个人等级3所获得称号。': 'Arena Individual Level 3 Title.',
    '竞技场个人等级4所获得称号。': 'Arena Individual Level 4 Title.',
    '竞技场个人等级5所获得称号。': 'Arena Individual Level 5 Title.',
    '竞技场个人等级6所获得称号。': 'Arena Individual Level 6 Title.',
    '竞技场个人等级7所获得称号。': 'Arena Individual Level 7 Title.',
    '竞技场个人等级8所获得称号。': 'Arena Individual Level 8 Title.',
    '竞技场个人等级9所获得称号。': 'Arena Individual Level 9 Title.',
    '竞技场队伍等级10所获得称号。': 'Arena Team Level 10 Title.',
    '竞技场队伍等级11所获得称号。': 'Arena Team Level 11 Title.',
    '竞技场队伍等级12所获得称号。': 'Arena Team Level 12 Title.',
    '竞技场队伍等级13所获得称号。': 'Arena Team Level 13 Title.',
    '竞技场队伍等级14所获得称号。': 'Arena Team Level 14 Title.',
    '竞技场队伍等级15所获得称号。': 'Arena Team Level 15 Title.',
    '竞技场队伍等级16所获得称号。': 'Arena Team Level 16 Title.',
    '竞技场队伍等级17所获得称号。': 'Arena Team Level 17 Title.',
    '竞技场队伍等级18所获得称号。': 'Arena Team Level 18 Title.',
    '竞技场队伍等级19所获得称号。': 'Arena Team Level 19 Title.',
    '竞技场队伍等级1所获得称号。': 'Arena Team Level 1 Title.',
    '竞技场队伍等级20所获得称号。': 'Arena Team Level 20 Title.',
    '竞技场队伍等级2所获得称号。': 'Arena Team Level 2 Title.',
    '竞技场队伍等级3所获得称号。': 'Arena Team Level 3 Title.',
    '竞技场队伍等级4所获得称号。': 'Arena Team Level 4 Title.',
    '竞技场队伍等级5所获得称号。': 'Arena Team Level 5 Title.',
    '竞技场队伍等级6所获得称号。': 'Arena Team Level 6 Title.',
    '竞技场队伍等级7所获得称号。': 'Arena Team Level 7 Title.',
    '竞技场队伍等级8所获得称号。': 'Arena Team Level 8 Title.',
    '竞技场队伍等级9所获得称号。': 'Arena Team Level 9 Title.',
    '端午节活动获得，以提醒洁身自好，永怀英灵。': 'Obtained from the Dragon Boat Event; A Reminder to Keep Oneself Pure and Cherish the Spirits Forever.',
    '精打细算小富商': 'Meticulous Little Merchant',
    '糖葫芦大将军': 'Candied Hawthorn Grand General',
    '糖葫芦小队长': 'Candied Hawthorn Squad Leader',
    '糖葫芦游侠': 'Candied Hawthorn Ranger',
    '糖葫芦至尊糖主': 'Candied Hawthorn Supreme Chief',
    '糖葫芦预备兵': 'Candied Hawthorn Recruit',
    '累积上交20个爱心甘露获得的专属称号！': 'Exclusive Title Obtained by Submitting a Total of 20 Love Dewdrops!',
    '红酥手暖': 'Warm Crimson Hands',
    '纵横·利舌': 'Persuasion · Sharp Tongue',
    '终结者': 'Terminator',
    '经Gamania官方认可的帅哥，如假包换！': 'Officially Recognized Handsome Guy by Gamania, Absolutely Genuine!',
    '经Gamania官方认可的索女，如假包换！': 'Officially Recognized Beauty by Gamania, Absolutely Genuine!',
    '绝妙问题提供者': 'Provider of Brilliant Questions',
    '继往开来，破旧立新，开创新的时代。': 'Carry Forward the Past, Break the Old, Establish the New, Create a New Era.',
    '羁旅千年闲问花': 'A Thousand Years a Wanderer, Idly Asking Flowers',
    '羊倌儿的中级身份证明。': "Shepherd's Intermediate Identity Proof.",
    '羊倌儿的初级身份证明。': "Shepherd's Junior Identity Proof.",
    '羊倌儿的顶级身份证明。': "Shepherd's Top Identity Proof.",
    '羊倌儿的高级身份证明。': "Shepherd's Senior Identity Proof.",
    '群英会奖励称号\\r^ffffff攻击力+10\\r防御力+5\\r生命值+250': '群英会奖励称号\\r^ffffffAttack+10\\rDefense+5\\rHP+250',
    '群英会奖励称号\\r^ffffff攻击力+16\\r防御力+8\\r生命值+400': '群英会奖励称号\\r^ffffffAttack+16\\rDefense+8\\rHP+400',
    '群英会奖励称号\\r^ffffff攻击力+22\\r防御力+11\\r生命值+550': '群英会奖励称号\\r^ffffffAttack+22\\rDefense+11\\rHP+550',
    '群英会奖励称号\\r^ffffff攻击力+30\\r防御力+15\\r生命值+750': '群英会奖励称号\\r^ffffffAttack+30\\rDefense+15\\rHP+750',
    '群英会奖励称号\\r^ffffff攻击力+40\\r防御力+20\\r生命值+1000': '群英会奖励称号\\r^ffffffAttack+40\\rDefense+20\\rHP+1000',
    '羽林郎将.dds': 'Feather Forest Colonel.dds',
    '老一军团老大': 'Legion Boss 1',
    '老七军团老大': 'Legion Boss 7',
    '老三军团老大': 'Legion Boss 3',
    '老九军团老大': 'Legion Boss 9',
    '老二军团老大': 'Legion Boss 2',
    '老五军团老大': 'Legion Boss 5',
    '老八军团老大': 'Legion Boss 8',
    '老六军团老大': 'Legion Boss 6',
    '老十一军团老大': 'Legion Boss 11',
    '老十三军团老大': 'Legion Boss 13',
    '老十二军团老大': 'Legion Boss 12',
    '老十五军团老大': 'Legion Boss 15',
    '老十六军团老大': 'Legion Boss 16',
    '老十军团老大': 'Legion Boss 10',
    '老十四军团老大': 'Legion Boss 14',
    '老四军团老大': 'Legion Boss 4',
    '老夫让你三招': "I'll Give You Three Moves",
    '能够发掘人才，辨识人才，赛过伯乐啊。\\r^72fe00永久生效:\\r^ffffff治疗点数+10\\r体质+30\\r防御力+2': 'Able to Discover and Recognize Talent; Surpassing the Legendary Coachmaker Bole.\\r^72fe00永久生效:\\r^ffffffHeal Potency+10\\rStamina+30\\rDefense+2',
    '能工巧匠': 'Skilled Artisan',
    '能臣之相': 'Face of a Capable Minister',
    '脉脉含情': 'Eyes Full of Tenderness',
    '腹有诗书气自华': 'Poetry Within, Radiance Without',
    '至戟无敌': 'Halberd Peerless in the World',
    '舌战高手': 'Debate Master',
    '舞林至尊': 'Martial Arts World Supreme',
    '荆襄': 'Jingxiang',
    '荆襄乱流': 'Jingxiang Chaotic Current',
    '草原策马': 'Gallop on the Grassland',
    '草庐闲居': 'Living Idle in a Thatched Hut',
    '荒野大镖客': 'Wilderness Escort',
    '获得了所有八枚文官列传图鉴的嘉奖，\\r可向长安图鉴使者张华一次性领取10000点文勋和10000点功勋。': "Honored for Collecting All Eight Civil Official Biographical Codex Entries;\\rClaim 10,000 Civil Merit and 10,000 Merit in One Go from Codex Emissary Zhang Hua in Chang'an.",
    '获得了所有八枚武官列传图鉴的嘉奖，\\r可向长安图鉴使者张华一次性领取10000点武勋和10000点功勋。': "Honored for Collecting All Eight Military Official Biographical Codex Entries;\\rClaim 10,000 Military Merit and 10,000 Merit in One Go from Codex Emissary Zhang Hua in Chang'an.",
    '获得濮阳之战贰所有图鉴后，获得的称号。\\r^72fe00永久生效\\r^ffffff攻击力 +20\\r附加伤害 +15\\r暴击抗性 +3\\r限制抗性 +3': '获得濮阳之战贰所有图鉴后，获得的称号。\\r^72fe00永久生效\\r^ffffffAttack +20\\rBonus DMG +15\\rCrit Resist +3\\rRestrict Resist +3',
    '葭萌关奖励称号\\r^ffffff攻击力+12\\r防御力+6\\r生命值+400': '葭萌关奖励称号\\r^ffffffAttack+12\\rDefense+6\\rHP+400',
    '葭萌关奖励称号\\r^ffffff攻击力+15\\r防御力+8\\r生命值+500': '葭萌关奖励称号\\r^ffffffAttack+15\\rDefense+8\\rHP+500',
    '葭萌关奖励称号\\r^ffffff攻击力+20\\r防御力+10\\r生命值+700': '葭萌关奖励称号\\r^ffffffAttack+20\\rDefense+10\\rHP+700',
    '葭萌关奖励称号\\r^ffffff攻击力+25\\r防御力+12\\r生命值+1000': '葭萌关奖励称号\\r^ffffffAttack+25\\rDefense+12\\rHP+1000',
    '葭萌关奖励称号\\r^ffffff攻击力+3\\r防御力+1\\r生命值+100': '葭萌关奖励称号\\r^ffffffAttack+3\\rDefense+1\\rHP+100',
    '葭萌关奖励称号\\r^ffffff攻击力+6\\r防御力+2\\r生命值+200': '葭萌关奖励称号\\r^ffffffAttack+6\\rDefense+2\\rHP+200',
    '葭萌关奖励称号\\r^ffffff攻击力+9\\r防御力+4\\r生命值+300': '葭萌关奖励称号\\r^ffffffAttack+9\\rDefense+4\\rHP+300',
    '蜀国': 'Kingdom of Shu',
    '蜀国主公排名第一，荣耀之称！': 'Shu Lord Ranked First; Title of Honor!',
    '蜀国人士': 'Citizen of Shu',
    '蜀国公.dds': 'Duke of Shu.dds',
    '蜀国发言官': 'Shu Spokesperson',
    '蜀国天下第一主公': 'Shu No.1 Lord',
    '蜀国夫人.dds': 'Lady of Shu.dds',
    '蜀国头目': 'Shu Chieftain',
    '蜀国将领': 'Shu General',
    '蜀国精兵': 'Shu Elite Soldier',
    '蜀王.dds': 'King of Shu.dds',
    '蜃之名人': 'Celebrity of the Mirage',
    '蜃楼城幕僚': 'Mirage City Advisor',
    '被四面八方的雪球击中，可谓2009年圣诞节最受欢迎的大天使！': 'Struck by Snowballs from All Directions; The Most Popular Archangel of Christmas 2009!',
    '被天雷击中九次还能死里逃生，天下第一幸运儿非你莫属。乘着这奇迹般的金色能量，让世界认识你吧！': "Struck by Heavenly Lightning Nine Times and Still Survived; You Are the World's Luckiest Person. Ride This Miraculous Golden Energy and Let the World Know You!",
    '装备生效\\r^fff600得名将典韦之传承。\\r古之恶来，今之猛将，手提双戟八十斤，万夫莫当。\\r^ffffff封印抗性+10': '装备生效\\r^fff600Inheritance of the Famous General Dian Wei.\\r古之恶来，今之猛将，手提双戟八十斤，万夫莫当。\\r^ffffffSeal Resist+10',
    '装备生效\\r^fff600得名将吕布之传承。\\r英雄名，传千古，天命得之定四方，人力夺之斩八荒。\\r^ffffff受伤抗性+10': '装备生效\\r^fff600Inheritance of the Famous General Lu Bu.\\r英雄名，传千古，天命得之定四方，人力夺之斩八荒。\\r^ffffffDamage Resist+10',
    '装备生效\\r^fff600得名将尚香之传承。\\r青丝一缕，红颜铿锵，可传香风万里，钢铁柔肠。\\r^ffffff生命回复速度+10': '装备生效\\r^fff600Inheritance of the Famous General Shangxiang.\\r青丝一缕，红颜铿锵，可传香风万里，钢铁柔肠。\\r^ffffffHP Regen+10',
    '装备生效\\r^fff600得名将赵云之传承。\\r忠义有千秋，孤胆真英雄。谁能一身是胆？谁敢七进七出？道不尽将军风，传予今日豪雄。\\r^ffffff治疗效果+10%': '装备生效\\r^fff600Inheritance of the Famous General Zhao Yun.\\r忠义有千秋，孤胆真英雄。谁能一身是胆？谁敢七进七出？道不尽将军风，传予今日豪雄。\\r^ffffffHeal Effect+10%',
    '装备生效\\r^fff600得英雄刘备之传承。\\r霸主何为？政通人和。夫得道者多助，失道者寡助，多助之至，天下顺之。\\r^ffffff限制抗性+10': '装备生效\\r^fff600Inheritance of the Hero Liu Bei.\\r霸主何为？政通人和。夫得道者多助，失道者寡助，多助之至，天下顺之。\\r^ffffffRestrict Resist+10',
    '装备生效\\r^fff600得英雄孙权之传承。\\r霸主何为？方圆地利。鱼米乡，天堑地，富庶民，乐一方。得地利者，长久安。\\r^ffffff流血抗性+10': '装备生效\\r^fff600Inheritance of the Hero Sun Quan.\\r霸主何为？方圆地利。鱼米乡，天堑地，富庶民，乐一方。得地利者，长久安。\\r^ffffffBleed Resist+10',
    '装备生效\\r^fff600得英雄曹操之传承。\\r霸主何为？天命所归。堂上谋臣帷幄，边头猛将干戈。得天命者，定四方。\\r^ffffff虚弱抗性+10': '装备生效\\r^fff600Inheritance of the Hero Cao Cao.\\r霸主何为？天命所归。堂上谋臣帷幄，边头猛将干戈。得天命者，定四方。\\r^ffffffWeakness Resist+10',
    '西凉': 'Xiliang',
    '西凉风云': 'Xiliang Tempest',
    '见习采诗官': 'Apprentice Poetry Collector',
    '讨逆之忠臣': 'Loyal Minister Who Punishes Rebels',
    '试问不平事': 'Dare Ask of Injustice',
    '财神爷降临！财源滚进，幸福美满！\\r^ff7d2f永久生效:\\r^ffffff攻击力+30\\r闪避+4\\r防御力+15\\r体质+200': 'The God of Wealth Descends! Fortune Pours In; Happiness and Fulfillment!\\r^ff7d2f永久生效:\\r^ffffffAttack+30\\rDodge+4\\rDefense+15\\rStamina+200',
    '赤墨墨者': 'Red Ink Mohist',
    '赤墨长老': 'Red Ink Elder',
    '赤墨队主': 'Red Ink Squad Leader',
    '赤壁': 'Chibi',
    '赤壁7周年庆典人榜无双称号\\r^fff962生命值+200\\r攻击+8\\r防御+4': '赤壁7周年庆典人榜无双称号\\r^fff962HP+200\\rAttack+8\\rDefense+4',
    '赤壁7周年庆典人榜王者称号\\r^fff962生命值+150\\r攻击+6\\r防御+3': '赤壁7周年庆典人榜王者称号\\r^fff962HP+150\\rAttack+6\\rDefense+3',
    '赤壁7周年庆典人榜至尊称号\\r^fff962生命值+300\\r攻击+10\\r防御+5': '赤壁7周年庆典人榜至尊称号\\r^fff962HP+300\\rAttack+10\\rDefense+5',
    '赤壁7周年庆典地榜无双称号\\r^fff962生命值+450\\r攻击+30\\r攻击强度+1%': '赤壁7周年庆典地榜无双称号\\r^fff962HP+450\\rAttack+30\\rAttack Power+1%',
    '赤壁7周年庆典地榜王者称号\\r^fff962生命值+400\\r攻击+20\\r攻击强度+1%': '赤壁7周年庆典地榜王者称号\\r^fff962HP+400\\rAttack+20\\rAttack Power+1%',
    '赤壁7周年庆典地榜至尊称号\\r^fff962生命值+500\\r攻击+40\\r攻击强度+1%': '赤壁7周年庆典地榜至尊称号\\r^fff962HP+500\\rAttack+40\\rAttack Power+1%',
    '赤壁7周年庆典地榜豪杰称号\\r^fff962生命值+120\\r攻击+5\\r防御+2': '赤壁7周年庆典地榜豪杰称号\\r^fff962HP+120\\rAttack+5\\rDefense+2',
    '赤壁7周年庆典地榜豪杰称号\\r^fff962生命值+350\\r攻击+15\\r攻击强度+1%': '赤壁7周年庆典地榜豪杰称号\\r^fff962HP+350\\rAttack+15\\rAttack Power+1%',
    '赤壁7周年庆典天榜无双称号\\r^fff962生命值+800\\r攻击+40\\r防御+20\\r攻击强度+3%': '赤壁7周年庆典天榜无双称号\\r^fff962HP+800\\rAttack+40\\rDefense+20\\rAttack Power+3%',
    '赤壁7周年庆典天榜王者称号\\r^fff962生命值+650\\r攻击+30\\r防御+15\\r攻击强度+3%': '赤壁7周年庆典天榜王者称号\\r^fff962HP+650\\rAttack+30\\rDefense+15\\rAttack Power+3%',
    '赤壁7周年庆典天榜至尊称号\\r^fff962生命值+1000\\r攻击+50\\r防御+25\\r攻击强度+3%': '赤壁7周年庆典天榜至尊称号\\r^fff962HP+1000\\rAttack+50\\rDefense+25\\rAttack Power+3%',
    '赤壁7周年庆典天榜豪杰称号\\r^fff962生命值+500\\r攻击+20\\r防御+10\\r攻击强度+3%': '赤壁7周年庆典天榜豪杰称号\\r^fff962HP+500\\rAttack+20\\rDefense+10\\rAttack Power+3%',
    '赤壁VIP三周年纪念!': 'Chibi VIP 3rd Anniversary Memorial!',
    '赤壁·新视觉': 'Chibi · New Vision',
    '赤壁帅哥': 'Chibi Handsome Guy',
    '赤壁弓手': 'Chibi Archer',
    '赤壁提督': 'Chibi Admiral',
    '赤壁桨手': 'Chibi Oarsman',
    '赤壁活动': 'Chibi Event',
    '赤壁炮兵': 'Chibi Cannoneer',
    '赤壁玩家专属称号\\r^00FFFFQQ交流群：902662692\\r^FFFF00生命值+2000\\r体质+3000\\r攻击+10%\\r防御+10%\\r攻强+30%\\r攻速+10%\\r暴击+20\\r爆伤+50%\\r刺破+20\\r穿透+15\\r直抗+10\\r间抗+10': '赤壁玩家专属称号\\r^00FFFFQQ交流群：902662692\\r^FFFF00HP+2000\\rStamina+3000\\rAttack+10%\\rDefense+10%\\rAttack Power+30%\\rAttack Speed+10%\\rCrit+20\\rCrit DMG+50%\\rPierce+20\\rPenetration+15\\rDirect DMG Resist+10\\rIndirect DMG Resist+10',
    '赤壁索女': 'Chibi Glamour Girl',
    '赤壁船长': 'Chibi Captain',
    '赤壁虎将': 'Chibi Tiger General',
    '赤壁达人': 'Chibi Expert',
    '赤壁霸主': 'Chibi Overlord',
    '趟子手': 'Escort Walker',
    '跟我冲,取敌人首级!\\r^ffffff攻击力+20\\r防御力+10': '跟我冲,取敌人首级!\\r^ffffffAttack+20\\rDefense+10',
    '跨服PK赛亚军证明。': 'Cross-server PK Tournament Runner-up Proof.',
    '跨服PK赛冠军证明。': 'Cross-server PK Tournament Champion Proof.',
    '跨服PK赛季军证明。': 'Cross-server PK Tournament Third Place Proof.',
    '路漫漫其修远兮': 'Long and Far Is the Road',
    '踏遍群山，寻得众多宝物，你已然精于此道\\r^a800ff永久生效:\\r^ffffff攻击力+20\\r闪避+3\\r防御力+10\\r体质+50': 'You Have Tread Every Mountain and Found Many Treasures; You Are Now a Master of This Path\\r^a800ff永久生效:\\r^ffffffAttack+20\\rDodge+3\\rDefense+10\\rStamina+50',
    '踏雪寻梅客': 'Snow-Treading Plum Seeker',
    '运营活动奖励': 'Operation Event Reward',
    '运重笔话大江滔滔': 'With Heavy Brush, Speak of the Great River',
    '逆天之巫者': 'Heaven-Defying Shaman',
    '逆旅散人': 'Wanderer of the Reversing Journey',
    '逐步体验到钓鱼神技的奥妙\\r^72fe00永久生效:\\r^ffffff攻击力+10\\r命中+3\\r体质+20': 'Gradually Experiencing the Wonders of Divine Angling\\r^72fe00永久生效:\\r^ffffffAttack+10\\rAccuracy+3\\rStamina+20',
    '金牌园丁': 'Gold Medal Gardener',
    '金玉良缘': 'Golden Jade Match',
    '钓鱼之神': 'Fishing God',
    '钓鱼之神技的初入门道者\\r^72fe00永久生效:\\r^ffffff攻击力+5\\r命中+2\\r体质+10': 'A Beginner in the Divine Art of Angling\\r^72fe00永久生效:\\r^ffffffAttack+5\\rAccuracy+2\\rStamina+10',
    '钓鱼之神技的初窥门道者\\r^72fe00永久生效:\\r^ffffff攻击力+2\\r命中+1': 'A Novice Catching a Glimpse of the Divine Art of Angling\\r^72fe00永久生效:\\r^ffffffAttack+2\\rAccuracy+1',
    '钓鱼名人': 'Fishing Celebrity',
    '钓鱼大师': 'Fishing Master',
    '钓鱼快手': 'Fishing Swift Hand',
    '钓鱼新手': 'Fishing Novice',
    '钓鱼高手': 'Fishing Expert',
    '铁壁恶来': 'Iron Wall E Lai',
    '锦帆贼': 'Brocade Sail Bandit',
    '镇疆御使': 'Frontier Guarding Envoy',
    '镖头': 'Escort Chief',
    '长乐未央': 'Endless Eternal Joy',
    '长驱行万里': 'Drive Ten Thousand Miles',
    '闪亮圣诞大天使': 'Shining Christmas Archangel',
    '问题提供者': 'Question Giver',
    '闲云野鹤': 'Idle Cloud, Wild Crane',
    '阵营': 'Faction',
    '阵营官职': 'Faction Post',
    '限时7天:\\r^ffffff生命上限 +100': '限时7天:\\r^ffffffMax HP +100',
    '除魔卫道': 'Exorcise Demons, Guard the Way',
    '集结号': 'Assembly Call',
    '霸主·人和': "Overlord · People's Harmony",
    '霸主·地利': 'Overlord · Geographic Advantage',
    '霸主·天命': 'Overlord · Mandate of Heaven',
    '青春山神': 'Youthful Mountain God',
    '青龙': 'Azure Dragon',
    '青龙\\r^ffffff万众瞩目,豪气冲天!': 'Azure Dragon\\r^ffffffThe Focus of All Eyes; Spirit Soaring to the Sky!',
    '青龙\\r^ffffff攻击力+1\\r命中+1': '青龙\\r^ffffffAttack+1\\rAccuracy+1',
    '青龙\\r^ffffff攻击力+1\\r治疗点数+10': '青龙\\r^ffffffAttack+1\\rHeal Potency+10',
    '青龙\\r^ffffff攻击力+1\\r闪避+1': '青龙\\r^ffffffAttack+1\\rDodge+1',
    '青龙\\r^ffffff攻击力+1\\r附加伤害+2': '青龙\\r^ffffffAttack+1\\rBonus DMG+2',
    '青龙\\r^ffffff攻击力+2\\r攻击强度+1%': '青龙\\r^ffffffAttack+2\\rAttack Power+1%',
    '青龙\\r^ffffff攻击力+2\\r直接伤害抗性+1': '青龙\\r^ffffffAttack+2\\rDirect DMG Resist+1',
    '青龙\\r^ffffff攻击力+2\\r防御力+1\\r附加伤害+2\\r强韧+2\\r治疗点数+10': '青龙\\r^ffffffAttack+2\\rDefense+1\\rBonus DMG+2\\rToughness+2\\rHeal Potency+10',
    '青龙\\r^ffffff攻击力+2\\r附加伤害+2': '青龙\\r^ffffffAttack+2\\rBonus DMG+2',
    '青龙\\r^ffffff生命值+100\\r攻击力+5\\r防御力+4\\r附加伤害+6\\r强韧+10\\r直接伤害抗性+1': '青龙\\r^ffffffHP+100\\rAttack+5\\rDefense+4\\rBonus DMG+6\\rToughness+10\\rDirect DMG Resist+1',
    '青龙\\r^ffffff生命值+20': '青龙\\r^ffffffHP+20',
    '青龙\\r^ffffff生命值+20\\r强韧+2': '青龙\\r^ffffffHP+20\\rToughness+2',
    '青龙\\r^ffffff生命值+20\\r强韧+4': '青龙\\r^ffffffHP+20\\rToughness+4',
    '青龙\\r^ffffff生命值+20\\r攻击力+1\\r附加伤害+2': '青龙\\r^ffffffHP+20\\rAttack+1\\rBonus DMG+2',
    '青龙\\r^ffffff生命值+40\\r攻击力+2\\r防御力+1\\r附加伤害+2\\r强韧+2\\r命中+1': '青龙\\r^ffffffHP+40\\rAttack+2\\rDefense+1\\rBonus DMG+2\\rToughness+2\\rAccuracy+1',
    '青龙\\r^ffffff生命值+40\\r攻击力+2\\r防御力+1\\r附加伤害+2\\r强韧+2\\r治疗点数+10': '青龙\\r^ffffffHP+40\\rAttack+2\\rDefense+1\\rBonus DMG+2\\rToughness+2\\rHeal Potency+10',
    '青龙\\r^ffffff生命值+50\\r攻击力+2\\r防御力+1\\r附加伤害+2\\r强韧+4\\r闪避+1': '青龙\\r^ffffffHP+50\\rAttack+2\\rDefense+1\\rBonus DMG+2\\rToughness+4\\rDodge+1',
    '青龙\\r^ffffff生命值+50\\r攻击力+6\\r防御力+2\\r附加伤害+4\\r攻击强度+1%': '青龙\\r^ffffffHP+50\\rAttack+6\\rDefense+2\\rBonus DMG+4\\rAttack Power+1%',
    '青龙\\r^ffffff防御力+1\\r强韧+2': '青龙\\r^ffffffDefense+1\\rToughness+2',
    '青龙\\r^ffffff防御力+1\\r生命值+20': '青龙\\r^ffffffDefense+1\\rHP+20',
    '青龙\\r^ffffff防御力+1\\r生命值+20\\r强韧+2': '青龙\\r^ffffffDefense+1\\rHP+20\\rToughness+2',
    '青龙\\r^ffffff防御力+1\\r生命值+30': '青龙\\r^ffffffDefense+1\\rHP+30',
    '青龙\\r^ffffff防御力+1\\r生命值+30\\r强韧+3': '青龙\\r^ffffffDefense+1\\rHP+30\\rToughness+3',
    '青龙\\r^ffffff防御力+2\\r生命值+40\\r强韧+4': '青龙\\r^ffffffDefense+2\\rHP+40\\rToughness+4',
    '青龙\\r^ffffff防御力+2\\r生命值+50': '青龙\\r^ffffffDefense+2\\rHP+50',
    '面对华容道之险，依然成功闯越的军士。\\r^72fe00永久生效:\\r^ffffff体质+10': 'A Soldier Who Successfully Crossed the Perils of Huarong Pass.\\r^72fe00永久生效:\\r^ffffffStamina+10',
    '顺天之勇士': 'Warrior Who Follows Heaven',
    '风流才子': 'Romantic Scholar',
    '风雅窃书贼': 'Elegant Book Thief',
    '飞雪圣诞小恶魔': 'Flying Snow Christmas Little Devil',
    '马大姐': 'Big Sister Ma',
    '马大帅': 'Commander Ma',
    '驯象师': 'Elephant Tamer',
    '驾乘香车宝辇': 'Riding the Fragrant Carriage',
    '高级VIP的象征': 'Symbol of High-level VIP',
    '高级名师': 'Senior Teacher',
    '高级师傅': 'Senior Master',
    '鬼吹灯': 'Ghost Blows Out the Light',
    '鬼谋之神助': "Ghostly Stratagem's Divine Aid",
    '魅影刺客': 'Phantom Assassin',
    '魏国': 'Kingdom of Wei',
    '魏国主公排名第一，荣耀之称！': 'Wei Lord Ranked First; Title of Honor!',
    '魏国人士': 'Citizen of Wei',
    '魏国公.dds': 'Duke of Wei.dds',
    '魏国发言官': 'Wei Spokesperson',
    '魏国天下第一主公': 'Wei No.1 Lord',
    '魏国夫人.dds': 'Lady of Wei.dds',
    '魏国头目': 'Wei Chieftain',
    '魏国将领': 'Wei General',
    '魏国精兵': 'Wei Elite Soldier',
    '魏武挥鞭': 'Wei Wu Wields the Whip',
    '魏王.dds': 'King of Wei.dds',
    '麒麟儿': 'Prodigious Child',
    '麦城三百勇士': 'Three Hundred Warriors of Mai City',
    '黄巾之乱': 'Yellow Turban Rebellion',
    '黄金积分排行榜荣耀之称！\\r拥有此称号可在完美礼品童子处兑换丰厚奖励。\\r请在本周内周一维护后到周日24点间兑换奖励\\r过期作废': 'Gold Points Leaderboard Title of Honor!\\rWith This Title, Exchange for Generous Rewards at the Perfect Gift Page.\\rPlease Exchange Between Monday Maintenance and Sunday 24:00 This Week\\rExpired Rewards Are Void.',
    '鼓励奖': 'Consolation Prize',
    '.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取{snowball_count}个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim {snowball_count} normal snowballs daily from the Perfect Gift Envoy.',
    '012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取20个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 20 normal snowballs daily from the Perfect Gift Envoy.',
    '012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取40个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 40 normal snowballs daily from the Perfect Gift Envoy.',
    '012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取60个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 60 normal snowballs daily from the Perfect Gift Envoy.',
    '012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取80个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 80 normal snowballs daily from the Perfect Gift Envoy.',
    '012.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取{snowball_count}个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim {snowball_count} normal snowballs daily from the Perfect Gift Envoy.',
    '12.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取20个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 20 normal snowballs daily from the Perfect Gift Envoy.',
    '12.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取40个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 40 normal snowballs daily from the Perfect Gift Envoy.',
    '12.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取60个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 60 normal snowballs daily from the Perfect Gift Envoy.',
    '12.25－1.8圣诞活动期间，每天可以在完美礼品使者处领取80个普通雪球。': 'During the 12.25-1.8 Christmas Event, claim 80 normal snowballs daily from the Perfect Gift Envoy.',
    '17173VIP卡专属称号': '17173 VIP Card Exclusive Title',
    '17173百变英雄卡专属称号': '17173 Shapeshifting Hero Card Exclusive Title',
    '17173群英特权卡专属称号': '17173 Heroes Privilege Card Exclusive Title',
    '2014年七夕活动独享称号。': '2014 Qixi Festival Event Exclusive Title.',
    '2015年度全国群英会亚军专属称号！': '2015 National Heroes Assembly Runner-up Exclusive Title!',
    '2015年度全国群英会冠军专属称号！': '2015 National Heroes Assembly Champion Exclusive Title!',
    '2015年度全国群英会单兵之王专属称号': '2015 National Heroes Assembly King of Individual Warriors Exclusive Title',
    '2015年度全国群英会四至十名专属称号！': '2015 National Heroes Assembly 4th-10th Place Exclusive Title!',
    '2015年度全国群英会季军专属称号！': '2015 National Heroes Assembly 3rd Place Exclusive Title!',
    '2015年老玩家回归专属称号。': '2015 Veteran Return Exclusive Title.',
    'VIP2011年劳动节纪念称号！': 'VIP 2011 Labor Day Commemorative Title!',
    'VIP卡专属称号': '17173 VIP Card Exclusive Title',
    'sina旷世英雄卡专属称号': 'Sina Peerless Hero Card Exclusive Title',
    'sina英雄招募卡专属称号': 'Sina Hero Recruitment Card Exclusive Title',
    '《三分天下》资料片专属称号。': '"Three-Way Division" Expansion Exclusive Title.',
    '【2013·斗群英军团争霸赛亚军】': '【2013 Heroes Clash Legion Tournament Runner-up】',
    '【2013·斗群英军团争霸赛冠军】': '【2013 Heroes Clash Legion Tournament Champion】',
    '【2013·斗群英军团争霸赛季军】': '【2013 Heroes Clash Legion Tournament 3rd Place】',
    '【天下双雄军团众】': '【Legion Members of the Two Heroes of the World】',
    '【天下四英军团众】': '【Legion Members of the Four Heroes of the World】',
    '【天下无双军团众】': '【Legion Members of the Peerless of the World】',
    '【灵气称号1】': '【Spirit Title 1】',
    '【灵气称号2】': '【Spirit Title 2】',
    '【灵气称号3】': '【Spirit Title 3】',
    '中秋活动奖励称号！': 'Mid-Autumn Event Reward Title!',
    '公会卡专属称号': 'Guild Card Exclusive Title',
    '凭借此称号可以找挑战塔战场中的左慈进行选关操作。': 'With this title, seek Zuo Ci in the Challenge Tower Battlefield for stage selection.',
    '参加一生一世活动获得的珍稀称号，证明您人气很高！': 'Rare Title earned by participating in the Forever and Always Event, proving your popularity!',
    '命中+100': 'Accuracy +100',
    '命中+50': 'Accuracy +50',
    '唯我独尊卡专属称号': 'Supreme Card Exclusive Title',
    '多玩YY战神卡专属称号': 'Duowan YY War God Card Exclusive Title',
    '多玩YY普通卡专属称号': 'Duowan YY Normal Card Exclusive Title',
    '多玩YY特权卡专属称号': 'Duowan YY Privilege Card Exclusive Title',
    '多玩百变英雄卡专属称号': 'Duowan Shapeshifting Hero Card Exclusive Title',
    '天佑中华祈福活动专属称号！': 'Heaven Blesses China Prayer Event Exclusive Title!',
    '媒体普通卡专属称号': 'Media Normal Card Exclusive Title',
    '官职称号，权利与地位的象征。': 'Official Rank Title, symbol of power and status.',
    '年七夕活动独享称号。': '2014 Qixi Festival Event Exclusive Title.',
    '年度全国群英会亚军专属称号！': '2015 National Heroes Assembly Runner-up Exclusive Title!',
    '年度全国群英会冠军专属称号！': '2015 National Heroes Assembly Champion Exclusive Title!',
    '年度全国群英会单兵之王专属称号': '2015 National Heroes Assembly King of Individual Warriors Exclusive Title',
    '年度全国群英会四至十名专属称号！': '2015 National Heroes Assembly 4th-10th Place Exclusive Title!',
    '年度全国群英会季军专属称号！': '2015 National Heroes Assembly 3rd Place Exclusive Title!',
    '年老玩家回归专属称号。': '2015 Veteran Return Exclusive Title.',
    '得到孟获军所有人物图鉴获得的珍贵称号。': 'Precious Title earned by completing the illustration collection for all Meng Huo Army characters.',
    '战天下官网签到活动称号': 'Battle of Heaven Official Website Sign-in Event Title',
    '战天下英雄回归称号': 'Battle of Heaven Hero Return Title',
    '攻击+100': 'Attack +100',
    '攻击+200': 'Attack +200',
    '斗群英个人争霸赛称号': 'Heroes Clash Individual Tournament Title',
    '新服活动称号。': 'New Server Event Title.',
    '新浪特权卡专属称号': 'Sina Privilege Card Exclusive Title',
    '新浪百变英雄卡专属称号': 'Sina Shapeshifting Hero Card Exclusive Title',
    '暴击+100': 'Crit +100',
    '暴击+50': 'Crit +50',
    '暴抗+100': 'Crit Resist +100',
    '暴抗+50': 'Crit Resist +50',
    '武神特权卡专属称号': 'Martial God Privilege Card Exclusive Title',
    '热血战魂老玩家回归专属称号！': 'Hot-Blooded War Soul Veteran Return Exclusive Title!',
    '生命+1000': 'Max HP +1000',
    '生命+500': 'Max HP +500',
    '生命回复+100': 'HP Regen +100',
    '生命回复+200': 'HP Regen +200',
    '百变英雄卡专属称号': 'Shapeshifting Hero Card Exclusive Title',
    '祈魂大典获得的称号': 'Title earned at the Soul Prayer Ceremony',
    '端午节高级VIP尊贵称号': 'Dragon Boat Festival High VIP Honor Title',
    '羊年春节专属称号': 'Year of the Sheep Spring Festival Exclusive Title',
    '群英特权卡专属称号': '17173 Heroes Privilege Card Exclusive Title',
    '群雄征战卡专属称号': 'Heroes Conquest Card Exclusive Title',
    '老玩家专属的尊荣称号': 'Veteran Exclusive Honor Title',
    '老玩家回归专属称号！\\r4月19日后上线可获得高额经验奖励\\r4.19到5.9期间，每天可组队作为队长在虎大将处开启“大将军的印记”任务，获取高额奖励！': 'Veteran Return Exclusive Title!\\rLog in after April 19 to receive high EXP rewards\\rBetween 4.19 and 5.9, form a team as leader daily and start the "General\'s Mark" quest at the Tiger General to claim high rewards!',
    '老玩家回归专属称号！可在完美礼品童子处领取丰厚大礼！': 'Veteran Return Exclusive Title! Claim generous gifts at the Perfect Gift Page!',
    '老玩家回归专属称号，\\r2011年3月14日—2011年4月17日\\r凭此称号可在长安老玩家接待大使(146,328)处领取丰厚大礼！': "Veteran Return Exclusive Title,\\rMarch 14, 2011 - April 17, 2011\\rWith this title, claim generous gifts at the Chang'an Veteran Reception Ambassador (146,328)!",
    '老玩家回归特殊称号\\r拥有此称号的老玩家可于新三国·招贤使节处领取“欢迎回家”任务，获得老玩家特殊奖励': 'Veteran Return Special Title\\rVeterans with this title may claim the "Welcome Home" quest at the New Three Kingdoms Talent Recruitment Envoy for special veteran rewards',
    '腾讯特权卡专属称号': 'Tencent Privilege Card Exclusive Title',
    '腾讯百变英雄卡专属称号': 'Tencent Shapeshifting Hero Card Exclusive Title',
    '英雄会金秋活动中获得的珍稀荣誉称号': 'Rare Honor Title earned in the Heroes Guild Autumn Event',
    '资料片虎卫传奇回归玩家专属称号！\\r2010年12月20日-2011年1月16日\\r凭此称号每天可在完美礼品童子处领取专属任务:\\r虎将归来(全天领取)\\r虎将试炼令（12：00-24：00）': 'Expansion Tiger Guard Legend Return Player Exclusive Title!\\rDecember 20, 2010 - January 16, 2011\\rWith this title, claim daily exclusive quests at the Perfect Gift Page:\\rTiger General Returns (available all day)\\rTiger General Trial Order (12:00-24:00)',
    '赤壁VIP玩家专属称号': 'Chibi VIP Player Exclusive Title',
    '赤壁二周年庆典独享称号！凭此称号可在每天完成横刀立马或千里平乱任务后领取一次高额历练奖励。': 'Chibi 2nd Anniversary Exclusive Title! With this title, claim high Training rewards once daily after completing the Draw Sword or Quell Rebellion quests.',
    '赤壁六周年活动称号': 'Chibi 6th Anniversary Event Title',
    '赤壁六周年运营活动称号': 'Chibi 6th Anniversary Operations Event Title',
    '赤壁终身荣誉贡献奖。\\r玩家单刀战侣布专属称号。': 'Chibi Lifetime Honor Contribution Award.\\rPlayer "Single Blade War Companion" Exclusive Title.',
    '跨服个人竞技赛七至十名专属称号。': 'Cross-Server Individual Arena 7th-10th Place Exclusive Title.',
    '跨服个人竞技赛亚军专属称号。': 'Cross-Server Individual Arena Runner-up Exclusive Title.',
    '跨服个人竞技赛兵种第一专属称号。': 'Cross-Server Individual Arena Top Troop Type Exclusive Title.',
    '跨服个人竞技赛冠军专属称号。': 'Cross-Server Individual Arena Champion Exclusive Title.',
    '跨服个人竞技赛四至六名专属称号。': 'Cross-Server Individual Arena 4th-6th Place Exclusive Title.',
    '跨服个人竞技赛季军专属称号。': 'Cross-Server Individual Arena 3rd Place Exclusive Title.',
    '运营专属称号': 'Operations Exclusive Title',
    '运营新手卡称号': 'Operations Beginner Card Title',
    '运营活动称号。': 'Operations Event Title.',
    '闪避+100': 'Dodge +100',
    '闪避+50': 'Dodge +50',
    '防御+100': 'Defense +100',
    '防御+200': 'Defense +200',
    '革命百年活动称号': 'Revolution Centennial Event Title',
    '高级VIP中秋尊贵称号！': 'High VIP Mid-Autumn Honor Title!',
    '赤壁终身荣誉贡献奖。\\r玩家^ff7d2f单刀战侣布^ffffff专属称号。': 'Chibi Lifetime Honor Contribution Award.\\rPlayer ^ff7d2fSingle Blade War Companion^ffffff Exclusive Title.',
    '资料片虎卫传奇回归玩家专属称号！^72fe00\\r2010年12月20日-2011年1月16日\\r凭此称号每天可在完美礼品童子处领取专属任务:\\r虎将归来^ffffff(全天领取)\\r^72fe00虎将试炼令^ffffff（12：00-24：00）': 'Expansion Tiger Guard Legend Return Player Exclusive Title!^72fe00\\rDecember 20, 2010 - January 16, 2011\\rWith this title, claim daily exclusive quests at the Perfect Gift Page:\\rTiger General Returns^ffffff(available all day)\\r^72fe00Tiger General Trial Order^ffffff(12:00-24:00)',
    '老玩家回归专属称号，^72fe00\\r2011年3月14日—2011年4月17日\\r凭此称号可在长安老玩家接待大使(146,328)处领取丰厚大礼！': "Veteran Return Exclusive Title,^72fe00\\rMarch 14, 2011 - April 17, 2011\\rWith this title, claim generous gifts at the Chang'an Veteran Reception Ambassador (146,328)!",
}

# ============================================================================
# MAIN TRANSLATOR
# ============================================================================

PATTERNS = [
    t_stat_perm, t_equip_effect, t_marriage_level, t_title_level_simple,
    t_faction_renown_rank, t_legion_activity_reward, t_legion_activity,
    t_legion_commander, t_peerage, t_comp_rank, t_benevolence_rank,
    t_overlord_weapon, t_weapon_warrior, t_christmas_snowball,
    t_chibi_award, t_player_custom_title, t_hero_inheritance, t_spouse_title, t_military_rank,
    t_title_rank_combo,
    t_merit_general, t_merit_civil, t_renown_top100,
    t_region_rank_title, t_region_renown_title,
    t_mansion_title, t_region_rank_wrapped, t_military_rank_label,
]

def translate_string(s):
    """Translate a single quoted string."""
    if not any(0x4e00 <= ord(c) <= 0x9fff for c in s):
        return s

    # Exact-match pairs first
    if s in PAIRS:
        return apply_stats(apply_stats2(PAIRS[s]))

    # Strip prefix, translate body, reattach
    prefix, body = split_prefix(s)
    if body in PAIRS:
        result = reattach(prefix, PAIRS[body])
        return apply_stats(apply_stats2(result))
    for pat in PATTERNS:
        result = pat(body)
        if result:
            result = reattach(prefix, result)
            return apply_stats(apply_stats2(result))

    # Apply both STATS and STATS2 to the original string
    return apply_stats(apply_stats2(s))

def process_file():
    raw = SRC.read_bytes()
    # Decode UTF-8 but leave any stray embedded BOM bytes untouched (they are
    # preserved verbatim in the output; they only ever appear inside comments).
    t = raw.decode('utf-8')
    # Split on the real line terminator so we can reproduce it exactly. The
    # source uses CRLF; we must not collapse those to LF on write.
    had_crlf = '\r\n' in t
    lines = t.split('\r\n' if had_crlf else '\n')
    new_lines = []
    stats = {'translated': 0, 'unchanged': 0, 'total': 0}
    untranslated_samples = []

    quoted_re = re.compile(r'"([^"]*)"')

    for line in lines:
        def replace_quoted(m):
            s = m.group(1)
            if not any(0x4e00 <= ord(c) <= 0x9fff for c in s):
                return m.group(0)
            stats['total'] += 1
            translated = translate_string(s)
            if translated != s:
                stats['translated'] += 1
                return f'"{translated}"'
            else:
                stats['unchanged'] += 1
                if len(untranslated_samples) < 30:
                    untranslated_samples.append(s)
                return m.group(0)
        new_lines.append(quoted_re.sub(replace_quoted, line))

    new_t = ('\r\n' if had_crlf else '\n').join(new_lines)
    OUT.parent.mkdir(parents=True, exist_ok=True)
    # Write bytes directly so CRLF endings and any embedded BOM survive exactly.
    OUT.write_bytes(new_t.encode('utf-8'))

    print(f"Translation complete:")
    print(f"  Total CJK strings: {stats['total']}")
    print(f"  Translated: {stats['translated']}")
    print(f"  Unchanged (untranslated): {stats['unchanged']}")
    print(f"  Output: {OUT}")
    if untranslated_samples:
        print(f"\n  Sample untranslated ({len(untranslated_samples)} shown):")
        for s in untranslated_samples:
            print(f"    {repr(s)}")

if __name__ == '__main__':
    process_file()
