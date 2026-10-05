"""Restore the two pad runs a worker dropped entirely.

restore_padding.py and repair_padding.py both handle the case where the
destination still HAS the padding runs but re-typed them. These two records are
different: the destination merged the source's pre-pad and post-pad text with
plain single spaces, so the run is simply gone and the token counts no longer
match, which is why every other pass refuses to guess.

The source is authoritative for layout, so the run is put back. The only open
question is WHERE, and in both cases the source's own text answers it:

  * If the source's post-pad text begins with a number, that number appears in
    the destination at the corresponding spot, and the run belongs in front of
    it. (`9%%的生命值` -> `9%% HP.`)
  * If it begins with a label carrying a colon, the destination's equivalent
    label carries an ASCII colon, and the run belongs in front of that word.
    (`冷却时间：1秒` -> `Cool-down: 1 sec`)

Nothing is guessed: a record is only written if the rebuilt line's padding then
matches the source exactly and no colour code, placeholder, number or line
changed.
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

COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
PH = re.compile(r"%(?:\d+\$)?(?:\.\d+)?[sdfx%]|\*level")
NUM = re.compile(r"\d+(?:\.\d+)?")
PAD = re.compile("\u3000+|[ ]{2,}")
CJK = re.compile(r"[\u4e00-\u9fff\u3400-\u4dbf]")
MARK = "\uE000"


def pads(t):
    return [m.group(0) for m in PAD.finditer(t)]


def digit_list(t):
    return sorted(NUM.findall(COLOR.sub("", t)))


def split_payload(t):
    """-> (lines_before_first_pad, ...) keep it simple: split on <CRLF>."""
    return t.split("<CRLF>")


def find_insert(dst_line, post_text):
    """Return the index in dst_line where the source's pad run belongs."""
    m = re.match(r"(\d+(?:\.\d+)?)(%%?)?", post_text)
    if m:
        # The source's value starts with a number; the destination carries the
        # same number, possibly with its %% escape, at the matching position.
        probe = m.group(0)
        i = dst_line.find(probe)
        if i != -1:
            return i
    if "\uff1a" in post_text or ":" in post_text:
        # The source's value is a label ending in a colon. Walk the destination
        # whitespace-delimited words and stop at the first one that carries an
        # ASCII colon, which is how the label was translated.
        for wm in re.finditer(r"\S+", dst_line):
            if ":" in wm.group(0):
                return wm.start()
    return -1


def repair_line(sline, eline):
    """Put the source's dropped pad run back into eline.

    Returns the line unchanged when this pass has nothing to do, and None only
    when the line really does carry a dropped run that cannot be located - the
    caller must tell those apart, or an untouched line would fail the record.
    """
    sp = pads(sline)
    if not sp:
        return eline
    if pads(eline) == sp:
        return eline
    if len(sp) != 1 or pads(eline):
        return None
    pad = sp[0]

    # Locate the pad in the source so we know which text sits after it.
    m = PAD.search(sline)
    post = sline[m.end():]
    idx = find_insert(eline, post)
    if idx == -1:
        return None
    # The destination already separates these words with a plain space, so the
    # run must replace that space rather than stack onto it - otherwise the two
    # merge into one longer run and the layout still does not match.
    j = idx
    while j > 0 and eline[j - 1] in " \t":
        j -= 1
    return eline[:j] + pad + eline[idx:]


def repair(src, eng):
    """-> (new_eng, n_lines_changed) or (None, 0)."""
    sl, el = split_payload(src), split_payload(eng)
    if len(sl) != len(el):
        return None, 0
    out, n = [], 0
    for a, c in zip(sl, el):
        fixed = repair_line(a, c)
        if fixed is None:
            return None, 0
        if fixed != c:
            n += 1
        out.append(fixed)
    return "<CRLF>".join(out), n


def main():
    wd = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
    apply_changes = "--apply" in sys.argv

    _spec = importlib.util.spec_from_file_location(
        "nl", str(wd.parent / "normalize_labels.py"))
    nl = importlib.util.module_from_spec(_spec)
    _spec.loader.exec_module(nl)

    WANT = {("batch_001", 114), ("batch_002", 64)}
    updates, failed, viol = {}, [], []

    for b, r, src in nl.iter_records(wd):
        if (b, r["id"]) not in WANT:
            continue
        cur = r.get("english", "")
        new, n = repair(src, cur)
        if new is None:
            failed.append((b, r["id"], "no insert point found"))
            continue
        if new == cur:
            failed.append((b, r["id"], "no change needed"))
            continue
        if pads(new) != pads(src):
            viol.append((b, r["id"], "padding still differs",
                         pads(new), pads(src)))
            continue
        if sorted(COLOR.findall(new)) != sorted(COLOR.findall(cur)):
            viol.append((b, r["id"], "colour codes changed"))
            continue
        if sorted(PH.findall(new)) != sorted(PH.findall(cur)):
            viol.append((b, r["id"], "placeholders changed"))
            continue
        if digit_list(new) != digit_list(cur):
            viol.append((b, r["id"], "numeric values changed"))
            continue
        if new.count("<CRLF>") != cur.count("<CRLF>"):
            viol.append((b, r["id"], "line count changed"))
            continue
        if CJK.search(new):
            viol.append((b, r["id"], "residual CJK"))
            continue
        updates[(b, r["id"])] = new

    print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
    print("records repaired: %d / %d" % (len(updates), len(WANT)))
    print("unfixable: %d" % len(failed))
    for f in failed:
        print("   ", f)
    print("violations: %d" % len(viol))
    for v in viol:
        print("   ", v)

    if apply_changes and not (failed or viol):
        files, written = rp_io.write_updates(wd, updates)
        print("written: %d files, %d records" % (files, written))
    elif apply_changes:
        print("ABORTED: nothing written")


if __name__ == "__main__":
    main()
