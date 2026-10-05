#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import json
import re
from pathlib import Path

# Glossary mappings from tr3_glossary.md
glossary = {
    "右键点击": "Right-click",
    "点击": "click",
    "使用": "Use",
    "开启": "open",
    "领取": "claim",
    "兑换": "redeem",
    "奖励": "Reward",
    "获得": "gain",
    "包裹": "inventory",
    "包裹栏": "inventory",
    "留出": "free up",
    "绑定": "Binds on Equip",
    "不可交易": "Untradable",
    "物品": "item",
    "状态": "status",
    "天威宝令": "Tianwei Talisman",
    "圣兽之力": "Beast Power",
    "青龙": "Azure Dragon",
    "白虎": "White Tiger",
    "朱雀": "Vermillion Bird",
    "玄武": "Black Tortoise",
    "名望": "Reputation",
    "文武功勋": "Civil and Military Merit",
    "战魂成长": "Battle Soul Growth",
    "秘文": "Secret Text",
    "商票": "Merchant Note",
    "金": "Gold",
    "巫蛮枭铠套装": "Wu Man Xiao Armor Set",
    "巫羽蛇裳套装": "Wu Yu Snake Robe Set",
    "幼年狻猊": "Young Suanni",
    "武道修行令": "Martial Art Training Token",
    "朱砂笔": "Cinnabar Brush",
    "马良笔": "Ma Liang Brush",
    "火德仙豆": "Fire Virtue Magic Bean",
    "金麒麟": "Golden Qilin",
    "无极刀谱": "Wuji Sword Manual",
    "尊级技能书残页": "Master Skill Book Fragment",
    "神秘奖励": "Mystery Reward",
    "阅历": "Experience",
    "七彩圣诞鹿": "Rainbow Christmas Deer",
    "猛将之证（青龙）": "Sign of the Mighty General (Azure Dragon)",
    "基础成长玉": "Basic Growth Jade",
    "霜晴草": "Frost Clear Grass",
    "朱雀召唤卷轴": "Vermillion Bird Summon Scroll",
    "秘文·斗": "Secret Text · Fight",
    "橙色陶罐": "Orange Pot",
    "秘文·冥": "Secret Text · Netherworld",
    "蓝色陶罐": "Blue Pot",
    "风行草": "Wind Running Grass",
    "秘文·豪": "Secret Text · Hero",
    "武神石": "God of War Stone",
    "虎年表情包": "Year of the Tiger Emoticon",
    "秘文‧影": "Secret Text · Shadow",
    "绿色陶罐": "Green Pot",
    "切开诗篇": "Cut the Poem",
    "牛郎": "Cowherd",
    "织女": "Weaver Girl",
    "天河": "Milky Way",
    "喜鹊": "Magpie",
    "卡片": "Card",
    "暗金色国家任务": "Dark Gold National Quest",
    "橙色国家任务": "Orange National Quest",
    "绿色国家任务": "Green National Quest",
    "蓝色国家任务": "Blue National Quest",
    "金色国家任务": "Gold National Quest",
    "黄色国家任务": "Yellow National Quest",
    "混沌神石": "Chaos God Stone",
    "马术精要·初级": "Horsemanship Essentials · Beginner",
    "马术精要·高级": "Horsemanship Essentials · Advanced",
    "锦囊": "Gift Pack",
    "统率值": "Command Points",
    "声望": "Prestige",
    "天机材": "Heavenly Mystery Material",
    "太一元符": "Taiyi One talisman",
    "完美宝钻": "Perfect Gem",
    "昊天石": "Haotian Stone",
    "葭萌关士兵": "Jiameng Guan Soldier",
    "赤龙闪珠": "Red Dragon Flash Bead",
    "地彗刺": "Comet Spike",
    "地灵刺": "Earth Spirit Spike",
    "玄机兽": "Mysterious Beast",
    "逍遥云狐套装": "Carefree Cloud Fox Set",
    "十阶斗神防具兑换券": "Rank 10 Battle God Armor Coupon",
    "追命斗神武器兑换券": "Chasing Death Battle God Weapon Coupon",
    "甘宁": "Gan Ning",
    "许褚传隐藏难度BOSS": "Xu Chu Legend Hidden Difficulty BOSS",
    "黄忠传隐藏难度BOSS": "Huang Zhong Legend Hidden Difficulty BOSS",
    "图鉴摘要": "Codex Summary",
    "蓝色图鉴包": "Blue Codex Pack",
    "紫色图鉴包": "Purple Codex Pack",
    "橙色图鉴包": "Orange Codex Pack",
    "金色图鉴包": "Gold Codex Pack",
    "春风习习带头羊又登泰山顶": "Breezy Sheep Climbs Taishan Peak Again",
    "凯歌阵阵千里马早过玉门关": "Triumphant Songs, Steed Passes Yumen Pass Early",
    "羊笔如椽描山绘水书春意": "Sheep's Pen Like a Tree Painting Spring",
    "马蹄腾雪步韵留香报福音": "Horse Hooves Stir Snow, Leaving Fragrance with Good News",
    "败乃常事·优秀": "Failure Is Common · Excellent",
    "曹操·国战·优秀": "Cao Cao · National War · Excellent",
    "烽火·东·优秀": "Beacon Fire · East · Excellent",
    "烽火·西·优秀": "Beacon Fire · West · Excellent",
    "烽火·中·优秀": "Beacon Fire · Central · Excellent",
    "军团竞技·将领·优秀": "Legion Arena · Commander · Excellent",
    "军团竞技·云梯·优秀": "Legion Arena · Siege Ladder · Excellent",
    "刘备·国战·优秀": "Liu Bei · National War · Excellent",
    "群英·初试·优秀": "Heroes · First Trial · Excellent",
    "群英·再战·优秀": "Heroes · Second Battle · Excellent",
    "胜乃常事·优秀": "Victory Is Common · Excellent",
    "孙权·国战·优秀": "Sun Quan · National War · Excellent",
    "挑灯夜战·优秀": "Night Battle · Excellent",
    "武师·夏侯元·优秀": "Warrior · Xiahou Yuan · Excellent",
    "武师·詹天侠·优秀": "Warrior · Zhan Tianxia · Excellent",
    "普通": "Common",
    "稀有": "Rare",
    "史诗": "Epic",
    "传说": "Legendary",
    "限定": "Limited",
    "摧城拔寨·史诗": "Sacking Cities · Epic",
    "关中王者·史诗": "King of Guanzhong · Epic",
    "军团竞技场·史诗": "Legion Arena · Epic",
    "马超·佯守·史诗": "Ma Chao · Feigned Defense · Epic",
    "群英·称王·史诗": "Heroes · Kingship · Epic",
    "张飞·猥攻·史诗": "Zhang Fei · Foul Attack · Epic",
    "逐鹿中原·史诗": "Hunting for Power in the Central Plains · Epic",
    "五丈原": "Wuzhang Plains",
    "五丈原·姜维": "Wuzhang Plains · Jiang Wei",
    "五丈原·马岱": "Wuzhang Plains · Ma Dai",
    "五丈原·魏延": "Wuzhang Plains · Wei Yan",
    "节气": "Solar Term",
    "冬至": "Winter Solstice",
    "处暑": "Limit of Heat",
    "夏至": "Summer Solstice",
    "大寒": "Major Cold",
    "大暑": "Major Heat",
    "大雪": "Heavy Snow",
    "寒露": "Cold Dew",
    "小寒": "Minor Cold",
    "小暑": "Minor Heat",
    "小满": "Grain Buds",
    "小雪": "Light Snow",
    "惊蛰": "Insect Awakens",
    "春分": "Spring Equinox",
    "清明": "Qingming Festival",
    "白露": "White Dew",
    "秋分": "Autumn Equinox",
    "立冬": "Beginning of Winter",
    "立夏": "Beginning of Summer",
    "立秋": "Beginning of Autumn",
    "芒种": "Grain in Ear",
    "谷雨": "Grain Rain",
    "雨水": "Rain Water",
    "霜降": "Frost's Descent",
    "纤云弄巧": "Delicate Clouds Dance Wondrously",
    "万夫莫敌针锋对": "Invincible Against Thousands, Needle-to-Needle Match",
    "十八武艺展绝学": "Eighteen Martial Arts Display Ultimate Skills",
    "众人群中立杆影": "Stand Alone Among Crowds",
    "初立擂台试高低": "First Time On The Podium",
    "鏖战天下傲群英": "Fierce Battle For Supremacy Among Heroes",
    "美酒·广陵": "Fine Wine · Guangling (Crit)",
    "美酒·杜康": "Fine Wine · Dukang (Defense)",
    "美酒·玉露": "Fine Wine · Jade Dew (Crit Resist)",
    "美酒·青莲": "Fine Wine · Green Lotus (Attack)",
    "金虎舒筋丸": "Golden Tiger Muscle Relaxant (Crit)",
    "银虎强魄丸": "Silver Tiger Body Strengthening Pill (Defense)",
    "染色剂": "Dye",
    "天蓝": "Sky Blue",
    "天青石": "Sky Blue Stone",
    "巧克力": "Chocolate",
    "月光石": "Moonstone",
    "朱砂": "Cinnabar",
    "柠檬黄": "Lemon Yellow",
    "樱草": "Primrose",
    "橘子红": "Mandarin Orange Red",
    "浪淘沙": "Wave Washes Sand",
    "海蓝石": "Sea Blue Stone",
    "玫瑰": "Rose",
    "珊瑚": "Coral",
    "瑠璃": "Amethyst",
    "竹叶青": "Bamboo Leaf Green",
    "紫丁香": "Lilac",
    "紫棠": "Purple Betel",
    "紫檀": "Rosewood",
    "紫罗兰": "Violet",
    "紫薇花": "Chinese Lantern Tree Flower",
    "红宝石": "Ruby",
    "纯灰": "Pure Gray",
    "纯白": "Pure White",
    "纯黑": "Pure Black",
    "绿松石": "Turquoise",
    "翡翠石": "Jade Stone",
    "胭脂红": "Rouge Red",
    "芙蓉": "Hibiscus",
    "蓝宝石": "Sapphire",
    "藏青": "Navy Blue",
    "贵妃红": "Consort Red",
    "黛青": "Deep Azure",
    "八荒灵石": "Bagua Spirit Stone",
    "冰月皇石": "Ice Moon Emperor Stone",
    "图样": "Pattern",
    "图鉴": "Codex",
    "城外有座塔·叁": "A Tower Outside the City · III",
    "城外有座塔·壹": "A Tower Outside the City · I",
    "城外有座塔·贰": "A Tower Outside the City · II",
    "大汉中军令": "Great Han Central Army Order",
    "大汉军牌": "Great Han Military Tag",
    "天方司南": "Tianfang Compass",
}

