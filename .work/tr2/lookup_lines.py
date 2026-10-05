import json, re, sys
pairs = json.load(open('tmp_pairs_fix.json'))
terms = sys.argv[1:]
for t in terms:
    print('#####', t)
    seen = set()
    n = 0
    for s, e in pairs:
        sl = s.split('<CRLF>')
        el = e.split('<CRLF>')
        if len(sl) != len(el):
            continue
        for a, b in zip(sl, el):
            if t in a:
                key = (a.strip(), b.strip())
                if key in seen:
                    continue
                seen.add(key)
                print('  S: %s' % a)
                print('  E: %s' % b)
                n += 1
                break
        if n >= 12:
            break