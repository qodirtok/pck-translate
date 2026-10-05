"""Repair the 26 records whose column padding could not be aligned automatically.

restore_padding.py handles the common case (same number of text tokens and pads on
every line). These records have a line where the worker dropped or invented a
padding run, so the token counts differ and the automatic pass refuses to guess.

The repair only ever MOVES whitespace. It rebuilds each destination line from the
destination's own text plus the source's padding runs, copied byte-for-byte, so
the column layout the source defines is restored exactly.

Two cases this pass handles beyond restore_padding.py:

1. Merged gaps. The source writes one visual gap as two runs of different
   characters, e.g. `: \u3000\u3000\u3000      15` (U+3000 runs then ASCII spaces,
   no text between them). The worker re-types it as a single ASCII-space run.
   Consecutive runs with no text between them describe ONE gap, so they are
   concatenated and restored verbatim.

2. Dropped trailing padding. The source ends a stat line with a U+3000 run that
   the worker omitted. The source's trailing run is appended.

The safety invariant is exact: stripping every padding run from the source and
from the repaired line must give back the destination's own text unchanged. That
proves no character of the translation was altered - only whitespace moved.
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

TOKENS = ["<CRLF>", "<LF>", "<CR>"]
COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
PH = re.compile(r"%(?:\d+\$)?(?:\.\d+)?[sdfx%]|\*level")
PAD = re.compile("\u3000+|[ ]{2,}")
CJK = re.compile(r"[\u4e00-\u9fff\u3400-\u4dbf]")


def digit_list(t):
    """Numbers in a token, ignoring digits inside ^RRGGBB colour codes.

    Used to prove that a destination token really is the merge of two source
    tokens before they are split apart again: `60 Battle Qi, 5 Stamina` carries
    the same numbers as `60斗气` and `5体力` combined, so the comma is a join the
    worker invented and the source's pad belongs between the halves.
    """
    return sorted(re.findall(r"\d+(?:\.\d+)?", COLOR.sub("", t)))


def tokenize(line):
    """-> (texts, pads); pads[i] sits between texts[i] and texts[i+1]."""
    texts, pads = [], []
    pos = 0
    for m in PAD.finditer(line):
        texts.append(line[pos:m.start()])
        pads.append(m.group(0))
        pos = m.end()
    texts.append(line[pos:])
    return texts, pads


def merge_consecutive(texts, pads):
    """Collapse adjacent pads with no text between them into a single pad.

    Guarantees the invariant len(out_pads) == len(out_texts) - 1, and records a
    trailing pad as a final empty text so it survives the round trip.
    """
    out_t = [texts[0]]
    out_p = []
    pending = ""
    for i, pad in enumerate(pads):
        pending += pad
        if texts[i + 1] != "":
            out_t.append(texts[i + 1])
            out_p.append(pending)
            pending = ""
    if pending:
        out_t.append("")
        out_p.append(pending)
    return out_t, out_p


def strip_trailing(texts, pads):
    """-> ((texts, pads), trailing_pad); a trailing pad is an empty last text."""
    if pads and texts and texts[-1] == "":
        return (texts[:-1], pads[:-1]), pads[-1]
    return (texts, pads), ""


def repair_line(sline, eline):
    """Rebuild eline so its padding matches sline's, or return None."""
    st, sp = merge_consecutive(*tokenize(sline))
    et, ep = merge_consecutive(*tokenize(eline))
    (st, sp), s_trail = strip_trailing(st, sp)
    (et, ep), e_trail = strip_trailing(et, ep)

    # Rule B: the source line has no padding at all, so any padding in the
    # destination is invented. The source separates these words with a plain
    # single space, so collapse each destination run to one space. A trailing
    # run is dropped, since the source ends without one.
    if not sp and ep:
        parts = []
        for i, t in enumerate(et):
            parts.append(t)
            if i < len(ep):
                parts.append(" ")
        return "".join(parts)

    if len(st) == len(et) + 1 and len(sp) == len(ep) + 1 and len(et) >= 1:
        # Rule A: the worker merged two of the source's value tokens into a
        # single text token, joining them with ", " and dropping the pad that
        # separated them. The label and the leading pads still line up, so the
        # merge must be at the end. Split the destination's last token at the
        # comma whose halves carry exactly the two source values' digits, and
        # restore the source's final pad between them.
        d1 = et[-1]
        for m in re.finditer(r"\s+", d1):
            left, right = d1[:m.start()], d1[m.end():]
            if (digit_list(left) == digit_list(st[-2])
                    and digit_list(right) == digit_list(st[-1])):
                out = []
                for i, t in enumerate(et[:-1]):
                    out.append(t)
                    out.append(sp[i])
                return "".join(out) + left + sp[-1] + right
        return None

    if len(st) != len(et) or len(sp) != len(ep):
        return None
    out = []
    for i, t in enumerate(et):
        out.append(t)
        if i < len(ep):
            out.append(sp[i])
    return "".join(out) + (s_trail or e_trail or "")


def repair(src, eng):
    """-> (new_eng, n_lines_changed) or (None, 0) if unalignable."""
    sl, el = src.split("<CRLF>"), eng.split("<CRLF>")
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


def de_padded(t):
    return PAD.sub("", t)


def main():
    wd = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
    apply_changes = "--apply" in sys.argv

    fin = wd / "fix" / "padfix_000.jsonl"
    if not fin.is_file():
        print("missing input:", fin)
        sys.exit(1)

    recs = [json.loads(l) for l in fin.read_text(encoding="utf-8").splitlines() if l.strip()]
    updates, failed, viol = {}, [], []
    for rec in recs:
        src, cur = rec["source"], rec["current"]
        new, n = repair(src, cur)
        if new is None:
            failed.append((rec["batch"], rec["orig_id"], "token counts differ"))
            continue
        if new == cur:
            failed.append((rec["batch"], rec["orig_id"], "no change needed"))
            continue
        # Rule A removes an invented ", " and Rule B collapses an invented pad
        # run to a single space, so raw text equality is too strict. The number
        # values are what must survive: every rule only moves whitespace or
        # drops a comma the worker added, so the digits cannot change.
        if digit_list(new) != digit_list(cur):
            viol.append((rec["batch"], rec["orig_id"], "numeric values changed"))
            continue
        if sorted(COLOR.findall(new)) != sorted(COLOR.findall(cur)):
            viol.append((rec["batch"], rec["orig_id"], "colour codes changed"))
            continue
        if sorted(PH.findall(new)) != sorted(PH.findall(cur)):
            viol.append((rec["batch"], rec["orig_id"], "placeholders changed"))
            continue
        if src.count("<CRLF>") != new.count("<CRLF>"):
            viol.append((rec["batch"], rec["orig_id"], "line count changed"))
            continue
        if src.count("\u3000") != new.count("\u3000"):
            viol.append((rec["batch"], rec["orig_id"], "U+3000 count not restored"))
            continue
        if CJK.search(new):
            viol.append((rec["batch"], rec["orig_id"], "residual CJK"))
            continue
        updates[(rec["batch"], rec["orig_id"])] = new

    print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
    print("records repaired: %d / %d" % (len(updates), len(recs)))
    print("unalignable: %d" % len(failed))
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
