#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Precise per-record diff between source and draft for flagged records."""
import json, re, os, sys

BASE = '/Users/zlns/personal-www/pck-translate/.work/tr2'

# exec the draft list from the build script (stop before the validator part)
src_py = open(os.path.join(BASE, 'build_batch_004.py'), encoding='utf-8').read()
cut = src_py.index('# ---------- load sources ----------')
ns = {}
exec(src_py[:cut], ns)
p = ns['p']

src = {}
with open(os.path.join(BASE, 'in', 'batch_004.jsonl'), encoding='utf-8') as f:
    for line in f:
        line = line.rstrip('\n')
        if line.strip():
            rec = json.loads(line)
            src[rec['id']] = rec['source']

# fixed tokens(): batch_003 proven regex + bare digits (order-sensitive)
def tokens(s):
    return re.findall(r'\^[0-9A-Fa-f]{6}|%[0-9\.]*[sdf%%]|<CRLF>|<LF>|<CR>|\\r|\\n|\d+', s)

def u3000_runs(s):
    return [len(m.group(0)) for m in re.finditer('\u3000+', s)]

def ascii_runs(s):
    return [len(m.group(0)) for m in re.finditer(' {2,}', s)]

for pid, eng in p:
    s = src[pid]
    problems = []
    if u3000_runs(s) != u3000_runs(eng):
        problems.append('U3000 src=%s out=%s' % (u3000_runs(s), u3000_runs(eng)))
    if ascii_runs(s) != ascii_runs(eng):
        problems.append('ASCII src=%s out=%s' % (ascii_runs(s), ascii_runs(eng)))
    ts, te = tokens(s), tokens(eng)
    if ts != te:
        problems.append('TOKENS')
    if len(s.split('<CRLF>')) != len(eng.split('<CRLF>')):
        problems.append('SEGMENTS %d->%d' % (len(s.split('<CRLF>')), len(eng.split('<CRLF>'))))
    if '<LF>' in eng or '<CR>' in eng:
        problems.append('BAD-SENTINEL')
    for i, (a, b) in enumerate(zip(s.split('<CRLF>'), eng.split('<CRLF>'))):
        if (a != a.rstrip()) != (b != b.rstrip()):
            problems.append('TWS seg%d src=%r out=%r' % (i, a[-12:], b[-12:]))
    if '"' in eng:
        problems.append('STRAIGHT-QUOTE')
    if re.search(r'[\u4e00-\u9fff]', eng):
        problems.append('CJK-LEFT')
    if problems:
        print('=' * 12, 'ID', pid, '=' * 12)
        for pr in problems:
            print('  !', pr)
        if 'TOKENS' in problems:
            print('  src tok:', ts)
            print('  eng tok:', te)
        if any(pr.startswith('SEGMENTS') for pr in problems):
            ss = s.split('<CRLF>')
            ee = eng.split('<CRLF>')
            print('  --- segments ---')
            for i in range(max(len(ss), len(ee))):
                a = ss[i] if i < len(ss) else '<MISSING>'
                b = ee[i] if i < len(ee) else '<MISSING>'
                print('   %2d S|%s' % (i, a))
                print('      E|%s' % b)
        print()
