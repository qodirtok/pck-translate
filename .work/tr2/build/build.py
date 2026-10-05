#!/usr/bin/env python3
import json, re, sys, collections

IN = '/Users/zlns/personal-www/pck-translate/.work/tr2/in/batch_015.jsonl'
OUT = '/Users/zlns/personal-www/pck-translate/.work/tr2/out/batch_015.jsonl'
B1 = '/Users/zlns/personal-www/pck-translate/.work/tr2/build/trans_part1.json'
B2 = '/Users/zlns/personal-www/pck-translate/.work/tr2/build/trans_part2.json'

src = [json.loads(l) for l in open(IN, encoding='utf-8')]
tr = {}
tr.update(json.load(open(B1, encoding='utf-8')))
tr.update(json.load(open(B2, encoding='utf-8')))

RUN = re.compile(r'　+| {2,}')
CODE = re.compile(r'\^[0-9a-fA-F]{6}')
PLACE = re.compile(r'%(\.\d+f|[sdfuxX%]|%)')
CJK = re.compile(r'[\u3000-\u303f\u4e00-\u9fff\uff00-\uffef]')

errors = []
out_lines = []

for rec in src:
    sid, s = rec['id'], rec['source']
    if str(sid) not in tr:
        errors.append(f'id {sid}: missing translation')
        continue
    tpl = tr[str(sid)]
    # collect runs: (type, text) in order
    runs = []
    for m in RUN.finditer(s):
        runs.append(('IDEO' if '　' in m.group() else 'ASC', m.group()))
    if tpl.count('　') or re.search(r' {2,}', tpl):
        errors.append(f'id {sid}: template contains raw run that should be a marker')
        continue
    # substitute markers in order
    it = iter(runs)
    nxt = next(it, None)
    res = []
    i = 0
    while i < len(tpl):
        c = tpl[i]
        if c in ('§', '¶'):
            want = 'IDEO' if c == '§' else 'ASC'
            if nxt is None:
                errors.append(f'id {sid}: extra marker {c!r}')
                nxt = None
                break
            if nxt[0] != want:
                errors.append(f'id {sid}: marker {c!r} got run {nxt[0]!r}')
                break
            res.append(nxt[1])
            nxt = next(it, None)
        else:
            res.append(c)
        i += 1
    eng = ''.join(res)
    if nxt is not None:
        errors.append(f'id {sid}: {sum(1 for r in runs if r[0]==nxt[0])} unconsumed run(s) starting {nxt[1]!r}')
    # validations
    if s.count('<CRLF>') + s.count('<LF>') + s.count('<CR>') != eng.count('<CRLF>') + eng.count('<LF>') + eng.count('<CR>'):
        errors.append(f'id {sid}: line-break token count mismatch')
    if CODE.findall(s) != CODE.findall(eng):
        errors.append(f'id {sid}: color code mismatch {CODE.findall(s)} vs {CODE.findall(eng)}')
    if collections.Counter(PLACE.findall(s)) != collections.Counter(PLACE.findall(eng)):
        errors.append(f'id {sid}: placeholder mismatch {PLACE.findall(s)} vs {PLACE.findall(eng)}')
    if re.search(r'[\u4e00-\u9fff\u3040-\u30ff\uac00-\ud7af]', eng):
        errors.append(f'id {sid}: CJK remains')
    if '"' in eng:
        errors.append(f'id {sid}: straight double quote present')
    if re.search(r'[\u4e00-\u9fff]', s) == False:
        pass  # source has no CJK; echo check below
    if not re.search(r'[\u4e00-\u9fff]', s) and eng != s:
        errors.append(f'id {sid}: pure-ASCII source must be echoed unchanged')
    out_lines.append(json.dumps({'id': sid, 'english': eng}, ensure_ascii=False))

if len(out_lines) != len(src):
    errors.append(f'count mismatch: wrote {len(out_lines)}, input {len(src)}')

if errors:
    print('ERRORS:')
    for e in errors:
        print(' -', e)
    sys.exit(1)

open(OUT, 'w', encoding='utf-8').write('\n'.join(out_lines) + '\n')
print(f'OK: wrote {len(out_lines)} records to {OUT}')
