"""Prove the narrowed placeholder definition cannot lose a real placeholder.

core.TOK reads "% d" / "% damage" as a placeholder because space is a printf
flag. finalize's per-span check therefore false-positives on any literal %
followed by an English word starting with s/d/f. The fix suppresses the
flag-only class (flags with no width or precision), which is unused in this
project - but that claim must be verified, not assumed.

This script does two things:

1. Counts every placeholder form in the tr2 source, split by class: bare
   (%d), width (%10d), precision (%.2f), positional (%1$s), colour (^rrggbb),
   amp (&%s&) and flag-only (%+d, % d, %-d) - the class the fix suppresses.

2. For every extracted span, compares the *real* placeholder sequence
   (everything except flag-only) between source and English, preserving
   reading order. Any span where they differ is a genuine defect the tightened
   check must still catch.

If (1) shows flag-only = 0 and (2) shows zero differing spans, the fix is
provably safe: it suppresses nothing the source uses, and every genuine
placeholder drop/add/swap is still detected.
"""

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import core
import mlspan

W = ROOT / ".work" / "tr2"
CURRENT = ROOT / "current"

# "Real" placeholders, in reading order. Alternation order matters: the
# positional and width forms are tried before bare %sdf so the longest match
# wins. Flag-only forms (% d, %+d, %-d) match NONE of these branches, which is
# exactly the suppression the fix performs.
REAL = re.compile(
    r"%\d+\$[sdf]"          # positional: %1$s
    r"|%[-+ #0]*\d+(?:\.\d+)?[sdf]"  # width (and optional flags/precision): %10d, %+5.2f
    r"|%\.\d+[sdf]"         # precision only: %.2f
    r"|%[sdf]"              # bare: %d %s %f
    r"|&%s&"                # amp form
    r"|\^[0-9A-Fa-f]{6}"    # colour code
)
FLAGONLY = re.compile(r"%[-+ #0]+[sdf]")  # flags, no width/precision


def real_tokens(s: str):
    """Placeholders that must survive translation, in reading order.

    %% is neutralised first: it is printf's literal-percent escape and
    consumes no argument, so it must not be mistaken for a placeholder.
    """
    return REAL.findall(s.replace("%%", "\x00"))


# ---- Part 1: class census over the tr2 source -------------------------------
counts = {k: 0 for k in ("bare", "width", "precision", "positional",
                         "colour", "amp", "flag-only")}
n_src = 0
for inf in sorted((W / "in").glob("batch_*.jsonl")):
    for line in inf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        s = r["source"]
        n_src += 1
        for m in REAL.finditer(s.replace("%%", "\x00")):
            tok = m.group(0)
            if tok.startswith("&"):
                counts["amp"] += 1
            elif tok.startswith("^"):
                counts["colour"] += 1
            elif "$" in tok:
                counts["positional"] += 1
            elif re.match(r"%[-+ #0]*\d", tok):
                counts["width"] += 1
            elif tok.startswith("%."):
                counts["precision"] += 1
            else:
                counts["bare"] += 1
        counts["flag-only"] += len(FLAGONLY.findall(s))

print("=" * 70)
print("PART 1: placeholder class census over %d tr2 source payloads" % n_src)
print("=" * 70)
for k in ("bare", "width", "precision", "positional", "colour", "amp"):
    print("  %-12s %d" % (k, counts[k]))
print("  %-12s %d   <- class the fix suppresses" % ("flag-only", counts["flag-only"]))
print()

# ---- Part 2: per-span real-placeholder sequence comparison -------------------
need = json.loads((W / "need.json").read_text(encoding="utf-8"))
sent_map = need["payloads"]
sent_to_orig = {v: k for k, v in sent_map.items()}


def curly(s):
    out, open_q = [], True
    for ch in s:
        if ch == '"':
            out.append("\u201c" if open_q else "\u201d")
            open_q = not open_q
        else:
            out.append(ch)
    return "".join(out)


trans_sent = {}
for bid in need["batch_order"]:
    pf = W / "out" / (bid + ".jsonl")
    if not pf.is_file():
        continue
    id2sent = {}
    for line in (W / "in" / (bid + ".jsonl")).read_text(encoding="utf-8").splitlines():
        if line.strip():
            r = json.loads(line)
            id2sent[r["id"]] = r["source"]
    for line in pf.read_text(encoding="utf-8").splitlines():
        if line.strip():
            r = json.loads(line)
            s = id2sent.get(r["id"])
            e = r.get("english", "")
            if s is not None and e:
                trans_sent[s] = e

trans = {}
for s, eng in trans_sent.items():
    orig = sent_to_orig.get(s)
    if orig is not None:
        trans[orig] = curly(mlspan.denormalize(eng))

allp = set()
for fpl in need["file_payloads"].values():
    allp.update(fpl)
fill = sorted(p for p in allp if p not in trans)
with core.Glossary() as g:
    found = g.lookup(fill)
for p in fill:
    if p in found:
        trans[p] = curly(found[p])

print("=" * 70)
print("PART 2: per-span real-placeholder sequence comparison")
print("=" * 70)
total_spans = differing = 0
examples = []
for fname in sorted(need["file_payloads"]):
    raw = (CURRENT / "configs" / fname).read_bytes()
    bom, codec = core.detect(raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec, errors="replace")
    segs = mlspan.extract_segments(text)
    for s, e in segs:
        p = text[s:e]
        t = trans.get(p)
        if t is None:
            continue
        total_spans += 1
        if real_tokens(p) != real_tokens(t):
            differing += 1
            if len(examples) < 10:
                examples.append((fname, p, t, real_tokens(p), real_tokens(t)))

print("  spans compared      : %d" % total_spans)
print("  spans with real-token difference: %d" % differing)
print()
for fname, p, t, rp, rt in examples:
    print("  %s" % fname)
    print("    SRC real tokens: %r" % rp)
    print("    DST real tokens: %r" % rt)
    print("    SRC: %r" % p[:110])
    print("    DST: %r" % t[:110])
    print()
print("done")
