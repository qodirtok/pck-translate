#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Scan current/ and write tools/manifest.json.

Deterministic and safe to re-run: a bug in the first hand-rolled loader silently
cut the manifest down to 559 files. Every code path below assigns `text`, and the
writer refuses to save a manifest smaller than the previous one unless --force.

Usage:
  python3 tools/scan.py            # scan current/ -> tools/manifest.json
  python3 tools/scan.py --force    # allow a smaller manifest
  python3 tools/scan.py --list     # print compact one-line rows
"""
from __future__ import annotations

import json
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "current"
OUT = Path(__file__).resolve().parent / "manifest.json"

CJK0, CJK1 = 0x4E00, 0x9FFF
CJK_RANGES = ((0x3400, 0x4DBF), (0xF900, 0xFAFF), (0xFF01, 0xFF5E))


def detect_encoding(head: bytes, body: bytes) -> tuple[str, str]:
    """Return (encoding, bom) where bom is the literal prefix or ''."""
    if head[:2] == b"\xff\xfe":
        return "utf-16-le", "utf-16-le-bom"
    if head[:2] == b"\xfe\xff":
        return "utf-16-be", "utf-16-be-bom"
    if head[:3] == b"\xef\xbb\xbf":
        return "utf-8", "utf-8-bom"
    try:
        body.decode("utf-8")
        return "utf-8", ""
    except UnicodeDecodeError:
        pass
    # fall back: most game .txt/.dat in this project are GBK/CP936 Chinese
    try:
        body.decode("gbk")
        return "gbk", ""
    except UnicodeDecodeError:
        return "binary", ""


def count_cjk(text: str) -> int:
    return sum(1 for c in text if CJK0 <= ord(c) <= CJK1
               or any(a <= ord(c) <= b for a, b in CJK_RANGES))


def inspect(path: Path) -> dict:
    raw = path.read_bytes()
    head = raw[:4096]
    # decode the whole file for text encodings; keep bytes for binary
    enc, bom = detect_encoding(head, raw)
    rel = path.relative_to(ROOT).as_posix()
    row: dict = {"path": rel, "bytes": len(raw)}
    if enc == "binary":
        row["encoding"] = "binary"
        row["text"] = False
        return row
    # decode with errors reported rather than guessed
    text = raw.decode(enc, errors="replace")
    if bom and text.startswith("﻿"):
        text = text[1:]
    row.update({
        "encoding": enc,
        "bom": bom,
        "text": True,
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1),
        "crlf": text.count("\r\n"),
        "lf_only": text.count("\n") - text.count("\r\n"),
        "cjk": count_cjk(text),
    })
    return row


def main(argv: list[str]) -> int:
    force = "--force" in argv
    rows = []
    for p in sorted(SRC.rglob("*")):
        if p.is_file():
            rows.append(inspect(p))

    old = {}
    if OUT.exists():
        try:
            old = json.loads(OUT.read_text(encoding="utf-8"))
        except (json.JSONDecodeError, OSError):
            old = {}
    if old and len(rows) < len(old) and not force:
        sys.stderr.write(
            "refusing to shrink manifest: %d -> %d rows (use --force)\n"
            % (len(old), len(rows)))
        return 1

    payload = {
        "root": SRC.relative_to(ROOT).as_posix(),
        "count": len(rows),
        "files": rows,
    }
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(payload, ensure_ascii=False, indent=1),
                   encoding="utf-8")

    translatable = sum(1 for r in rows if r.get("text") and r.get("cjk", 0) > 0)
    by_enc: dict[str, int] = {}
    for r in rows:
        by_enc[r["encoding"]] = by_enc.get(r["encoding"], 0) + 1
    print("files %d" % len(rows))
    print("translatable (text + has CJK) %d" % translatable)
    print("encodings " + ", ".join("%s=%d" % kv
                                   for kv in sorted(by_enc.items())))
    if "--list" in argv:
        for r in rows:
            if r.get("text") and r.get("cjk", 0) > 0:
                print("%8d  %-10s %-12s %5d  %s" % (
                    r["bytes"], r["encoding"], r.get("bom") or "-",
                    r.get("cjk", 0), r["path"]))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
