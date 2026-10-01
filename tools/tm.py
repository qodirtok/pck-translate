#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Translation Memory lookup.

Given a source config file path, dump every payload in it and cross-reference
with the entries already stored in memory/glossary.db under a 'fixed-msg-*' or
generic section.  Emits TSV: source-payload \t english-if-known \t section
(immediate; also prints if *any* payload from the file is already decided).

Usage:
  python3 tools/tm.py current/configs/fixed_msg.txt
  python3 tools/tm.py current/configs/actions_player.txt

If the file has encoding that glossary DB doesn't know, it still shows the
source payload text and whether there's an exact source match.
"""
from __future__ import annotations

import json
import re
import sqlite3
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DB = ROOT / "memory" / "glossary.db"

ID_RE = re.compile(r'^(\d+,?[ \t]*)')
TOK_RE = re.compile(r'%[-+ #0]*\d*(?:\.\d+)?[sdf]|%\d+\$[sdf]|&%s&|\^\w{1,8}|\$%*')

# borrowed from /tmp/translate_fm.py conventions for classifying
CJK0, CJK1 = 0x4E00, 0x9FFF


def count_cjk(text):
    return sum(1 for c in text if CJK0 <= ord(c) <= CJK1)


def detect_encoding(head):
    if head[:2] == b"\xff\xfe":
        return "utf-16-le"
    if head[:3] == b"\xef\xbb\xbf":
        return "utf-8"
    # quick sniff: read a chunk
    txt = head.decode("utf-8", errors="ignore")[:100]
    # if CJK, likely GBK
    if any(0x80 <= ord(c) <= 0xFF for c in txt):
        try:
            head.decode("gbk", errors="ignore")
            return "gbk"
        except Exception:
            pass
    return "utf-8"


def extract_payloads(text):
    """Given a UTF-16LE decoded text, yield (line_index, id, payload, quoted)"""
    lines = text.split("\r\n")
    for i, line in enumerate(lines):
        ma = ID_RE.match(line)
        if not ma:
            continue
        head = ma.group(0)
        rest = line[len(head):]
        # split body/comment
        ci = rest.find('//')
        if ci >= 0:
            body, comment = rest[:ci], rest[ci:]
        else:
            body, comment = rest, ''
        trailing = body[len(body.rstrip()):]
        body = body.rstrip()
        # quoted payload?
        quoted = False
        if body.startswith('"') and body.endswith('"'):
            payload = body[1:-1]
            quoted = True
        else:
            payload = body
            quoted = False
        yield (i, head, payload, quoted)


def main(argv):
    if len(argv) < 1:
        sys.stderr.write("usage: tm.py <source-path>\n")
        return 1
    src = Path(argv[0])
    head = src.read_bytes()[:4096]
    enc = detect_encoding(head)
    raw = src.read_bytes()
    if enc == "utf-16-le":
        text = raw.decode("utf-16-le")
    elif enc == "utf-16-be":
        text = raw.decode("utf-16-be")
    elif enc == "utf-8":
        text = raw.decode("utf-8")
    else:
        text = raw.decode("gbk", errors="replace")

    matches = 0
    total = 0
    with sqlite3.connect(str(DB)) as conn:
        conn.row_factory = sqlite3.Row
        for i, head, payload, quoted in extract_payloads(text):
            total += 1
            # try exact source match
            row = conn.execute(
                "SELECT english FROM terms"
                " WHERE source = ? AND table_id IN"
                " (SELECT id FROM tables"
                "  WHERE section_id IN"
                "   (SELECT id FROM sections WHERE slug IN"
                "    ('fixed-msg-terms','fixed-msg-messages')))",
                (payload,)).fetchone()
            if row:
                matches += 1
                print("%s  %s -> %s  [%s line %d]" %
                      (payload, head.strip(), row["english"],
                       src.name.rsplit("_", 1)[0] if "_" in src.name else "terms", i+1))
            else:
                # also try CJK-free token
                print("%s  %s  [no match] line %d" %
                      (head.strip(), payload, i+1))

    if total == 0:
        print("(no translatable payloads extracted — check encoding)")
    else:
        print("%d/%d payloads already have an English in the glossary DB"
              % (matches, total))


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))