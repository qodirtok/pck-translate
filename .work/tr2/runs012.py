import json, re

PADRUN = re.compile(r'[ \t\u3000]+')

def sig_runs(line):
    """Padding runs: contain U+3000, or pure ASCII run of length >= 2."""
    out = []
    for r in PADRUN.findall(line):
        if '\u3000' in r or len(r) >= 2:
            out.append(r)
    return out

with open('in/batch_012.jsonl', encoding='utf-8') as f:
    recs = [json.loads(l) for l in f if l.strip()]

lines = []
for r in recs:
    src = r['source']
    trailing = src.endswith(' ') or src.endswith('\u3000')
    segs = src.split('<CRLF>')
    lines.append('=== id %d  (lines=%d, trailing_space=%s, len=%d)' % (r['id'], len(segs), trailing, len(src)))
    for i, seg in enumerate(segs):
        sr = sig_runs(seg)
        if sr:
            lines.append('  L%-2d SIG=%s | %r' % (i, [('%dU' % x.count('\u3000')) + (('+%dS' % (len(x)-x.count('\u3000'))) if len(x)-x.count('\u3000') else '') for x in sr], seg))

open('/tmp/runs012.txt', 'w').write('\n'.join(lines))
print('wrote', len(lines))
