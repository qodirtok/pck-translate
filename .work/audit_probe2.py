"""Classify the two audit failures that are NOT explained by line-wrapping.

1. cjk_remaining - the auditor counts CJK inside spans it considers
   translatable (has_cjk_in_spans). For each such destination line, print the
   source line, the destination line, and whether that line's span was ever
   handed to a worker. If a line was never extracted it is out of scope and
   the auditor's TXT span heuristic is simply broader than our extractor; if it
   WAS extracted, the translation genuinely kept Chinese.

2. tws_mismatch - audit.py flags a line when trailing whitespace PRESENCE
   flips (tws_a != tws_b), not when whitespace content differs. Find those
   lines and show the tails so the drift is visible.
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
import audit as audit_mod

W = ROOT / ".work" / "tr2"
CURRENT = ROOT / "current"
STAGING = W / "audit_probe2"

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

STAGING.mkdir(parents=True, exist_ok=True)

for fname in need["file_payloads"]:
    src = CURRENT / "configs" / fname
    raw = src.read_bytes()
    bom, codec = core.detect(raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec, errors="replace")
    segs = mlspan.extract_segments(text)
    trans_map = {text[s:e]: trans[text[s:e]] for s, e in segs if text[s:e] in trans}
    new_text, _ = mlspan.rebuild(text, segs, trans_map)
    staged = STAGING / fname
    staged.write_bytes(bom + new_text.encode(codec, errors="replace"))

    _bs, _es, _eols, sl, _cs = core.read_text(src)
    _bd, _ed, _eold, dl, _cd = core.read_text(staged)
    fmt = core.guess_format(staged, dl)

    # every payload the workers were ever asked to translate
    extracted_payloads = set(text[s:e] for s, e in segs)

    print("=" * 72)
    print("%s   (fmt=%s)" % (fname, fmt))

    # ---- CJK inside auditor-deemed translatable spans ----
    print("  --- CJK inside translatable spans ---")
    n_cjk = 0
    never_extracted = 0
    for i, b in enumerate(dl):
        if not audit_mod.has_cjk_in_spans(b, fmt):
            continue
        n_cjk += 1
        a = sl[i] if i < len(sl) else ""
        # was the CJK on this destination line ever part of an extracted span?
        was_extracted = any(p in extracted_payloads and CJK.search(p)
                            for p in (a,))
        if not was_extracted:
            never_extracted += 1
        if n_cjk <= 8:
            print("    L%-6d extracted=%s" % (i, was_extracted))
            print("      SRC: %s" % a[:100])
            print("      DST: %s" % b[:100])
    print("    total CJK-span lines: %d   of which source span was never "
          "extracted: %d" % (n_cjk, never_extracted))

    # ---- trailing whitespace presence flip ----
    print("  --- trailing-whitespace presence flips ---")
    n_tws = 0
    for i, (a, b) in enumerate(zip(sl, dl)):
        tws_a = a != a.rstrip()
        tws_b = b != b.rstrip()
        if tws_a == tws_b:
            continue
        n_tws += 1
        if n_tws <= 8:
            print("    L%-6d src_tws=%s dst_tws=%s" % (i, tws_a, tws_b))
            print("      SRC tail: %r" % a[-46:])
            print("      DST tail: %r" % b[-46:])
    print("    total tws presence flips: %d" % n_tws)
