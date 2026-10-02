#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Collect unknown translatable payloads from a source file.

Extracts all CJK-containing payloads, checks glossary.db, and outputs
only those that still need translation.

Usage:
  python3 tools/collect.py current/configs/foo.txt > /tmp/foo_unknown.jsonl

Output: JSONL, one object per line:
  {"source": "<chinese>", "line": 42, "file": "current/configs/foo.txt"}
"""
from __future__ import annotations

import json
import re
import sqlite3
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DB = ROOT / "memory" / "glossary.db"

CJK = re.compile(r"[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff]")

XML_STR = re.compile(r'String="([^"]*)"')
LUA_KV = re.compile(r'(?:name|note|desc|desc_1|desc_2|title|text|label|msg)\s*=\s*"([^"]*)"')
LUA_BARE = re.compile(r'^\s*"([^"]+)"')
TXT_ID = re.compile(r'^(\d+,?[ \t]+)?(.*)$')
DCF_COMMENT = re.compile(r'^//\s*(.*)$')
QUOTED = re.compile(r'"([^"]*)"')


def detect_format(path: Path, text: str) -> str:
    ext = path.suffix.lower()
    if ext in (".xml", ".stf"):
        return "xml"
    if ext in (".lua",):
        return "lua"
    if ext in (".dcf",):
        return "dcf"
    if ext in (".txt", ".dat"):
        return "txt"
    if text.lstrip().startswith("<") or "<DIALOG" in text[:500]:
        return "xml"
    if text.lstrip().startswith("--") or "function" in text[:500] or "=" in text[:500]:
        return "lua"
    return "txt"


def extract_xml(text: str) -> list[tuple[int, str]]:
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        for m in XML_STR.finditer(line):
            val = m.group(1)
            if CJK.search(val):
                out.append((i, val))
    return out


def extract_lua(text: str) -> list[tuple[int, str]]:
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        for m in LUA_KV.finditer(line):
            val = m.group(1)
            if CJK.search(val):
                out.append((i, val))
        if not LUA_KV.search(line):
            m = LUA_BARE.match(line)
            if m:
                val = m.group(1)
                if CJK.search(val):
                    out.append((i, val))
    return out


def extract_txt(text: str) -> list[tuple[int, str]]:
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        if line.startswith("//"):
            stripped = line[2:].strip()
            if CJK.search(stripped):
                out.append((i, stripped))
            continue
        m = TXT_ID.match(line)
        if not m:
            continue
        rest = m.group(2)
        if '"' in rest:
            first, last = rest.find('"'), rest.rfind('"')
            if last > first:
                payload = rest[first + 1:last]
                if CJK.search(payload):
                    out.append((i, payload))
                continue
        payload = rest.rstrip()
        if payload and CJK.search(payload):
            out.append((i, payload))
    return out


def extract_dcf(text: str) -> list[tuple[int, str]]:
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        m = DCF_COMMENT.match(line)
        if m:
            val = m.group(1).strip()
            if CJK.search(val):
                out.append((i, val))
            continue
        for m in QUOTED.finditer(line):
            val = m.group(1)
            if CJK.search(val):
                out.append((i, val))
    return out


def main(argv: list[str]) -> int:
    if not argv:
        sys.stderr.write(__doc__)
        return 2
    src = Path(argv[0])
    if not src.is_absolute():
        src = ROOT / src
    if not src.is_file():
        sys.stderr.write(f"source not found: {src}\n")
        return 1

    fmt = "auto"
    if "--format" in argv:
        i = argv.index("--format")
        fmt = argv[i + 1]

    raw = src.read_bytes()
    if raw[:2] == b"\xff\xfe":
        text = raw.decode("utf-16")
    elif raw[:2] == b"\xfe\xff":
        text = raw.decode("utf-16")
    else:
        try:
            text = raw.decode("utf-8")
        except UnicodeDecodeError:
            text = raw.decode("gbk", errors="replace")
    if text.startswith("﻿"):
        text = text[1:]

    if fmt == "auto":
        fmt = detect_format(src, text)

    if fmt == "xml":
        items = extract_xml(text)
    elif fmt == "lua":
        items = extract_lua(text)
    elif fmt == "dcf":
        items = extract_dcf(text)
    else:
        items = extract_txt(text)

    # Check glossary
    conn = sqlite3.connect(str(DB))
    conn.row_factory = sqlite3.Row
    unknown = []
    known = 0
    for line_no, payload in items:
        row = conn.execute(
            "SELECT english FROM terms WHERE source = ?", (payload,)
        ).fetchone()
        if row:
            known += 1
        else:
            unknown.append({"source": payload, "line": line_no, "file": str(src)})

    for rec in unknown:
        print(json.dumps(rec, ensure_ascii=False))

    total = len(items)
    print(f"# format={fmt} total={total} known={known} unknown={len(unknown)}",
          file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))