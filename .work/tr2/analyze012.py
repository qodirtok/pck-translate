import json, pickle
gloss = pickle.load(open('/tmp/gloss_lines.pkl','rb'))

with open('in/batch_012.jsonl', encoding='utf-8') as f:
    recs = [json.loads(l) for l in f if l.strip()]

out = []
amb = {}
for r in recs:
    for sl in r['source'].split('<CRLF>'):
        if sl in gloss and len(gloss[sl]) > 1:
            amb.setdefault(sl, set()).update(gloss[sl])
out.append('AMBIGUOUS lines (multiple prior variants): %d' % len(amb))
for sl, variants in sorted(amb.items()):
    out.append('SRC: %r' % sl)
    for v in sorted(variants):
        out.append('   -> %r' % v)

open('/tmp/amb012.txt','w').write('\n'.join(out))
print('wrote', len(out), 'lines to /tmp/amb012.txt')
