import json
import sys
import re

def translate(source):
    s = source

    # Glossary rules
    s = s.replace('右键点击', 'Right-click')
    s = s.replace('使用：', 'Use: ')
    s = s.replace('开启', 'open')
    s = s.replace('领取', 'claim')
    
    # Common sentences
    s = s.replace('^7fffffUse: Right-click to open礼包。', '^7fffffUse: Right-click to open Gift Pack.')
    s = s.replace('^7fffffUse: Right-click to open Gift Pack。', '^7fffffUse: Right-click to open Gift Pack.')
    s = s.replace('^7fffff使用：Right-clickopen礼包。', '^7fffffUse: Right-click to open Gift Pack.')

    s = re.sub(r'请在包裹栏中留出至少(\d+)格以便claim礼包物品。', r'Please free up at least \1 slot(s) in your inventory to claim Gift Pack items.', s)
    s = re.sub(r'请在包裹栏中留出至少(\d+)格以便领奖。', r'Please free up at least \1 slot(s) in your inventory to claim rewards.', s)
    s = re.sub(r'请在包裹内至少留出(\d+)格以便claim物品。', r'Please free up at least \1 slot(s) in your inventory to claim items.', s)

    s = re.sub(r'内含：?', 'Contains: ', s)
    
    s = re.sub(r'open可获得[:：]?', 'After opening, you can obtain:', s)
    s = re.sub(r'open可获得\\r', 'After opening, you can obtain:\\r', s)
    s = re.sub(r'open后\\r男子将获得', 'After opening:\\rThe male will receive ', s)
    s = re.sub(r'open后\\r女子将获得', 'After opening:\\rThe female will receive ', s)
    s = re.sub(r'open后\\r男子将获得', 'After opening:\\rThe male will receive ', s)
    s = re.sub(r'open后\\r女子将获', 'After opening:\\rThe female will receive ', s)
    s = re.sub(r'open后可以获得[:：]?', 'After opening, you can obtain:', s)
    s = re.sub(r'open后可以获得\\r', 'After opening, you can obtain:\\r', s)
    s = re.sub(r'open后可获得', 'After opening, you can obtain:', s)
    s = re.sub(r'open可随机获得[:：]?', 'After opening, you can randomly obtain:', s)
    s = re.sub(r'open可随机获得\\r', 'After opening, you can randomly obtain:\\r', s)

    s = re.sub(r'(\d+)级以上VIP可open。', r'\1+ VIP level can open.', s)

    s = s.replace('礼包可交易，但open后获得的异兽会与人物绑定。', 'Gift Pack is tradable, but the obtained beast binds to the character after opening.')
    s = s.replace('商城出售的礼包，Contains限时7天的巫术娃娃一个。', 'Gift Pack sold at the mall, contains a 7-day 巫术娃娃.')
    s = s.replace('携带巫术娃娃可以在角色遭遇死亡时防止历练、阅历及装备遭受损失。', 'While carrying a 巫术娃娃, your character will not lose Experience, Training, or equipment upon death.')
    s = s.replace('装备不受损失功能对红名玩家无效！', 'The no-loss equipment feature does not apply to red-name players!')
    s = s.replace('巫术娃娃拾取绑定，不会随死亡消失。', '巫术娃娃 binds on pickup and will not disappear upon death.')
    s = s.replace('巫术娃娃拾取绑定，不会随死亡消失，对红名玩家无效。', '巫术娃娃 binds on pickup and will not disappear upon death. Does not apply to red-name players.')
    s = s.replace('巫术娃娃的补偿礼包，Contains限时14天的巫术娃娃一个。', 'Compensation Gift Pack for 巫术娃娃, contains a 14-day 巫术娃娃.')

    s = s.replace('open后物品不可交易。', 'Items are Untradable after opening.')
    s = s.replace('open后物品无法交易。', 'Items are Untradable after opening.')
    s = s.replace('open后物品将为绑定状态。', 'Items will be Bound after opening.')
    s = s.replace('open物品为绑定状态', 'Items are Bound after opening')
    s = s.replace('open物品为绑定状态。', 'Items are Bound after opening.')

    s = s.replace('每日可open一次。', 'Can be opened once per day.')
    s = s.replace('时装可染色。', 'Fashion can be dyed.')
    s = s.replace('获得的时装可以染色。', 'The obtained fashion can be dyed.')

    s = s.replace('需使用11800点大汉天威open。', 'Requires 11,800 大汉天威 to open.')
    s = s.replace('需使用1314个圣诞礼券open。', 'Requires 1,314 圣诞礼券 to open.')

    s = s.replace('巫南无法使用，但可激活名将套装。', 'Cannot be used by 巫南, but can activate the famous general set.')

    s = s.replace('商城豪华礼包，Contains', 'Premium Mall Gift Pack, contains ')
    s = s.replace('商城豪华礼包，使用后将随机获得四大名马中的一匹！', 'Premium Mall Gift Pack: upon use, randomly grants one of the four famous horses!')
    s = re.sub(r'商城豪华礼包，Contains名马·?', 'Premium Mall Gift Pack, contains famous horse ', s)
    s = re.sub(r'商城豪华礼包，Contains异兽·?', 'Premium Mall Gift Pack, contains strange beast ', s)
    
    s = s.replace('冬日大礼包，高级玩家冲级专用。', 'Winter Gift Pack, specifically for advanced players to level up.')
    s = s.replace('冬日大礼包，高级玩家生产专用。', 'Winter Gift Pack, specifically for advanced players\' crafting.')

    s = s.replace('前5次open可获得:', 'The first 5 openings grant:')
    s = s.replace('open5次后获得：少量历练、阅历。', 'After 5 openings: small amounts of Experience and Training.')

    s = s.replace('可获得50金汉铢和烟花·我和你1个，', 'Can obtain 50 Gold 汉铢 and 1 烟花·我和你,')
    s = s.replace('有一定几率获得地彗刺1个', 'With a chance to obtain 1 地彗刺')

    s = s.replace('天女纱、补天石、缩地令旗、千里传音等礼包物品！', '天女纱, 补天石, 缩地令旗, 千里传音, and other Gift Pack items!')
    s = s.replace('小马哥用私房钱购买的LV包包，', '小马哥\'s private stash-bought LV bag,')
    s = s.replace('相传里面有大量珍贵物品。', 'It is said to contain a large number of precious items.')
    
    s = re.sub(r'商票(\d+)金', r'Merchant Bill \1 Gold', s)
    s = s.replace('国庆期间优惠出售礼包，高级玩家专用。', 'National Day discounted Gift Pack, for advanced players only.')
    s = s.replace('礼包物品将在图鉴包裹中出现。', 'Gift Pack items will appear in the Codex inventory.')
    s = s.replace('物品使用后可直接激活对应图鉴。', 'Using the item directly activates the corresponding Codex.')

    s = s.replace('海量历练、阅历', 'Massive Experience and Training')
    s = s.replace('大量历练、阅历和战魂成长度。', 'Abundant Experience, Training, and Battle Soul growth.')
    s = s.replace('少量历练、阅历。', 'Small amounts of Experience and Training.')
    s = s.replace('少量历练、阅历、', 'Small amounts of Experience, Training, ')

    s = re.sub(r'文勋值、武勋值、功勋值各(\d+)点', r'\1 points each of Civil Merit, Military Merit, and Merit Points', s)
    s = re.sub(r'(\d+)级以上可额外获得(\d+)点名望值。', r'\1+ level can additionally obtain \2 Reputation points.', s)

    s = re.sub(r'有一定几率获得英雄归来卡(\d+)张。', r'With a chance to obtain \1 英雄归来卡.', s)
    s = s.replace('有一定几率获得英雄归来卡1张。', 'With a chance to obtain 1 英雄归来卡.')
    s = s.replace('有一定几率获得英雄邀请卡1张。', 'With a chance to obtain 1 英雄邀请卡.')

    # General replacements for common fragments
    s = s.replace('（女）', '(Female)')
    s = s.replace('(女)', '(Female)')
    s = s.replace('（男）', '(Male)')
    s = s.replace('(男)', '(Male)')
    s = s.replace('（专属）', '(Exclusive)')
    s = s.replace('(专属)', '(Exclusive)')
    s = s.replace('（套装）', '(Set)')
    s = s.replace('(套装)', '(Set)')
    s = s.replace('（传说）', '(Legendary)')
    s = s.replace('(传说)', '(Legendary)')
    s = s.replace('（史诗）', '(Epic)')
    s = s.replace('(史诗)', '(Epic)')
    s = s.replace('（表情）', '(Emote)')
    s = s.replace('(表情)', '(Emote)')

    s = s.replace('各一件', ' 1 of each')
    s = s.replace('一件', ' 1 piece')
    s = s.replace('一个', ' 1 piece')
    s = s.replace('一只', ' 1 piece')
    s = s.replace('一匹', ' 1 mount')
    s = s.replace('本', ' book')
    s = s.replace('100点文、武、功勋值', '100 points each of Civil Merit, Military Merit, and Merit')
    s = s.replace('100点族系声望', '100 Lineage Reputation')
    s = s.replace('100点名望', '100 Reputation')
    s = s.replace('鉴赏值10万点', '100,000 Appreciation Points')
    s = s.replace('星值100点', '100 Star Points')
    
    # "10级骁勇令" -> "Lv.10 骁勇令"
    s = re.sub(r'(\d+)级([^V])', r'Lv.\1 \2', s)
    s = re.sub(r'限时(\d+)天', r'\1-day ', s)
    s = re.sub(r'（(\d+)天）', r' (\1-day)', s)
    s = re.sub(r'\((\d+)天\)', r' (\1-day)', s)

    s = s.replace('木牛流马', 'Wooden Ox and Gliding Horse')
    
    # Number + "个" -> " N pieces"
    s = re.sub(r'(\d+)个', r'\1', s)
    # Number + "次" -> " N times"
    s = re.sub(r'(\d+)次', r'\1 times', s)

    # Clean up any leftover Chinese fullwidth characters
    s = s.replace('。', '.')
    s = s.replace('！', '!')
    s = s.replace('：', ':')
    s = s.replace('，', ',')
    s = s.replace('（', '(')
    s = s.replace('）', ')')
    s = s.replace('、', ', ')
    s = s.replace('；', ';')
    s = s.replace('？', '?')

    # Remove extra spaces before punctuation
    s = re.sub(r'\s+!', '!', s)
    s = re.sub(r'\s+\.', '.', s)
    
    # Clean up double "Contains: Contains: " 
    s = s.replace('Contains: Contains: ', 'Contains: ')
    
    # Run a few basic fixups from the initial translation script replacements that might have missed
    s = s.replace('Use: Right-click to open Gift Pack.', 'Use: Right-click to open Gift Pack.')
    s = s.replace('^7fffffUse: Right-click to open Gift Pack.', '^7fffffUse: Right-click to open Gift Pack.')
    s = s.replace('open后可以获得:', 'After opening, you can obtain:')
    s = s.replace('open后可获得', 'After opening, you can obtain:')

    return s

with open('/Users/zlns/personal-www/pck-translate/.work/tr3/in/batch_005.jsonl', 'r') as fin:
    lines = fin.readlines()

out_lines = []
for line in lines:
    obj = json.loads(line.strip())
    eng = translate(obj['source'])
    # Fallback fixes on eng
    eng = eng.replace('Use: Right-click to open Gift Pack.\\r^fff600Contains: ', 'Use: Right-click to open Gift Pack.\\r^fff600Contains: ')
    out_lines.append(json.dumps({"id": obj["id"], "english": eng}, ensure_ascii=False))

with open('/Users/zlns/personal-www/pck-translate/.work/tr3/out/batch_005.jsonl', 'w') as fout:
    fout.write('\n'.join(out_lines) + '\n')