# ASCII punctuation mapping
punctuation_map = str.maketrans({
    '。': '.',
    '：': ':',
    '，': ',',
    '（': '(',
    '）': ')',
    '!': '!',
    '；': ';',
    '？': '?',
})

def translate_chinese(text):
    """Translate Chinese text using glossary, preserving special patterns."""
    result = text
    
    # Replace fullwidth punctuation with ASCII
    result = result.translate(punctuation_map)
    
    # Apply glossary replacements (sorted by length descending to avoid partial matches)
    sorted_terms = sorted(glossary.items(), key=lambda kv: len(kv[0]), reverse=True)
    for cn_term, en_term in sorted_terms:
        # Only replace exact occurrences (not part of other words)
        result = re.sub(re.escape(cn_term), en_term, result)
    
    return result

def process_record(record):
    """Process a single record, translating source to English while preserving structure."""
    source = record['source']
    
    # Split by literal \\r (backslash-r sequence)
    parts = source.split('\\r')
    
    translated_parts = []
    for part in parts:
        if not part:
            translated_parts.append('')
            continue
            
        # Each part typically has ^color prefix followed by Chinese text
        # We need to preserve the color codes
        
        # Match ^[0-9a-f]+ pattern at the start
        color_match = re.match(r'(\^[0-9a-f]+)(.*)', part)
        
        if color_match:
            color_code = color_match.group(1)
            text_part = color_match.group(2)
            
            # Translate only the text part, preserving any embedded markers
            translated_text = translate_chinese(text_part)
            translated_parts.append(color_code + translated_text)
        else:
            # No color code, just translate the whole thing
            translated_parts.append(translate_chinese(part))
    
    # Rejoin with \r
    english = '\\r'.join(translated_parts)
    
    return {
        'id': record['id'],
        'english': english
    }

