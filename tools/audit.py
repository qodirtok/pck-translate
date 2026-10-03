#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Audit a translated file against its source.

Usage:
  python3 tools/audit.py Translate/configs/fixed_msg.txt
  python3 tools/audit.py --dir Translate/configs

Checks:
  - same encoding, BOM presence
  - same line count
  - same CRLF count (if source has any)
  - per-line: same ID prefix (up to tab/space before payload)
  - per-line: same placeholder tokens (%s, %d, %1$s, &%s&, ^code, $...$)
  - no CJK codepoints in destination
  - same trailing-whitespace line set
  - ASCII quote parity per line (0 or 2)
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import core

ROOT = Path(__file__).resolve().parent.parent

# Encoding detection, format detection, translatable-span extraction and the
# placeholder tokeniser all live in core.py so this file, apply.py, collect.py
# and scan.py can never disagree about what a payload is or how a file is
# encoded. Only the *checks* below live here.
TOK = core.TOK
ID = core.ID


def translatable_spans(line: str, fmt: str) -> list[tuple[int, int]]:
    """Return [(start, end)] of translatable character spans in one line."""
    return [(s, e) for s, e, _ in core.spans(line, fmt)]


def has_cjk_in_spans(line: str, fmt: str) -> bool:
    """True if any translatable span in the line contains CJK."""
    for start, end in translatable_spans(line, fmt):
        seg = line[start:end]
        if core.count_cjk(seg):
            return True
    return False


def ph_sig(line: str) -> tuple:
    """Placeholder multiset, order-independent.

    Order matters semantically for plain %s/%d: the C runtime fills them in
    argument order, so reordering them silently swaps values. Keep counts here
    and compare order separately.
    """
    return tuple(sorted(TOK.findall(line)))


def decode(p: Path) -> tuple[str, str, list[str], int]:
    """Return (bom, encoding, lines, crlf_count).

    `bom` is the BOM as the *character* U+FEFF, which is what the utf-16 and
    utf-8-sig codecs both produce when they consume it. The raw BOM bytes are
    not valid UTF-8 on their own, so they cannot be decoded blindly.
    """
    bom, enc, _eol, lines, crlf = core.read_text(p)
    bom_str = "﻿" if bom else ""
    return bom_str, enc, lines, crlf


def audit(src: Path, dst: Path) -> dict:
    s_bom, s_enc, sl, s_crlf = decode(src)
    d_bom, d_enc, dl, d_crlf = decode(dst)
    # GBK source + UTF-8 dest is OK if dest is pure ASCII (ASCII is valid GBK)
    if s_enc == "gbk" and d_enc == "utf-8":
        try:
            d_text = dst.read_bytes().decode("ascii")
            d_enc = "gbk"  # treat ASCII as valid GBK
        except UnicodeDecodeError:
            pass
    res = {"src": str(src), "dst": str(dst)}
    res["bom_match"] = s_bom == d_bom
    res["enc_match"] = s_enc == d_enc
    res["src_lines"] = len(sl)
    res["dst_lines"] = len(dl)
    res["line_match"] = len(sl) == len(dl)
    res["src_crlf"] = s_crlf
    res["dst_crlf"] = d_crlf
    res["crlf_match"] = s_crlf == d_crlf

    fmt = core.guess_format(dst, dl)
    bad_id = bad_ph = bad_ph_order = bad_cjk = bad_tws = bad_q = 0
    order_lines = []
    for i, (a, b) in enumerate(zip(sl, dl)):
        ma, mb = ID.match(a), ID.match(b)
        if (ma is None) != (mb is None) or (ma and ma.group(1) != mb.group(1)):
            bad_id += 1
        if ph_sig(a) != ph_sig(b):
            bad_ph += 1
        elif TOK.findall(a) != TOK.findall(b):
            bad_ph_order += 1
            order_lines.append(i)
        if has_cjk_in_spans(b, fmt):
            bad_cjk += 1
        tws_a = a != a.rstrip()
        tws_b = b != b.rstrip()
        if tws_a != tws_b:
            bad_tws += 1
        # Quote parity: for XML/Lua/DCF, count quotes inside translatable
        # spans only. For TXT, count all quotes on the line.
        if fmt in ("xml", "lua", "dcf"):
            qcount = 0
            for start, end in translatable_spans(b, fmt):
                qcount += b[start:end].count('"')
            if qcount not in (0, 2):
                bad_q += 1
        else:
            if b.count('"') not in (0, 2):
                bad_q += 1
    res["id_mismatch"] = bad_id
    res["ph_mismatch"] = bad_ph
    res["ph_reorder_lines"] = order_lines
    res["cjk_remaining"] = bad_cjk
    res["tws_mismatch"] = bad_tws
    res["quote_parity_bad"] = bad_q
    res["lines_changed"] = sum(1 for a, b in zip(sl, dl) if a != b)
    return res


def main(argv: list[str]) -> int:
    if not argv:
        sys.stderr.write("usage: audit.py <dst-path> [--dir]\n")
        return 1
    if "--dir" in argv:
        rest = [a for a in argv if a != "--dir"]
        base = Path(rest[0]) if rest else ROOT / "Translate"
        if not base.is_absolute():
            base = ROOT / base
        pairs = []
        for p in sorted(base.rglob("*")):
            if p.is_file():
                rel = p.relative_to(base)
                src = ROOT / "current" / rel
                if src.exists():
                    pairs.append((src, p))
    else:
        dst = Path(argv[0])
        if not dst.is_absolute():
            dst = ROOT / dst
        try:
            rel = dst.relative_to(ROOT / "Translate")
        except ValueError:
            sys.stderr.write("not under Translate/: %s\n" % dst)
            return 1
        src = ROOT / "current" / rel
        pairs = [(src, dst)]

    all_ok = True
    for src, dst in pairs:
        if not src.exists():
            # A destination with no source is unverifiable, not clean. Failing
            # here stops a mistyped or stray file from reporting a green audit.
            sys.stderr.write("no source for %s\n" % dst)
            all_ok = False
            print("FAIL  %s" % dst.relative_to(ROOT))
            print("  missing_source: %s" % src)
            continue
        r = audit(src, dst)
        ok = (r["bom_match"] and r["enc_match"] and r["line_match"]
              and r["crlf_match"] and r["id_mismatch"] == 0
              and r["ph_mismatch"] == 0 and not r["ph_reorder_lines"]
              and r["cjk_remaining"] == 0
              and r["tws_mismatch"] == 0 and r["quote_parity_bad"] == 0)
        all_ok = all_ok and ok
        status = "OK" if ok else "FAIL"
        print("%s  %s" % (status, dst.relative_to(ROOT)))
        for k, v in r.items():
            if k not in ("src", "dst"):
                print("  %s: %s" % (k, v))
    return 0 if all_ok else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))