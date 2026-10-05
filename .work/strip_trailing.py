"""Strip trailing whitespace the workers added where the source has none.

The source lines end with a full-width comma (，) and no trailing whitespace.
The workers rendered that as ", " and let the space fall at end-of-line, so 116
lines per file gained trailing whitespace the source never had. audit.py counts
that as tws_mismatch because trailing-whitespace PRESENCE flipped.

The source text is NOT in the worker output: out/batch_NNN.jsonl holds only
{"id", "english"}, and the payload each id refers to lives in
in/batch_NNN.jsonl. Pairing them by id is how finalize.py does it, and it is
the only way to compare against the real source line.

The rule is deliberately narrow: a line is only touched when its own source
line carries no trailing whitespace at all. Padding runs are column layout and
were already restored positionally by restore_padding / repair_padding /
fix_padruns, so a source line that legitimately ends in U+3000 is left exactly
as those passes shaped it. Stripping every line would undo that work.

Nothing but trailing whitespace moves: colour codes, placeholders, numbers and
the line-break sentinel count are re-checked per record before anything is
written, and the writer refuses to persist a record whose id it cannot find.
"""

import importlib.util
import json
import re
import sys
from pathlib import Path

_spec_io = importlib.util.spec_from_file_location(
    "rp_io", str(Path(__file__).with_name("rp_io.py")))
rp_io = importlib.util.module_from_spec(_spec_io)
_spec_io.loader.exec_module(rp_io)

W = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
apply_changes = "--apply" in sys.argv

COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
PH = re.compile(r"%(?:\d+\$)?(?:\.\d+)?[sdfx%]|\*level")
NUM = re.compile(r"\d+(?:\.\d+)?")
CJK = re.compile(r"[\u4e00-\u9fff\u3400-\u4dbf]")


def digit_list(t):
    return sorted(NUM.findall(COLOR.sub("", t)))


def strip_record(src, eng):
    """Strip trailing whitespace from lines whose source line has none."""
    sl, el = src.split("<CRLF>"), eng.split("<CRLF>")
    if len(sl) != len(el):
        return None
    out, n = [], 0
    for a, c in zip(sl, el):
        if a == a.rstrip() and c != c.rstrip():
            new = c.rstrip()
            if new != c:
                n += 1
            out.append(new)
        else:
            out.append(c)
    return "<CRLF>".join(out), n


updates, failed, viol = {}, [], []
n_scanned = 0

for pf in sorted((W / "out").glob("batch_*.jsonl")):
    if pf.name.startswith("fix_"):
        continue
    batch = pf.stem
    inp = W / "in" / (batch + ".jsonl")
    if not inp.is_file():
        failed.append((batch, "-", "missing input file"))
        continue
    id2src = {}
    for line in inp.read_text(encoding="utf-8").splitlines():
        if line.strip():
            r = json.loads(line)
            id2src[r["id"]] = r["source"]
    for line in pf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        eng = r.get("english", "")
        src = id2src.get(r["id"])
        if src is None:
            failed.append((batch, r["id"], "no source for id"))
            continue
        if not eng:
            continue
        n_scanned += 1
        res = strip_record(src, eng)
        if res is None:
            failed.append((batch, r["id"], "line count differs"))
            continue
        new, n = res
        if new == eng:
            continue
        # invariants: nothing but trailing whitespace may move
        if src.count("<CRLF>") != new.count("<CRLF>"):
            viol.append((batch, r["id"], "line count changed"))
            continue
        if sorted(COLOR.findall(new)) != sorted(COLOR.findall(eng)):
            viol.append((batch, r["id"], "colour codes changed"))
            continue
        if sorted(PH.findall(new)) != sorted(PH.findall(eng)):
            viol.append((batch, r["id"], "placeholders changed"))
            continue
        if digit_list(new) != digit_list(eng):
            viol.append((batch, r["id"], "numeric values changed"))
            continue
        if CJK.search(new):
            viol.append((batch, r["id"], "residual CJK"))
            continue
        updates[(batch, r["id"])] = new

print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
print("records scanned: %d" % n_scanned)
print("records to strip: %d" % len(updates))
print("unalignable: %d" % len(failed))
for f in failed[:10]:
    print("   ", f)
print("violations: %d" % len(viol))
for v in viol[:10]:
    print("   ", v)

if apply_changes and not (failed or viol):
    files, written = rp_io.write_updates(W, updates)
    print("written: %d files, %d records" % (files, written))
elif apply_changes:
    print("ABORTED: nothing written")
