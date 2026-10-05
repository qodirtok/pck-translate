import json, glob, os, re
from collections import Counter

pairs = json.load(open('tmp_pairs_fix.json'))

def count(pattern, label):
    c = Counter()
    for s, e in pairs:
        for m in re.finditer(pattern, s):
            seg_s = s[m.start():m.end()]
            # try same-length english slice is unreliable; search english for label line
            c[seg_s] += 1
    print('==', label)
    for k, v in c.most_common(20):
        print('   ', k, v)

# what english lines correspond to stat label lines
labels = ['技能类别：', '技能品质：', '学习需求：', '学习等级需求：', '属性：', '兵器：', '武技：', '专精：', '招式：', '策略：', '魂技类型：', '技能生效祖籍限制：', '技能类别', '基础招式', '高阶招式', '专精招式']
eng = Counter()
for s, e in pairs:
    sl = s.split('<CRLF>')
    el = e.split('<CRLF>')
    if len(sl) != len(el):
        continue
    for a, b in zip(sl, el):
        for L in labels:
            if a.startswith(L):
                eng[b.strip()] += 1
for k, v in eng.most_common(80):
    print('%5d  %s' % (v, k))

print('---- 灵活系/专注系/智慧系 english ----')
c = Counter()
for s, e in pairs:
    for a, b in zip(s.split('<CRLF>'), e.split('<CRLF>')):
        if '系' in a and len(a) < 20:
            c[(a.strip(), b.strip())] += 1
for k, v in c.most_common(40):
    print('%5d  %s -> %s' % (v, k[0], k[1]))