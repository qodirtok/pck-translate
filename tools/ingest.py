#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Ingest a translation JSON file into memory/glossary.db.

Input JSON: either {"pairs": {source: english}} or {"pairs": [[src, eng], ...]}
or a plain {source: english} object.

Sections: optional "section" (default) and "short_section" (for short terms).
Short terms are those <= 14 chars with no sentence-ending punctuation.

Usage:
  python3 tools/ingest.py /tmp/pairs.json --section my-file-messages \
      --ref current/configs/myfile.txt
"""
from __future__ import annotations

import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "memory"))

import sqlite3  # noqa: E402

DB = ROOT / "memory" / "glossary.db"
SENT_END = "。，！？.,!?：:；;、"
MAX_SHORT = 14


def ensure_section(conn, slug, title, source_files, conventions, sort_order):
    row = conn.execute("SELECT id FROM sections WHERE slug=?", (slug,)).fetchone()
    if row:
        conn.execute("UPDATE sections SET title=?, source_files=?, conventions=? WHERE id=?",
                     (title, source_files, conventions, row["id"]))
        return row["id"]
    return conn.execute(
        "INSERT INTO sections (slug, title, source_files, conventions, sort_order)"
        " VALUES (?,?,?,?,?)", (slug, title, source_files, conventions, sort_order)).lastrowid


def ensure_table(conn, sec_id, sort_order):
    header = json.dumps(["Source", "English"])
    row = conn.execute("SELECT id FROM tables WHERE section_id=? AND header=?",
                       (sec_id, header)).fetchone()
    if row:
        return row["id"]
    return conn.execute(
        "INSERT INTO tables (section_id, subgroup, header, col_map, groups, sort_order)"
        " VALUES (?,?,?,?,?,?)",
        (sec_id, "", header, json.dumps(["source", "english"]), 1, sort_order)).lastrowid


def classify(src):
    return len(src) <= MAX_SHORT and not any(c in SENT_END for c in src)


def main(argv):
    if len(argv) < 1:
        sys.stderr.write(__doc__)
        return 1
    path = Path(argv[0])
    data = json.loads(path.read_text(encoding="utf-8"))

    if isinstance(data, dict) and "pairs" in data:
        pairs = data["pairs"]
        conv = data.get("conventions", "")
        ref = data.get("ref", "")
    else:
        pairs = data
        conv = ""
        ref = ""

    if isinstance(pairs, dict):
        items = list(pairs.items())
    else:
        items = [(a, b) for a, b in pairs]

    msg_sec = data.get("section", "game-text") if isinstance(data, dict) else "game-text"
    short_sec = data.get("short_section", msg_sec + "-terms") if isinstance(data, dict) else msg_sec + "-terms"
    ref = ref or path.name

    conn = sqlite3.connect(str(DB))
    conn.row_factory = sqlite3.Row
    conn.execute("BEGIN IMMEDIATE")

    msg_id = ensure_section(conn, msg_sec, "Game Text - " + ref, ref, conv, 200)
    short_id = ensure_section(conn, short_sec, "Terms - " + ref, ref, conv, 201)
    msg_tbl = ensure_table(conn, msg_id, 0)
    short_tbl = ensure_table(conn, short_id, 0)

    added = {msg_sec: 0, short_sec: 0}
    seen = set()
    for src, eng in items:
        if not isinstance(src, str) or not isinstance(eng, str):
            continue
        src, eng = src.strip(), eng.strip()
        if not src or not eng:
            continue
        sec = short_sec if classify(src) else msg_sec
        tbl = short_tbl if sec == short_sec else msg_tbl
        key = (tbl, src, eng)
        if key in seen:
            continue
        seen.add(key)
        cur = conn.execute(
            "INSERT OR IGNORE INTO terms (table_id, source, english, ref_id, note)"
            " VALUES (?,?,?,?,?)", (tbl, src, eng, ref, None))
        if cur.rowcount:
            added[sec] += 1

    conn.commit()
    conn.close()
    print(json.dumps({"total": len(items), **added}))


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))