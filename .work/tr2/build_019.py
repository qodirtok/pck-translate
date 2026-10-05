# -*- coding: utf-8 -*-
"""Compose batch_019 translations deterministically.

Layers (in order):
  1. exact manual dict (tr2_manual.json)      — full-source overrides
  2. exact resolved map (tmp_resolved.txt)    — established short-name renderings
  3. exact pairs map (tmp_pairs.json)         — prior-batch full-string pairs
  4. ASCII echo
  5. pattern rules (prefixes) + longest-first glossary/NAMES composition
  6. suffix middot handling (X·Y)
Anything still containing CJK is reported for manual dictionary extension.
"""
import json, re, sys, os

BASE = os.path.dirname(os.path.abspath(__file__))
IN = os.path.join(BASE, 'in', 'batch_019.jsonl')
OUTDIR = os.path.join(BASE, 'out')

# ---------- load inputs ----------
records = []
for line in open(IN, encoding='utf-8'):
    line = line.strip('\n')
    if line:
        records.append(json.loads(line))

resolved = {}  # source -> english
for line in open(os.path.join(BASE, 'tmp_resolved.txt'), encoding='utf-8'):
    line = line.rstrip('\n')
    if not line:
        continue
    sid, src, eng = line.split('\t')
    resolved[src] = eng

pairs = json.load(open(os.path.join(BASE, 'tmp_pairs.json'), encoding='utf-8'))

gloss = {}  # source -> english (term-like only)
for line in open(os.path.join(BASE, 'tmp_glossary_all.tsv'), encoding='utf-8'):
    line = line.rstrip('\n')
    if '|' not in line:
        continue
    src, eng = line.split('|', 1)
    if '<CRLF>' in src or '\n' in src or len(src) > 24:
        continue
    if not src.strip():
        continue
    gloss[src] = eng

# NAMES_LIST from repl_b.py
sys.path.insert(0, BASE)
import repl_b
names = dict(repl_b.NAMES_LIST)

manual = {}
mpath = os.path.join(BASE, 'tr2_manual.json')
if os.path.exists(mpath):
    manual = json.load(open(mpath, encoding='utf-8'))

# ---------- mined short names from pairs (first line of english for ^c3dbff-keyed entries) ----------
def strip_codes(s):
    s = re.sub(r'\^[0-9a-fA-F]{6}', '', s)
    return s

mined = {}
for k, v in pairs.items():
    if not k.startswith('^c3dbff'):
        continue
    first = k.split('<CRLF>')[0]
    first = strip_codes(first).strip()
    if not first or len(first) > 14 or re.search(r'[0-9]', first):
        continue
    vfirst = strip_codes(v.split('<CRLF>')[0]).strip()
    vfirst = vfirst.replace('“', '‘').replace('”', '’')
    if not vfirst or len(vfirst) > 60:
        continue
    if first not in mined:
        mined[first] = vfirst

# ---------- established combined map (longest first) ----------
established = {}
established.update(mined)
established.update(names)
established.update(gloss)
established.update(resolved)   # resolved has priority on conflict
established.update(manual.get('_terms', {}))
EST = sorted(established.items(), key=lambda kv: -len(kv[0]))

# ---------- suffix table ----------
SUFFIX = {
    '力': 'Power', '技': 'Technique', '强攻': 'Assault', '破': 'Break', '怒': 'Rage',
    '怒意': 'Rage', '军': 'Army', '御': 'Guard', '策': 'Strategy', '连': 'Chain',
    '连打': 'Combo Strike', '连击': 'Combo', '影': 'Shadow', '伤': 'Wound',
    '冥气': 'Nether Qi', '凝神': 'Focus', '击溃': 'Rout', '咒': 'Curse', '奋勇': 'Valor',
    '威慑': 'Intimidate', '威摄': 'Intimidate', '引爆': 'Detonate', '惊魂': 'Terror',
    '打断': 'Interrupt', '掠魂': 'Soul Devour', '散神': 'Spirit Disperse', '断魂': 'Soul Sever',
    '暴击': 'Crit', '狂猛': 'Ferocity', '眩晕': 'Stun', '破魂': 'Soul Break', '神罚': 'Divine Punishment',
    '离乱': 'Chaos', '离心': 'Dishearten', '落魄': 'Despair', '锋羽': 'Edge Feather',
    '飞将': 'Flying General', '刚': 'Fortitude', '烈': 'Fierce', '魅': 'Charm',
    '乱舞': 'Wild Dance', '舞': 'Dance', '辅': 'Support', '定身': 'Immobilize',
    '震慑': 'Terrify', '强化': 'Enhanced', '迟缓': 'Slow', '血咒': 'Blood Curse',
    '血沸': 'Boiling Blood', '撕裂': 'Rend', '裂甲': 'Armor Split', '断防': 'Defense Break',
    '慄心': 'Heart Shudder', '慑心': 'Heart Shudder', '崩乱': 'Upheaval', '冲刺': 'Rush',
    '黯灭': 'Dark Extinction', '流离': 'Drift', '懈怠': 'Lethargy', '易创': 'Vulnerable',
    '极速': 'Extreme Speed', '强化': 'Enhanced', '奇谋': 'Schemer', '激励': 'Encourage',
    '加强': 'Enhanced', '战斗': 'Battle', '磐石': 'Bedrock', '伏击': 'Ambush',
    '待伏': 'Ambush', '霸气': 'Dominance', '重创': 'Devastate', '衰弱': 'Weaken',
    '斩': 'Cleave', '神伤': 'Divine Wound', '追杀': 'Pursuit', '弱战': 'Weakened Combat',
}

