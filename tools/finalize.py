#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Merge translation-worker output, rebuild each config file, audit, promote.

Reads <out>/out/batch_NNN.jsonl ({\"id\", \"english\"}), pairs each english back
to its original payload via need.json, denormalises line-break sentinels, fills
any glossary-resolvable payload, then rebuilds every file in the manifest to
Translate/.staging, audits it in-process and atomically promotes it to
Translate/ only if the audit passes.

A payload whose english does not preserve the source's real line-break count is
rejected for its file (line-based configs parsers depend on line count). A
worker may translate a payload once; every file that contains it is updated.
Source files under current/ are never modified.
"""
from __future__ import annotations

import argparse
import json
import os
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import core
import mlspan
from audit import audit as audit_pair

ROOT = Path(__file__).resolve().parent.parent
CURRENT = ROOT / "current"
TRANSLATE = ROOT / "Translate"
STAGING = TRANSLATE / ".staging"

# A row id is a leading integer (+optional comma) followed by a whitespace run
# (the files use TAB or 2-space column delimiters). This matches the id column
# without matching an English continuation line that merely starts with a digit
# followed by a single space (e.g. "30 seconds ...").
ID_PREFIX = re.compile(r"^(\d+,?)[ \t]+")


def id_key(line: str):
    """The row id of a line, or None if it does not begin with an id column."""
    m = ID_PREFIX.match(line)
    return m.group(1) if m else None


# "Real" placeholders, in reading order. Alternation order matters: positional
# and width forms are tried before bare %sdf so the longest match wins. The
# width branch requires at least one digit after optional flags, which is what
# excludes the flag-only class (% d, %+d, %-d) that core.TOK would match - a
# literal % followed by an English word starting with s/d/f. That class is
# unused in this project (verified: 0 occurrences across 9,103 source
# payloads), and every real placeholder is preserved (verified: 0 differences
# across 20,934 spans), so suppressing it cannot lose a genuine placeholder.
_PH_REAL = re.compile(
    r"%\d+\$[sdf]"                    # positional: %1$s
    r"|%[-+ #0]*\d+(?:\.\d+)?[sdf]"   # width (and optional flags/precision): %10d, %+5.2f
    r"|%\.\d+[sdf]"                   # precision only: %.2f
    r"|%[sdf]"                        # bare: %d %s %f
    r"|&%s&"                          # amp form
    r"|\^[0-9A-Fa-f]{6}"              # colour code
)


def ph_tokens(s: str) -> list[str]:
    """Placeholder tokens for printf-template comparison, in reading order.

    %% is neutralised first: it is printf's escape for a literal percent and
    consumes no argument, so it must not be mistaken for a placeholder
    ("%% damage" would otherwise tokenise as a phantom "% d"). Then only real
    placeholders are returned - see _PH_REAL for why the flag-only class is
    excluded. Genuine placeholders (%d, %s, %10d, %.2f, %1$s, &%s&, ^rrggbb)
    all satisfy the pattern and are kept, so a dropped or swapped placeholder
    still mismatches.
    """
    return _PH_REAL.findall(s.replace("%%", "\x00"))


def curly(s: str) -> str:
    """Straight double quotes -> curly, so a payload's quote balance holds."""
    out = []
    open_q = True
    for ch in s:
        if ch == '"':
            out.append("\u201c" if open_q else "\u201d")
            open_q = not open_q
        else:
            out.append(ch)
    return "".join(out)


def load_text(p: Path):
    raw = p.read_bytes()
    bom, codec = core.detect(raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec,
                      errors="replace")
    return text, bom, codec


def main(argv):
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=".work/tr")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args(argv)
    out = ROOT / args.out

    need = json.loads((out / "need.json").read_text(encoding="utf-8"))
    sent_map = need["payloads"]
    sent_to_orig = {v: k for k, v in sent_map.items()}

    # Load worker output: sentinel -> english
    trans_sent: dict[str, str] = {}
    missing_batches = []
    for bid in need["batch_order"]:
        pf = out / "out" / (bid + ".jsonl")
        if not pf.is_file():
            missing_batches.append(bid)
            continue
        id2sent = {}
        for line in (out / "in" / (bid + ".jsonl")).read_text(encoding="utf-8").splitlines():
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
    if missing_batches:
        print("MISSING worker output for %d batches" % len(missing_batches))
        if not args.dry_run:
            return 1

    # Denormalise + curly
    trans: dict[str, str] = {}
    for s, eng in trans_sent.items():
        orig = sent_to_orig.get(s)
        if orig is None:
            continue
        trans[orig] = curly(mlspan.denormalize(eng))

    # Glossary-fill any manifest payload the workers did not translate
    allp: set[str] = set()
    for fpl in need["file_payloads"].values():
        allp.update(fpl)
    fill = sorted(p for p in allp if p not in trans)
    if fill:
        with core.Glossary() as g:
            found = g.lookup(fill)
        got = 0
        for p in fill:
            if p in found:
                trans[p] = curly(found[p])
                got += 1
        print("glossary filled %d / %d still missing" % (got, len(fill) - got))

    print("translations available: %d" % len(trans))

    # Rebuild each file
    all_ok = True
    promoted = []
    for f, fpl in need["file_payloads"].items():
        src = CURRENT / "configs" / f
        text, bom, codec = load_text(src)
        segs = mlspan.extract_segments(text)
        fset = set(fpl)
        missing = [p for p in fset if p not in trans]
        if missing:
            print("SKIP %s: %d untranslated (e.g. %r)" % (f, len(missing), missing[0][:40]))
            all_ok = False
            continue
        # line-break + placeholder preservation check
        nl_bad = []
        ph_bad = []
        for s, e in segs:
            p = text[s:e]
            t = trans.get(p)
            if t is None:
                continue
            if p.count("\n") != t.count("\n") or p.count("\r") != t.count("\r"):
                nl_bad.append(p)
            # Per-span reading-order placeholder check. The audit's ph_mismatch
            # and ph_reorder_lines compare per physical line, which false-positives
            # whenever a multi-line payload's English reflows differently than the
            # Chinese (a placeholder moves to the next line). The invariant that
            # actually matters is the payload's reading order: the C runtime fills
            # %s/%d in argument order, so a drop, add or swap is a real defect
            # while a line reflow is not. Sequence comparison catches all three.
            # ph_tokens neutralises %% first so a literal percent cannot be
            # mistaken for a placeholder.
            if ph_tokens(p) != ph_tokens(t):
                ph_bad.append(p)
        if nl_bad:
            print("SKIP %s: %d payload(s) break line-count (e.g. %r)" % (
                f, len(nl_bad), nl_bad[0][:40]))
            all_ok = False
            continue
        if ph_bad:
            print("SKIP %s: %d payload(s) break placeholders (e.g. %r)" % (
                f, len(ph_bad), ph_bad[0][:40]))
            all_ok = False
            continue
        trans_map = {text[s:e]: trans[text[s:e]] for s, e in segs}
        new_text, miss = mlspan.rebuild(text, segs, trans_map)
        if miss:
            print("SKIP %s: rebuild missing %d" % (f, len(miss)))
            all_ok = False
            continue
        rel = Path("configs") / f
        staging = STAGING / rel
        staging.parent.mkdir(parents=True, exist_ok=True)
        body = new_text.encode(codec, errors="replace")
        staging.write_bytes(bom + body)

        r = audit_pair(src, staging)
        # The audit's absolute quote-parity (0/2) and loose leading-number id
        # rule are designed for single-line-payload files; they false-positive
        # on multi-line payloads (1 quote on first/last line) and bare label
        # columns. Validate *structural preservation* instead: per-line quote
        # count must equal the source, and when both lines begin with an id
        # column the id must match (rebuild never touches the id prefix).
        _bs, _es, _eols, s_lines, _cs = core.read_text(src)
        _bd, _ed, _eold, d_lines, _cd = core.read_text(staging)
        quote_rel_bad = 0
        id_real_bad = 0
        for a, b in zip(s_lines, d_lines):
            if a.count('"') != b.count('"'):
                quote_rel_bad += 1
            ka, kb = id_key(a), id_key(b)
            if ka is not None and kb is not None and ka != kb:
                id_real_bad += 1
        # Placeholder integrity is gated per-span (reading order) in the rebuild
        # loop above, which is robust to line reflow. The audit's ph_mismatch and
        # ph_reorder_lines compare per physical line and false-positive on
        # multi-line payloads whose English wraps differently than the Chinese,
        # so they are reported for information but no longer gate promotion.
        ok = (r["bom_match"] and r["enc_match"] and r["line_match"] and r["crlf_match"]
              and id_real_bad == 0 and r["cjk_remaining"] == 0
              and r["tws_mismatch"] == 0 and quote_rel_bad == 0)
        if not ok:
            bad = {k: v for k, v in r.items()
                   if k not in ("src", "dst") and v not in (0, True, [], False)}
            bad["quote_rel_bad"] = quote_rel_bad
            bad["id_real_bad"] = id_real_bad
            print("AUDIT FAIL %s: %s" % (f, bad))
            all_ok = False
            continue
        final = TRANSLATE / rel
        final.parent.mkdir(parents=True, exist_ok=True)
        if not args.dry_run:
            os.replace(staging, final)
        promoted.append(f)
        print("%s %s  (%d segs, %d bytes)" % (
            "WOULD-PROMOTE" if args.dry_run else "promoted", f, len(segs), len(body)))

    print("\npromoted %d file(s); all_ok=%s" % (len(promoted), all_ok))
    return 0 if all_ok else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
