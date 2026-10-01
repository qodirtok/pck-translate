#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Create a glossary section, mirroring what import_markdown would produce."""
import sqlite3
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
conn = sqlite3.connect(str(ROOT / "memory" / "glossary.db"))

slug, title, source_files, conventions = sys.argv[1:5]
if len(sys.argv) < 5:
    sys.stderr.write(__doc__)
    raise SystemExit(2)

row = conn.execute(
    "SELECT id, title FROM sections WHERE slug=?", (slug,)
).fetchone()
if row:
    print(f"section already exists: {slug} (id {row[0]}, title {row[1]})")
else:
    order = conn.execute(
        "SELECT COALESCE(MAX(sort_order), 0) + 1 FROM sections"
    ).fetchone()[0]
    conn.execute(
        "INSERT INTO sections (slug, title, source_files, conventions, sort_order)"
        " VALUES (?,?,?,?,?)",
        (slug, title, source_files, conventions, order),
    )
    conn.commit()
    sec_id = conn.execute(
        "SELECT id FROM sections WHERE slug=?", (slug,)
    ).fetchone()[0]
    print(f"created section: {slug} (id {sec_id}, sort_order {order})")

conn.close()