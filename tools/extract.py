#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Extract translatable payloads from a source file, format-aware.

Handles:
  - XML:  String="..." attribute values only
  - Lua:  quoted strings in name = "..." / note = "..." / desc = "..." etc.
  - TXT/STF: ID-prefixed lines, quoted or bare payloads
  - DCF:  // comments and quoted strings

Usage:
  python3 tools/extract.py current/configs/foo.txt [--format auto|xml|lua|txt|dcf]

Output: JSONL, one object per line:
  {"line": 1, "payload": "...", "context": "..."}
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

CJK = re.compile(r"[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff]")

# XML: String="..."
XML_STR = re.compile(r'String="([^"]*)"')
# Lua: key = "value"  (name, note, desc, desc_1, desc_2, etc.)
LUA_KV = re.compile(r'(?:name|note|desc|desc_1|desc_2|title|text|label|msg)\s*=\s*"([^"]*)"')
# Lua bare strings in tables: "value" at start of line or after comma
LUA_BARE = re.compile(r'^\s*"([^"]+)"')
# TXT/STF: ID-prefixed lines
TXT_ID = re.compile(r'^(\d+,?[ \t]+)?(.*)$')
# DCF: // comments
DCF_COMMENT = re.compile(r'^//\s*(.*)$')
# Generic quoted string
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
    # auto-detect from content
    if text.lstrip().startswith("<") or "<DIALOG" in text[:500]:
        return "xml"
    if text.lstrip().startswith("--") or "function" in text[:500] or "=" in text[:500]:
        return "lua"
    return "txt"


def extract_xml(text: str) -> list[tuple[int, str, str]]:
    """Return (line_no, payload, full_line) for String="..." attributes."""
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        for m in XML_STR.finditer(line):
            val = m.group(1)
            if CJK.search(val):
                out.append((i, val, line))
    return out


def extract_lua(text: str) -> list[tuple[int, str, str]]:
    """Return (line_no, payload, full_line) for Lua quoted strings."""
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        # key = "value" pattern
        for m in LUA_KV.finditer(line):
            val = m.group(1)
            if CJK.search(val):
                out.append((i, val, line))
        # bare strings (not already captured by LUA_KV)
        if not LUA_KV.search(line):
            m = LUA_BARE.match(line)
            if m:
                val = m.group(1)
                if CJK.search(val):
                    out.append((i, val, line))
    return out


def extract_txt(text: str) -> list[tuple[int, str, str]]:
    """Return (line_no, payload, full_line) for ID-prefixed lines."""
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        if line.startswith("//"):
            # comment line
            stripped = line[2:].strip()
            if CJK.search(stripped):
                out.append((i, stripped, line))
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
                    out.append((i, payload, line))
                continue
        payload = rest.rstrip()
        if payload and CJK.search(payload):
            out.append((i, payload, line))
    return out


def extract_dcf(text: str) -> list[tuple[int, str, str]]:
    """Return (line_no, payload, full_line) for DCF comments and quoted strings."""
    out = []
    for i, line in enumerate(text.split("\r\n"), 1):
        m = DCF_COMMENT.match(line)
        if m:
            val = m.group(1).strip()
            if CJK.search(val):
                out.append((i, val, line))
            continue
        for m in QUOTED.finditer(line):
            val = m.group(1)
            if CJK.search(val):
                out.append((i, val, line))
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

    for line_no, payload, full_line in items:
        print(json.dumps({"line": line_no, "payload": payload, "context": full_line},
                         ensure_ascii=False))

    print(f"# format={fmt} extracted={len(items)}", file=sys.stderr)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))