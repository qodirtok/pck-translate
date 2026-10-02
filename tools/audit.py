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

ROOT = Path(__file__).resolve().parent.parent

TOK = re.compile(r'%[-+ #0]*\d*(?:\.\d+)?[sdf]|%\d+\$[sdf]|&%s&|\^[0-9A-Fa-f]{6}|\$%*')
ID = re.compile(r'^(\d+,?[ \t]*)')
CJK0, CJK1 = 0x4E00, 0x9FFF
CJK_RANGES = ((0x3400, 0x4DBF), (0xF900, 0xFAFF), (0xFF01, 0xFF5E))

# Translatable-span extraction, format-aware. Only these spans are checked for
# CJK; asset paths (FileName="CB\\通用\\..."), font names, and other
# non-translatable attributes are ignored.
XML_STR = re.compile(r'String="([^"]*)"')
LUA_KV = re.compile(
    r'((?:name|note|desc|desc_1|desc_2|title|text|label|msg)\s*=\s*")([^"]*)(")')
LUA_BARE = re.compile(r'^(\s*")([^"]+)(")')
DCF_COMMENT = re.compile(r'^(//\s*)(.*)$')
DCF_QUOTED = re.compile(r'"([^"]*)"')
TXT_QUOTED = re.compile(r'"([^"]*)"')


def guess_format(path: Path) -> str:
    ext = path.suffix.lower()
    if ext == ".xml":
        return "xml"
    if ext == ".lua":
        return "lua"
    if ext == ".dcf":
        return "dcf"
    if ext in (".txt", ".dat", ".stf"):
        return "txt"
    return "txt"


def translatable_spans(line: str, fmt: str) -> list[tuple[int, int]]:
    """Return [(start, end)] of translatable character spans in one line."""
    out: list[tuple[int, int]] = []
    if fmt == "xml":
        for m in XML_STR.finditer(line):
            out.append((m.start(1), m.end(1)))
    elif fmt == "lua":
        for m in LUA_KV.finditer(line):
            out.append((m.start(2), m.end(2)))
        if not out:
            m = LUA_BARE.match(line)
            if m:
                out.append((m.start(2), m.end(2)))
    elif fmt == "dcf":
        m = DCF_COMMENT.match(line)
        if m:
            out.append((m.start(2), m.end(2)))
        else:
            for mm in DCF_QUOTED.finditer(line):
                out.append((mm.start(1), mm.end(1)))
    else:
        for m in TXT_QUOTED.finditer(line):
            out.append((m.start(1), m.end(1)))
    return out


def has_cjk_in_spans(line: str, fmt: str) -> bool:
    """True if any translatable span in the line contains CJK."""
    for start, end in translatable_spans(line, fmt):
        seg = line[start:end]
        if any(CJK0 <= ord(c) <= CJK1 or
               any(a <= ord(c) <= b for a, b in CJK_RANGES) for c in seg):
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
    """Return (bom, encoding, lines, crlf_count)."""
    raw = p.read_bytes()
    if raw[:2] == b"\xff\xfe":
        return (raw[:2].decode("utf-16"), "utf-16-le",
                raw.decode("utf-16").split("\r\n"), raw.decode("utf-16").count("\r\n"))
    if raw[:2] == b"\xfe\xff":
        return (raw[:2].decode("utf-16"), "utf-16-be",
                raw.decode("utf-16").split("\r\n"), raw.decode("utf-16").count("\r\n"))
    if raw[:3] == b"\xef\xbb\xbf":
        return (raw[:3].decode("utf-8"), "utf-8",
                raw.decode("utf-8").split("\n"), raw.count(b"\r\n"))
    # Try UTF-8 first (valid UTF-8 is also valid GBK but with different meaning)
    try:
        text = raw.decode("utf-8")
        # If UTF-8 decodes cleanly, check it's not actually GBK misinterpreted as UTF-8
        # GBK high bytes are 0x81-0xFE, UTF-8 multibyte starts with 0xC0-0xF4
        # If raw bytes are valid UTF-8, treat as UTF-8
        return ("", "utf-8", text.splitlines(), raw.count(b"\r\n"))
    except UnicodeDecodeError:
        pass
    # Try GBK
    try:
        text = raw.decode("gbk")
        return ("", "gbk", text.splitlines(), raw.count(b"\r\n"))
    except UnicodeDecodeError:
        pass
    # fallback
    return (raw[:3].decode("utf-8", errors="replace"), "unknown",
            raw.decode("utf-8", errors="replace").split("\n"), raw.count(b"\r\n"))


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

    fmt = guess_format(dst)
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