"""List every record whose U+3000 / multi-space runs differ from the source."""
import importlib.util
import re
from pathlib import Path

W = Path(".work/tr2")
PAD = re.compile("\u3000+|[ ]{2,}")
_spec = importlib.util.spec_from_file_location("nl", str(W.parent / "normalize_labels.py"))
nl = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(nl)


def pads(t):
    return [m.group(0) for m in PAD.finditer(t)]


def show(t):
    return t.replace("\u3000", "U").replace(" ", ".")


found = []
for b, r, src in nl.iter_records(W):
    e = r.get("english", "")
    if pads(src) != pads(e):
        found.append((b, r["id"], src, e))

print("records with padding-run mismatch:", len(found))
print()
for b, i, src, e in found:
    print("=" * 72)
    print("%s / %d" % (b, i))
    sl, el = src.split("<CRLF>"), e.split("<CRLF>")
    for k, (a, c) in enumerate(zip(sl, el)):
        pa, pb = pads(a), pads(c)
        if pa == pb:
            continue
        print("  L%-2d pads src=%d dst=%d" % (k, len(pa), len(pb)))
        print("    SRC: %s" % show(a))
        print("    DST: %s" % show(c))
        print("    src pads: %s" % [show(p) for p in pa])
        print("    dst pads: %s" % [show(p) for p in pb])
    print()
