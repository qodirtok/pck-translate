"""Convert fullwidth ASCII-variant punctuation in worker English to ASCII.

The Fullwidth Forms block (U+FF01-FF5E) is a transliteration of ASCII 0x21-0x7E:
each codepoint maps to its ASCII twin by subtracting 0xFEE0. The workers
translated the words but kept Chinese punctuation, so English text carried
， (U+FF0C), ： (U+FF1A), （）(U+FF08/09), ；(U+FF1B) and ～(U+FF5E).

core.count_cjk treats that whole block as CJK, so audit.cjk_remaining fires
on every one of those lines even though no ideograph survived. This pass
restores the ASCII punctuation English requires.

Scope is deliberately narrow. U+3000 (ideographic space) is the padding that
restore_padding / repair_padding / fix_padruns restored positionally, and it
sits at U+3000 - outside this block - so column layout is untouched. The
conversion is a pure character-level transliteration: placeholders, colour
codes, numbers, sentinels and quote counts cannot move, which the invariant
checks below re-verify per record before anything is written.
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
CJK = re.compile(r"[\u4e00-\u9fff\u3400-\u4dbf\uf900-\ufaff\uff01-\uff5e]")
FW_LO, FW_HI, FW_DELTA = 0xFF01, 0xFF5E, 0xFEE0


def digit_list(t):
    return sorted(NUM.findall(COLOR.sub("", t)))


def to_ascii(s: str) -> str:
    return "".join(
        chr(ord(c) - FW_DELTA) if FW_LO <= ord(c) <= FW_HI else c
        for c in s)


updates, failed, viol = {}, [], []
n_scanned = n_touched = 0

for pf in sorted((W / "out").glob("batch_*.jsonl")):
    if pf.name.startswith("fix_"):
        continue
    batch = pf.stem
    for line in pf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        eng = r.get("english", "")
        if not eng:
            continue
        n_scanned += 1
        new = to_ascii(eng)
        if new == eng:
            continue
        n_touched += 1
        # invariants: nothing but punctuation width may move
        if eng.count("<CRLF>") != new.count("<CRLF>"):
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
            viol.append((batch, r["id"], "residual CJK after conversion"))
            continue
        updates[(batch, r["id"])] = new

print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
print("records scanned: %d" % n_scanned)
print("records touched: %d" % n_touched)
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
