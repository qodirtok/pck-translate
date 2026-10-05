import json, re, glob

# Load all prior in/out pairs
pairs = []
for b in ['000','001','002','003','004','005','006','007','008a','008b','009','010','011']:
    srcs = {}
    try:
        with open('in/batch_%s.jsonl' % b, encoding='utf-8') as f:
            for line in f:
                line=line.strip()
                if not line: continue
                try:
                    r = json.loads(line); srcs[r['id']] = r['source']
                except Exception: pass
        with open('out/batch_%s.jsonl' % b, encoding='utf-8') as f:
            for line in f:
                line=line.strip()
                if not line: continue
                try: r = json.loads(line)
                except Exception: continue
                s = srcs.get(r.get('id'))
                if s and 'english' in r:
                    pairs.append((b, r['id'], s, r['english']))
    except FileNotFoundError: pass

# Collect all skill-name translations: source lines starting with ^c3dbff (skill title lines)
name_map = {}  # chinese name -> set of english renderings
for b, i, s, e in pairs:
    for sl, el in zip(s.split('<CRLF>'), e.split('<CRLF>')):
        if sl.startswith('^c3dbff'):
            # strip color prefix and any trailing color code
            cn = re.sub(r'\^[0-9a-fA-F]{6}', '', sl).strip()
            en = re.sub(r'\^[0-9a-fA-F]{6}', '', el).strip()
            if cn and not any('一' <= ch <= '鿿' for ch in en):  # english has no CJK
                name_map.setdefault(cn, set()).add(en)

# Skill names used in batch_012
with open('in/batch_012.jsonl', encoding='utf-8') as f:
    recs = [json.loads(l) for l in f if l.strip()]

out = []
seen = set()
for r in recs:
    first = r['source'].split('<CRLF>')[0]
    cn = re.sub(r'\^[0-9a-fA-F]{6}', '', first).strip()
    if cn in seen: continue
    seen.add(cn)
    variants = name_map.get(cn)
    out.append('%s  |  prior: %s' % (cn, ' ;; '.join(sorted(variants)) if variants else 'NONE'))

open('/tmp/names012.txt','w').write('\n'.join(out))
print('wrote', len(out), 'names')
