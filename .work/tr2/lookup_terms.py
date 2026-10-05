import json, glob, os, re

src_by_key = {}
for f in glob.glob('in/*.jsonl'):
    b = os.path.basename(f)
    for l in open(f):
        l = l.strip()
        if not l:
            continue
        r = json.loads(l)
        if 'source' in r:
            src_by_key[(b, r.get('id'))] = r['source']

outs = {}
for f in glob.glob('out/*.jsonl'):
    b = os.path.basename(f)
    for l in open(f):
        l = l.strip()
        if not l:
            continue
        r = json.loads(l)
        outs[(b, r.get('id'))] = r.get('english')

pairs = []
for (b, rid), s in src_by_key.items():
    en = outs.get((b, rid))
    if en:
        pairs.append((s, en))
print('pairs', len(pairs))
json.dump(pairs, open('tmp_pairs_fix.json', 'w'))

terms = ['破招', '震伤', '重伤', '刺杀', '法强', '攻击强度', '魂技', '计谋值', '仇恨', '吟唱',
         '美人计', '祖籍', '魂魄', '觉醒', '炼魂', '袭破', '疾风', '升龙', '截脉刺', '封喉刺',
         '速砍', '直突', '盾砸', '看破', '连打', '逆打', '风火轮', '青龙偃月', '霸海刀', '抚琴',
         '长安写意', '闭月', '闲情赋', '雪璃', '雪莲', '雷霆万钧', '摧心爪', '急冲', '惊雷',
         '摄魂一式', '追风', '追魂击', '逍遥突', '连环计', '百裂连棍', '盾突']
for t in terms:
    print('###', t)
    n = 0
    for s, e in pairs:
        if t not in s:
            continue
        m = re.search(re.escape(t), s)
        a = max(0, m.start() - 22)
        c = min(len(s), m.end() + 22)
        ss = s[a:c].replace('<CRLF>', '|')
        ee = (e[a:c] if len(e) >= c else e).replace('\n', '|')
        print('   SRC ...%s...' % ss)
        print('   EN  ...%s...' % ee)
        n += 1
        if n >= 4:
            break