# ---------- prefix / pattern rules ----------
PREFIX_RULES = [
    ('生成的', 'Generate '),
    ('生成', 'Generate '),
    ('物品_', 'Item_'), ('物品-', 'Item-'), ('道具_', 'Item_'), ('道具-', 'Item-'),
    ('特殊', 'Special-'), ('效果技能', 'Effect Skill'),
]

PLACEHOLDER_RX = re.compile(r'%\d*\$?[sd]|\^\w+|<CRLF>|level|\d+')

def compose_segment(seg):
    """Translate a Chinese segment via longest-first established lookup."""
    if not seg:
        return seg
    out = []
    i = 0
    n = len(seg)
    while i < n:
        matched = False
        for cn, en in EST:
            if seg.startswith(cn, i):
                out.append(en)
                i += len(cn)
                matched = True
                break
        if not matched:
            out.append(seg[i])
            i += 1
    return ''.join(out)

CJK_RX = re.compile(r'[\u3400-\u9fff\uf900-\ufaff]')

def has_cjk(s):
    return bool(CJK_RX.search(s))

def translate_source(src):
    # exact layers
    for table in (manual, resolved, pairs):
        if src in table:
            return table[src], 'exact'
    # ASCII echo
    if not has_cjk(src):
        return src, 'ascii'
    # multi-line entries must be handled exactly (manual) — do not compose
    if '<CRLF>' in src:
        return None, 'multiline-miss'
    # middot split
    if '·' in src:
        base, suf = src.rsplit('·', 1)
        be = compose_segment(base)
        se = SUFFIX.get(suf) or compose_segment(suf)
        return f'{be} · {se}', 'suffix'
    # '?' kept verbatim (sources where · was intended)
    if '?' in src:
        head, _, tail = src.partition('?')
        he = compose_segment(head)
        te = SUFFIX.get(tail) or compose_segment(tail)
        return f'{he}?{te}', 'qmark'
    # prefix rules
    s = src
    eng = None
    for cn, en in PREFIX_RULES:
        if s.startswith(cn):
            eng = en + compose_segment(s[len(cn):])
            break
    if eng is None:
        eng = compose_segment(s)
    return eng, 'compose'

# ---------- run ----------
WRITTEN = set()
for fn in ('batch_019_p01.jsonl', 'batch_019_p02.jsonl', 'batch_019_p03.jsonl', 'batch_019_ranks.jsonl'):
    p = os.path.join(OUTDIR, fn)
    if os.path.exists(p):
        for line in open(p, encoding='utf-8'):
            if line.strip():
                WRITTEN.add(json.loads(line)['id'])

leftovers = []
results = []
stats = {}
for r in records:
    rid, src = r['id'], r['source']
    if rid in WRITTEN:
        continue
    eng, how = translate_source(src)
    stats[how] = stats.get(how, 0) + 1
    if eng is None or has_cjk(eng):
        leftovers.append((rid, src, eng))
        continue
    results.append((rid, eng))

print('stats:', stats)
print('leftovers:', len(leftovers))
with open(os.path.join(BASE, 'tmp_leftover_report.txt'), 'w', encoding='utf-8') as f:
    for rid, src, eng in leftovers:
        f.write(f'{rid}\t{src!r}\t{eng!r}\n')

# emit part file for fully-resolved records
with open(os.path.join(OUTDIR, 'batch_019_gen.jsonl'), 'w', encoding='utf-8') as f:
    for rid, eng in sorted(results):
        f.write(json.dumps({'id': rid, 'english': eng}, ensure_ascii=False) + '\n')
print('emitted', len(results), '-> out/batch_019_gen.jsonl')
badq = [(rid, eng) for rid, eng in results if '"' in eng]
if badq:
    print('STRAIGHT QUOTES:', badq[:10])
