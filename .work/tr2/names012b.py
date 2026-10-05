import json, re

pairs = []
for b in ['000','001','002','003','004','005','006','007','008a','008b','009','010','011']:
    srcs = {}
    try:
        with open('in/batch_%s.jsonl' % b, encoding='utf-8') as f:
            for line in f:
                line=line.strip()
                if not line: continue
                try:
                    r = json.loads(line); srcs[r['id']] = r['source']
                except Exception: pass
        with open('out/batch_%s.jsonl' % b, encoding='utf-8') as f:
            for line in f:
                line=line.strip()
                if not line: continue
                try: r = json.loads(line)
                except Exception: continue
                s = srcs.get(r.get('id'))
                if s and 'english' in r:
                    pairs.append((b, r['id'], s, r['english']))
    except FileNotFoundError: pass

needles = ['残梦撩','鼓振之舞','淙淙之舞','涓涓之舞','落雁扫','剑罡','剑落','断魂鞭','回锋斩','强化回锋斩',
           '追风升龙','追风连刺','疾风','升龙','破军技法','御敌技法','破军','连击模式','舞扇','诸葛弩',
           '飞将','官印','解烦兵','铜雀台','逍遥津','白帝城','江东','解烦','贪狼','谏言','迎驾','连环计',
           '连营','逍遥','辕门射','吕奉先','辕门射戟','疾走','冲锋','强袭','满弦射','射穿','重创','灭杀',
           '五步射','护体','承击','承接','格挡','破招','击晕','震伤','破胆','昏迷','浮空','箭伤','刺伤',
           '溅射','落雁','流云','残梦','魅影','闪避','击落下马','绊马','火种','治疗','生命回复','受伤抗性',
           '间接抗性','直接抗性','法术抗性','限制抗性','封印抗性','击倒','眩晕','衰弱','凌乱','护盾',
           '运筹帷幄','决胜千里','兵多将广','强可敌国','一方枭雄','擂鼓点将','军团包','荣耀值','通用军团',
           '身法','资质','骑术专精','主兵种','使','冲锋','升龙','疾风','虎','震荡','反弹','护甲','机关',
           '冲车','箭塔','城门','挡板','弩箭炮','十字弦','春回大地','生机盎然','豪龙','仙灵','翩翩','妙计',
           '觉醒','妙计状态','连环状态','袭破','灵魂伤害','灵魂攻击','炼魂','英雄魂魄','融入体内']
out = []
for nd in needles:
    hits = []
    for b, i, s, e in pairs:
        if nd in s:
            # show the english line(s) containing corresponding translation
            for sl, el in zip(s.split('<CRLF>'), e.split('<CRLF>')):
                if nd in sl:
                    hits.append((b, i, sl, el))
    if hits:
        out.append('=== %s (%d hits) ===' % (nd, len(hits)))
        seen = set()
        for b, i, sl, el in hits:
            key = (sl, el)
            if key in seen: continue
            seen.add(key)
            out.append('  [%s/%s] %r -> %r' % (b, i, sl, el))
    else:
        out.append('=== %s : NO PRIOR ===' % nd)

open('/tmp/names012b.txt','w').write('\n'.join(out))
print('wrote', len(out))
