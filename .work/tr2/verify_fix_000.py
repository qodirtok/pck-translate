"""Deterministic audit for .work/tr2/out/fix_000.jsonl against in/fix_000.jsonl."""
import json
import re
import unicodedata
from collections import Counter

TOK = re.compile(r'<CRLF>|<LF>|<CR>')
COLOR = re.compile(r'\^[0-9A-Fa-f]{6}')
PH = re.compile(r'%%|%[-+ #0]*[0-9]*(?:\.[0-9*]+)?[a-zA-Z]')
ESC = re.compile(r'\\[a-zA-Z]')
NUM = re.compile(r'[0-9]+(?:\.[0-9]+)?')
WS = re.compile(r'[ \t\u3000]+')
CJK = re.compile(r'[\u3400-\u4DBF\u4E00-\u9FFF\uF900-\uFAFF]')


def pad_runs(line):
    return [m.group(0) for m in WS.finditer(line)
            if len(m.group(0)) >= 2 or m.group(0)[0] in '\u3000\t']


srcs = {}
order = []
for l in open('in/fix_000.jsonl', encoding='utf-8'):
    l = l.strip()
    if not l:
        continue
    r = json.loads(l)
    srcs[r['id']] = r['source']
    order.append(r['id'])

outs = {}
out_order = []
for l in open('out/fix_000.jsonl', encoding='utf-8'):
    l = l.strip()
    if not l:
        continue
    r = json.loads(l)
    outs[r['id']] = r['english']
    out_order.append(r['id'])

checks = Counter()
fails = []

if out_order != order:
    fails.append('id order mismatch: %s vs %s' % (order, out_order))
    checks['order'] += 1
else:
    checks['order_pass'] += 1

for i in order:
    s = srcs[i]
    e = outs.get(i)
    if e is None:
        fails.append('id %d: missing output' % i)
        checks['missing'] += 1
        continue

    def chk(name, ok, detail=''):
        checks[name + ('_pass' if ok else '_FAIL')] += 1
        if not ok:
            fails.append('id %d: %s %s' % (i, name, detail))

    s_toks, e_toks = TOK.findall(s), TOK.findall(e)
    chk('sentinels', s_toks == e_toks, 'src=%d out=%d %s / %s' % (len(s_toks), len(e_toks), s_toks, e_toks))
    chk('sentinel_multiset', Counter(s_toks) == Counter(e_toks))

    sl, el = TOK.split(s), TOK.split(e)
    chk('line_count', len(sl) == len(el), '%d vs %d' % (len(sl), len(el)))

    chk('color_codes', COLOR.findall(s) == COLOR.findall(e),
        '%s vs %s' % (COLOR.findall(s), COLOR.findall(e)))
    chk('color_multiset', Counter(COLOR.findall(s)) == Counter(COLOR.findall(e)))

    chk('placeholders', PH.findall(s) == PH.findall(e),
        '%s vs %s' % (PH.findall(s), PH.findall(e)))
    chk('placeholder_multiset', Counter(PH.findall(s)) == Counter(PH.findall(e)))

    chk('escapes', ESC.findall(s) == ESC.findall(e))
    chk('numbers', Counter(NUM.findall(s)) == Counter(NUM.findall(e)),
        '%s vs %s' % (Counter(NUM.findall(s)), Counter(NUM.findall(e))))

    bad = CJK.findall(e)
    chk('no_cjk', not bad, ''.join(sorted(set(bad))))

    chk('no_straight_quote', '"' not in e)
    chk('brackets', all(e.count(b) == s.count(b) for b in '\uff08\uff09\u3010\u3011\uff3b\uff3d'),
        '%s vs %s' % ({b: (s.count(b), e.count(b)) for b in '\uff08\uff09\u3010\u3011\uff3b\uff3d'
                       if s.count(b) or e.count(b)}, ''))
    chk('ascii_punct_clean', not re.search(r'[\u3001\u3002\uff01\uff1f\uff1b\uff1a\uff5c]', e))

    # padding runs, line by line
    if len(sl) == len(el):
        for j, (a, b) in enumerate(zip(sl, el)):
            chk('padding', pad_runs(a) == pad_runs(b),
                'line %d %r vs %r' % (j, pad_runs(a), pad_runs(b)))
    # formulas like 2000+100*level
    chk('formula', re.findall(r'\d[\d.]*[+*]\d[\d.]*', s) == re.findall(r'\d[\d.]*[+*]\d[\d.]*', e))

print('records: %d' % len(order))
for k in sorted(checks):
    print('  %-22s %d' % (k, checks[k]))
total = sum(v for k, v in checks.items() if k.endswith('_FAIL'))
passed = sum(v for k, v in checks.items() if k.endswith('_pass'))
print('CHECKS PASSED: %d' % passed)
print('CHECKS FAILED: %d' % total)
if fails:
    print('--- failures ---')
    for f in fails[:80]:
        print(' ', f)
else:
    print('ALL CHECKS PASSED')