import json
import re
TOK = re.compile(r'<CRLF>|<LF>|<CR>')
srcs = {}
for l in open('in/fix_000.jsonl', encoding='utf-8'):
    r = json.loads(l)
    srcs[r['id']] = r['source']
outs = {}
for l in open('out/fix_000.jsonl', encoding='utf-8'):
    r = json.loads(l)
    outs[r['id']] = r['english']
for i in range(1, 32):
    print('=' * 78)
    print('ID %d' % i)
    sl = TOK.split(srcs[i])
    el = TOK.split(outs[i])
    for j in range(max(len(sl), len(el))):
        a = sl[j] if j < len(sl) else '<MISSING>'
        b = el[j] if j < len(el) else '<MISSING>'
        mark = '   ' if (j < len(sl) and j < len(el)) else '!!!'
        print('%s S| %s' % (mark, a))
        print('%s E| %s' % (mark, b))