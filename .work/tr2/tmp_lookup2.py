# -*- coding: utf-8 -*-
import json, glob, os

pairs = {}
for inf in sorted(glob.glob('.work/tr2/in/batch_0*.jsonl')):
    base = os.path.basename(inf)[:-6]
    outf = f'.work/tr2/out/{base}.jsonl'
    if not os.path.exists(outf):
        continue
    srcs = {}
    for line in open(inf, encoding='utf-8'):
        line = line.strip()
        if not line:
            continue
        try:
            r = json.loads(line)
        except Exception:
            continue
        srcs[r['id']] = r['source']
    for line in open(outf, encoding='utf-8'):
        line = line.strip()
        if not line:
            continue
        try:
            r = json.loads(line)
        except Exception:
            continue
        s = srcs.get(r['id'])
        if s and s not in pairs:
            pairs[s] = r['english']

# All distinct sources in batch_019 ids 501-1045
srcs19 = {}
for line in open('.work/tr2/in/batch_019.jsonl', encoding='utf-8'):
    r = json.loads(line)
    srcs19[r['id']] = r['source']

want = [i for i in range(501, 1046) if i not in (1496,)]
matched = 0
for i in want:
    s = srcs19.get(i)
    if s is None:
        continue
    if s in pairs:
        print(i, '|', s, '=>', pairs[s][:90].replace('\n', ' | '))
        matched += 1
print('matched:', matched, 'of', len(want))