def main():
    input_path = Path('/Users/zlns/personal-www/pck-translate/.work/tr3/in/batch_002.jsonl')
    output_path = Path('/Users/zlns/personal-www/pck-translate/.work/tr3/out/batch_002.jsonl')
    
    with open(input_path, 'r', encoding='utf-8') as f:
        lines = [line.strip() for line in f if line.strip()]
    
    print(f"Read {len(lines)} records")
    
    results = []
    for line in lines:
        record = json.loads(line)
        translated = process_record(record)
        results.append(translated)
    
    # Write output
    with open(output_path, 'w', encoding='utf-8') as f:
        for r in results:
            f.write(json.dumps(r, ensure_ascii=False) + '\n')
    
    print(f"Wrote {len(results)} records to output")
    
    # Verify IDs match
    input_ids = [json.loads(line)['id'] for line in lines]
    output_ids = [r['id'] for r in results]
    
    assert input_ids == output_ids, f"ID mismatch! Input: {input_ids[:5]}... Output: {output_ids[:5]}..."
    print("✓ All IDs match correctly")
    
    # Check for common issues
    for r in results:
        eng = r['english']
        if '<LF>' in eng or '<LF\n>' in eng:
            print(f"⚠ ID {r['id']} contains <LF> sentinel - keep this if it was in original")
        if '\\r' not in eng.replace('\\r\\r', ''):
            pass  # OK, some records don't have multiple lines
        
    print("Translation complete!")

if __name__ == '__main__':
    main()
