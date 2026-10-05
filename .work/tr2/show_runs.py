import json, re

TOK = re.compile(r'<CRLF>|<LF>|<CR>')
WS = re.compile(r'[ \t\u3000]+')
recs = [json.loads(l) for l in open('in/fix_000.jsonl') if l.strip()]
for r in recs:
    lines = TOK.split(r['source'])
    print('=== id', r['id'])
    for i, ln in enumerate(lines):
        runs = WS.findall(ln)
        if runs:
            desc = ['[%d]' % len(x) for x in runs]
            print('  [%d] runs=%d %s  ctx=%r' % (i, len(runs), ' '.join(desc), ln[:40]))