import json, re
from collections import Counter
pairs = json.load(open('tmp_pairs_fix.json'))

# established skill names: first line of payload
names = {}
for s, e in pairs:
    a = s.split('<CRLF>')[0]
    b = e.split('<CRLF>')[0]
    m = re.match(r'^\^c3dbff([^\^]+?)(?:\^|$)', a)
    if not m:
        continue
    cn = m.group(1)
    m2 = re.match(r'^\^c3dbff([^\^]+?)(?:\^|$)', b)
    if not m2:
        continue
    names.setdefault(cn, Counter())[m2.group(1)] += 1

want = ['惊雷术', '疾雷', '摄魂一式', '摧心爪', '直突', '追风', '疾风', '升龙', '连环计', '逍遥突',
        '追魂击', '抚琴问情', '长安写意', '长虹贯日舞', '闭月', '闲情赋', '雪璃殇', '雪莲散', '霸海刀决',
        '雷霆万钧', '盾砸', '盾突', '打断', '风火轮', '青龙偃月', '连打', '逆打', '百裂连棍', '截脉刺',
        '封喉刺', '速砍', '美人计', '连环状态', '炼魂', '觉醒']
for w in want:
    hits = [(k, v) for k, v in names.items() if w in k]
    for k, v in hits[:14]:
        print('%-24s -> %s' % (k, dict(v.most_common(3))))
print()
print('==== exact single-name lookups ====')
for cn in ['惊雷术', '疾雷', '摄魂一式', '摧心爪', '直突', '盾砸', '盾砸·技', '盾砸·缴械', '盾砸·封印',
           '盾突', '盾突·打断', '打断', '连打', '连打·技', '逆打', '逆打·技', '风火轮', '风火轮·力',
           '百裂连棍', '百裂连棍·技', '直突·技', '青龙偃月·力', '追风升龙', '追风连刺', '连环计',
           '逍遥突', '追魂击', '抚琴问情', '长安写意', '长虹贯日舞', '闭月', '闲情赋', '雪璃殇',
           '雪莲散', '霸海刀决', '雷霆万钧', '雷霆万钧·毁魂', '急冲', '急冲·伤', '急冲·怒',
           '惊雷术·策', '追风', '狂雷']:
    print('%-14s %s' % (cn, dict(names.get(cn, Counter()).most_common(4))))

print()
print('==== wound-term frequencies ====')
c = Counter()
for s, e in pairs:
    for a, b in zip(s.split('<CRLF>'), e.split('<CRLF>')):
        if a.startswith('重伤效果'):
            c[b.strip()] += 1
for k, v in c.most_common():
    print('%4d %s' % (v, k))