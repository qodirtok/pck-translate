"""Dump the exact lines finalize's audit is failing on, so each class can be
classified as a real defect or a per-line artifact.

finalize audits the REBUILT FILE line-by-line. That is stricter than the
payload-level checks in verify_tr2.py, because a multi-line payload may
legitimately move a placeholder or a number from one physical line to another
while still preserving the payload as a whole. This script reproduces the
audit's per-line comparison and prints the offending pairs so the difference
is visible instead of guessed at.
"""

import importlib.util
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
STAGING = W / "audit_probe"

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

CJK = re.compile(r"[\u4e00-\u9fff\u3400-\u4dbf]")
PH = re.compile(r"%(?:\d+\$)?(?:\.\d+)?[sdfx%]|\*level")

LIMIT = int(sys.argv[1]) if len(sys.argv) > 1 else 4

for fname in need["file_payloads"]:
    src = CURRENT / "configs" / fname
    text, bom, codec = core.detect(src.read_bytes()), None, None
    raw = src.read_bytes()
    bom, codec = core.detect(raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec, errors="replace")
    segs = mlspan.extract_segments(text)
    trans_map = {text[s:e]: trans[text[s:e]] for s, e in segs if text[s:e] in trans}
    new_text, _ = mlspan.rebuild(text, segs, trans_map)

    STAGING.mkdir(parents=True, exist_ok=True)
    staged = STAGING / fname
    staged.write_bytes(bom + new_text.encode(codec, errors="replace"))

    _bs, _es, _eols, s_lines, _cs = core.read_text(src)
    _bd, _ed, _eold, d_lines, _cd = core.read_text(staged)

    print("=" * 72)
    print(fname)
    print("  src lines=%d  dst lines=%d  translated spans=%d"
          % (len(s_lines), len(d_lines), len(trans_map)))

    # --- placeholder: per line, and payload-wide for comparison ---
    ph_line = [(i, a, b) for i, (a, b) in enumerate(zip(s_lines, d_lines))
               if sorted(PH.findall(a)) != sorted(PH.findall(b))]
    print("  per-line placeholder mismatches: %d" % len(ph_line))
    shown = 0
    for i, a, b in ph_line:
        # payload-wide check: does this line's payload carry the same set?
        print("    L%-6d SRC: %s" % (i, a[:110]))
        print("           DST: %s" % b[:110])
        shown += 1
        if shown >= LIMIT:
            break

    # --- CJK remaining: which dest lines still have CJK, and are they
    #     inside a translated span or in a span we never touched? ---
    cjk_lines = [i for i, b in enumerate(d_lines) if CJK.search(b)]
    print("  dest lines still carrying CJK: %d" % len(cjk_lines))
    shown = 0
    for i in cjk_lines:
        print("    L%-6d DST: %s" % (i, d_lines[i][:110]))
        shown += 1
        if shown >= LIMIT:
            break

    # --- trailing whitespace ---
    tws = [(i, a, b) for i, (a, b) in enumerate(zip(s_lines, d_lines))
           if a.rstrip(" \t") != a or b.rstrip(" \t") != b]
    tws_bad = [(i, a, b) for i, a, b in tws if a != b and a.rstrip(" \t") == b.rstrip(" \t")]
    print("  trailing-whitespace-only diffs: %d" % len(tws_bad))
    shown = 0
    for i, a, b in tws_bad:
        print("    L%-6d SRC: %r" % (i, a[-40:]))
        print("           DST: %r" % b[-40:])
        shown += 1
        if shown >= LIMIT:
            break
