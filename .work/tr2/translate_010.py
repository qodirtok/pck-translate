# -*- coding: utf-8 -*-
import json, re, sys
sys.path.insert(0, '/Users/zlns/personal-www/pck-translate/.work/tr2')
from repl_a import SEG
from repl_b import NAMES, RX, PUNCT

IN = '/Users/zlns/personal-www/pck-translate/.work/tr2/in/batch_010.jsonl'
OUT = '/Users/zlns/personal-www/pck-translate/.work/tr2/out/batch_010.jsonl'

CJK = re.compile(r'[\u4e00-\u9fff\u3040-\u30ff\u3400-\u4dbf\uff00-\uffef\u3001-\u303f]')
COLOR = re.compile(r'\^[0-9a-fA-F]{6}')
SPLIT = re.compile(r'(<CRLF>|<LF>|<CR>)')

def translate(src):
    parts = SPLIT.split(src)
    out = []
    for i, seg in enumerate(parts):
        if i % 2 == 1:  # sentinel
            out.append(seg)
            continue
        t = SEG.get(seg, seg)
        if t == seg:  # not in SEG -> apply NAMES + RX
            for a, b in NAMES:
                t = t.replace(a, b)
            # protect color codes from RX (e.g. [a-z]\d rule would split ^c3dbff)
            colors = []
            def _stash(m):
                colors.append(m.group(0))
                return '\x00%d\x00' % (len(colors) - 1)
            t = COLOR.sub(_stash, t)
            for rx, rep in RX:
                t = rx.sub(rep, t)
            t = re.sub(r'\x00(\d+)\x00', lambda m: colors[int(m.group(1))], t)
        out.append(t)
    t = ''.join(out)
    for a, b in PUNCT:
        t = t.replace(a, b)
    t = re.sub(r' +<CRLF>', '<CRLF>', t)
    t = re.sub(r' +<LF>', '<LF>', t)
    t = re.sub(r' +<CR>', '<CR>', t)
    t = t.rstrip(' ')
    if src.endswith(' '):
        t += ' '
    return t

def main():
    recs = []
    with open(IN, encoding='utf-8') as f:
        for line in f:
            line = line.strip('\n')
            if line.strip():
                recs.append(json.loads(line))
    problems = []
    out_recs = []
    for rec in recs:
        src = rec['source']
        eng = translate(src)
        out_recs.append({'id': rec['id'], 'english': eng})
        pid = rec['id']
        if src.count('<CRLF>') != eng.count('<CRLF>'):
            problems.append((pid, 'CRLF', src.count('<CRLF>'), eng.count('<CRLF>')))
        if src.count('\u3000') != eng.count('\u3000'):
            problems.append((pid, 'U+3000', src.count('\u3000'), eng.count('\u3000')))
        if src.count('%%') != eng.count('%%'):
            problems.append((pid, '%%', src.count('%%'), eng.count('%%')))
        if src.count('%d') != eng.count('%d'):
            problems.append((pid, '%d', src.count('%d'), eng.count('%d')))
        if src.count('%.1f') != eng.count('%.1f'):
            problems.append((pid, '%.1f', src.count('%.1f'), eng.count('%.1f')))
        if sorted(COLOR.findall(src)) != sorted(COLOR.findall(eng)):
            problems.append((pid, 'color', COLOR.findall(src), COLOR.findall(eng)))
        if '"' in eng:
            problems.append((pid, 'straight-quote'))
        left = CJK.findall(eng)
        if left:
            problems.append((pid, 'CJK-left', ''.join(sorted(set(left)))))
    with open(OUT, 'w', encoding='utf-8') as f:
        for r in out_recs:
            f.write(json.dumps(r, ensure_ascii=False) + '\n')
    print('records:', len(recs), 'written:', len(out_recs))
    print('problems:', len(problems))
    for p in problems:
        print(p)

if __name__ == '__main__':
    main()
