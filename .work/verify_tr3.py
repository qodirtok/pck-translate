"""Structural verification of tr3 worker output.

Run after each dispatch wave (and again before finalize):
  python3 .work/verify_tr3.py            # all batches
  python3 .work/verify_tr3.py 000 001    # specific batches

Hard checks (exit 1 on any failure):
- out file exists for every in/ batch
- record count == in count
- ids match exactly (same set, same order)
- english non-empty for every id
- line-break structure preserved per record (same <CRLF>/<LF>/<CR> multiset,
  or same raw CR/LF counts if the in/ sources are raw)
- colour codes: multiset of ^rrggbb preserved per record
- CJK residue in english: ideographs (U+4E00-9FFF etc.) AND fullwidth forms
  (U+FF01-FF5E) - both are counted by core.count_cjk and fail the audit
- placeholder multiset preserved per record (real placeholders only, matching
  tools/finalize.py _PH_REAL semantics: %%, flag-only forms and colour codes
  excluded from the comparison)
- %% parity per record (english %% count == source %% count)

Soft checks (reported, never fail the exit code):
- bare-% count parity (source omits the sign in cases like "50几率" -> "50%
  chance"; a small delta is legitimate localization)
- straight ASCII quote counts (finalize curly-ifies; count is informational)
"""
import json
import re
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
W = ROOT / ".work" / "tr3"

# Real placeholders in reading order. Mirrors tools/finalize.py _PH_REAL: the
# width branch requires >= 1 digit after optional flags, which excludes the
# flag-only class (% d, %+d) that a literal % plus an English word would form.
PH_REAL = re.compile(
    r"%\d+\$[sdf]"                    # positional: %1$s
    r"|%[-+ #0]*\d+(?:\.\d+)?[sdf]"   # width (and optional flags/precision)
    r"|%\.\d+[sdf]"                   # precision only: %.2f
    r"|%[sdf]"                        # bare: %d %s %f
    r"|&%s&"                          # amp form
    r"|\^[0-9A-Fa-f]{6}"              # colour code
)
COLOR = re.compile(r"\^[0-9A-Fa-f]{6}")
CJK = re.compile(r"[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\uff01-\uff5e]")


def ph_tokens(s):
    return PH_REAL.findall(s.replace("%%", "\x00"))


def main(argv):
    only = argv[1:]
    in_files = sorted((W / "in").glob("batch_*.jsonl"))
    if only:
        want = {"batch_%s.jsonl" % a for a in only}
        in_files = [p for p in in_files if p.name in want]

    hard = Counter()
    soft = Counter()
    examples = {}
    n_checked = 0

    for inf in in_files:
        outf = W / "out" / inf.name
        recs = {}
        order = []
        for line in inf.read_text(encoding="utf-8").splitlines():
            if not line.strip():
                continue
            r = json.loads(line)
            recs[r["id"]] = r["source"]
            order.append(r["id"])

        if not outf.is_file():
            hard["out_missing"] += 1
            examples.setdefault("out_missing", inf.name)
            continue

        out_recs = {}
        out_order = []
        for line in outf.read_text(encoding="utf-8").splitlines():
            if not line.strip():
                continue
            r = json.loads(line)
            out_recs[r["id"]] = r.get("english", "")
            out_order.append(r["id"])

        if len(out_order) != len(order):
            hard["count_mismatch"] += 1
            examples.setdefault("count_mismatch",
                                "%s in=%d out=%d" % (inf.name, len(order),
                                                     len(out_order)))
        if out_order != order:
            hard["id_mismatch"] += 1
            examples.setdefault("id_mismatch", inf.name)

        for rid in order:
            n_checked += 1
            src = recs[rid]
            eng = out_recs.get(rid)
            tag = "%s/%s" % (inf.name, rid)

            if eng is None:
                hard["missing_id"] += 1
                examples.setdefault("missing_id", tag)
                continue
            if not eng.strip():
                hard["empty_english"] += 1
                examples.setdefault("empty_english", tag)
                continue

            # line-break structure
            if ("<CRLF>" in src or "<LF>" in src or "<CR>" in src):
                sc_ = (src.count("<CRLF>"), src.count("<LF>"), src.count("<CR>"))
                ec_ = (eng.count("<CRLF>"), eng.count("<LF>"), eng.count("<CR>"))
            else:
                sc_ = (src.count("\r\n"), src.count("\n"), src.count("\r"))
                ec_ = (eng.count("\r\n"), eng.count("\n"), eng.count("\r"))
            if sc_ != ec_:
                hard["linebreak_mismatch"] += 1
                examples.setdefault("linebreak_mismatch",
                                    "%s src=%r dst=%r" % (tag, sc_, ec_))

            # colour codes
            if sorted(COLOR.findall(eng)) != sorted(COLOR.findall(src)):
                hard["color_mismatch"] += 1
                examples.setdefault("color_mismatch", tag)

            # CJK residue (ideographs + fullwidth forms)
            if CJK.search(eng):
                hard["cjk_residue"] += 1
                if "cjk_residue" not in examples:
                    m = CJK.search(eng)
                    examples["cjk_residue"] = "%s %r" % (
                        tag, eng[max(0, m.start() - 20):m.end() + 20])

            # real placeholders
            if ph_tokens(src) != ph_tokens(eng):
                hard["ph_mismatch"] += 1
                examples.setdefault(
                    "ph_mismatch",
                    "%s src=%r dst=%r" % (tag, ph_tokens(src), ph_tokens(eng)))

            # %% parity
            if src.count("%%") != eng.count("%%"):
                hard["pct_escaped_mismatch"] += 1
                if "pct_escaped_mismatch" not in examples:
                    examples["pct_escaped_mismatch"] = "%s src=%d dst=%d" % (
                        tag, src.count("%%"), eng.count("%%"))

            # soft: bare % parity
            sbare = len(re.findall(r"%(?![%sdf0-9])", src))
            ebare = len(re.findall(r"%(?![%sdf0-9])", eng))
            if sbare != ebare:
                soft["bare_pct_delta"] += 1

            # soft: straight quotes
            if eng.count('"') or eng.count("'"):
                soft["straight_quotes"] += 1

    print("batches checked : %d" % len(in_files))
    print("records checked : %d" % n_checked)
    print()
    print("HARD failures:")
    if not hard:
        print("  (none)")
    for k, n in hard.most_common():
        print("  %-24s %d   e.g. %s" % (k, n, examples.get(k, "")))
    print()
    print("SOFT observations (informational):")
    if not soft:
        print("  (none)")
    for k, n in soft.most_common():
        print("  %-24s %d" % (k, n))

    return 1 if hard else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
