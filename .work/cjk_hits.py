"""Show exactly which lines finalize's audit is failing on cjk_remaining for.

finalize wrote its staging file to Translate/.staging/configs/<f> even on a
dry-run (promotion is the only skipped step), so the file the audit actually
scored is still on disk. This reads that file, finds every line where
has_cjk_in_spans is true, and prints the source line beside it.

For each hit it also answers the question that decides disposition: was the
CJK on that line part of a payload the extractor extracted? If yes, the
rebuild should have replaced it and the gap is real. If no, the auditor's
per-line TXT_QUOTED span model is flagging a region the whole-text extractor
never treated as translatable, which is a scope disagreement.
"""

import importlib.util
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
import core
import mlspan
import audit as audit_mod

W = ROOT / ".work" / "tr2"
STAGING = ROOT / "Translate" / ".staging" / "configs"

need = json.loads((W / "need.json").read_text(encoding="utf-8"))
# every payload build.py ever extracted, per file
all_extracted = set()
for fpl in need["file_payloads"].values():
    all_extracted.update(fpl)

fname = sys.argv[1] if len(sys.argv) > 1 else "skillstr.txt"
staged = STAGING / fname
src = ROOT / "current" / "configs" / fname

if not staged.is_file():
    print("staging file missing: %s" % staged)
    sys.exit(1)

_bs, _es, _eols, sl, _cs = core.read_text(src)
_bd, _ed, _eold, dl, _cd = core.read_text(staged)
fmt = core.guess_format(staged, dl)

print("file=%s  fmt=%s  src_lines=%d  dst_lines=%d"
      % (fname, fmt, len(sl), len(dl)))

hits = []
for i, b in enumerate(dl):
    if audit_mod.has_cjk_in_spans(b, fmt):
        hits.append(i)

print("lines where has_cjk_in_spans(dst, fmt) is true: %d" % len(hits))
print()

# For each hit, decide whether the CJK sits inside an extracted-and-translated
# payload or in a region the extractor never claimed.
CJK_SPANS = []
for i in hits:
    a = sl[i] if i < len(sl) else ""
    b = dl[i]
    # which translatable spans does the auditor see on this dest line?
    spans = audit_mod.translatable_spans(b, fmt)
    flagged = [(s, e, b[s:e]) for s, e in spans if core.count_cjk(b[s:e])]
    # is the dest line's CJK text itself something the extractor extracted
    # from the source? compare against the payload set
    cjk_texts = [t for _s, _e, t in flagged]
    in_payloads = [t for t in cjk_texts if t in all_extracted]
    print("L%-6d dest_spans_with_cjk=%d" % (i, len(flagged)))
    print("   SRC: %s" % a[:104])
    print("   DST: %s" % b[:104])
    print("   cjk span texts: %r" % cjk_texts[:4])
    print("   of which were extracted payloads: %r" % in_payloads[:4])
    print()
