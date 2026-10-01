#!/usr/bin/env python3
"""Glossary storage and lookup for the translation project.

Single source of truth: ``memory/glossary.db`` (SQLite, WAL mode).
``memory/GLOSSARY.md`` is a generated mirror, rebuilt with ``glossary.py export``.

Subagents may write directly through ``add`` / ``add-batch``. Both are
transactional and idempotent, so concurrent workers cannot clobber each other
the way they could with a shared markdown file.

Usage:
  glossary.py init                       create the schema
  glossary.py import-md [--md PATH]      parse the markdown into the database
  glossary.py export [--md PATH]         rebuild the markdown mirror
  glossary.py lookup QUERY [--section S] [--limit N]
  glossary.py add --source S --english E --section S [--id N] [--note T]
  glossary.py add-batch [--file PATH]    read JSON lines from a file or stdin
  glossary.py sections                   list sections
  glossary.py stats                      row counts
"""

from __future__ import annotations

import argparse
import json
import re
import sqlite3
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
DB_PATH = HERE / "glossary.db"
DEFAULT_MD = HERE / "GLOSSARY.md"

SCHEMA = """
CREATE TABLE IF NOT EXISTS sections (
  id           INTEGER PRIMARY KEY,
  slug         TEXT NOT NULL UNIQUE,
  title        TEXT NOT NULL,
  source_files TEXT NOT NULL DEFAULT '',
  conventions  TEXT NOT NULL DEFAULT '',
  sort_order   INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS tables (
  id         INTEGER PRIMARY KEY,
  section_id INTEGER NOT NULL REFERENCES sections(id),
  subgroup   TEXT NOT NULL DEFAULT '',
  header     TEXT NOT NULL,
  col_map    TEXT NOT NULL,
  groups     INTEGER NOT NULL DEFAULT 1,
  sort_order INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS idx_tables_section ON tables(section_id);

CREATE TABLE IF NOT EXISTS terms (
  id         INTEGER PRIMARY KEY,
  table_id   INTEGER NOT NULL REFERENCES tables(id),
  source     TEXT NOT NULL,
  english    TEXT NOT NULL,
  ref_id     TEXT,
  note       TEXT,
  slot       INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  UNIQUE (table_id, source, english, ref_id, slot)
);

CREATE INDEX IF NOT EXISTS idx_terms_source   ON terms(source);
CREATE INDEX IF NOT EXISTS idx_terms_english  ON terms(english);
CREATE INDEX IF NOT EXISTS idx_terms_table    ON terms(table_id);

CREATE TABLE IF NOT EXISTS notes (
  id         INTEGER PRIMARY KEY,
  section_id INTEGER NOT NULL REFERENCES sections(id),
  kind       TEXT NOT NULL DEFAULT 'p',
  body       TEXT NOT NULL,
  sort_order INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX IF NOT EXISTS idx_notes_section ON notes(section_id);

-- terms_fts is an EXTERNAL CONTENT table: every column it indexes must exist
-- in the content table, and lookups read those columns directly. The content
-- table `terms` has no `section` or `subgroup` column, so declaring them here
-- made every MATCH and every 'rebuild' fail with "no such column: T.section".
-- Section and subgroup are derived from table_id at query time instead.
--
-- Tokenizer note: `trigram` cannot index strings shorter than 3 characters, so
-- a MATCH on a one- or two-character CJK term (e.g. '宝物', '绑定') returns no
-- rows even when the term is present. That is a property of the tokenizer, not
-- a missing entry. Use an exact `WHERE source = ?` query for short terms.
CREATE VIRTUAL TABLE IF NOT EXISTS terms_fts USING fts5(
  source, english,
  content='terms', content_rowid='id', tokenize='trigram'
);

CREATE TRIGGER IF NOT EXISTS terms_ai AFTER INSERT ON terms BEGIN
  INSERT INTO terms_fts(rowid, source, english)
  VALUES (new.id, new.source, new.english);
END;

CREATE TRIGGER IF NOT EXISTS terms_ad AFTER DELETE ON terms BEGIN
  INSERT INTO terms_fts(terms_fts, rowid, source, english)
  VALUES ('delete', old.id, old.source, old.english);
END;

CREATE TRIGGER IF NOT EXISTS terms_au AFTER UPDATE ON terms BEGIN
  INSERT INTO terms_fts(terms_fts, rowid, source, english)
  VALUES ('delete', old.id, old.source, old.english);
  INSERT INTO terms_fts(rowid, source, english)
  VALUES (new.id, new.source, new.english);
END;
"""

# A note heading ends in a colon and carries nothing after it, so
# "Notes on specific decisions:" is a heading while "Note: the source
# uses curly quotes ..." is prose.
NOTE_HEAD_RE = re.compile(r"^Notes?( on [A-Za-z].*?)?:\s*$",
                         re.IGNORECASE)
RULE_RE = re.compile(r"^-{3,}\s*$")


def connect() -> sqlite3.Connection:
    conn = sqlite3.connect(str(DB_PATH), timeout=30)
    conn.row_factory = sqlite3.Row
    conn.execute("PRAGMA journal_mode=WAL")
    conn.execute("PRAGMA synchronous=NORMAL")
    conn.execute("PRAGMA busy_timeout=30000")
    conn.execute("PRAGMA foreign_keys=ON")
    return conn


def init() -> None:
    conn = connect()
    try:
        conn.executescript(SCHEMA)
        conn.commit()
    finally:
        conn.close()


# --------------------------------------------------------------------------
# markdown parsing
# --------------------------------------------------------------------------

ROW_RE = re.compile(r"^\s*\|(.*)\|\s*$")


def slugify(title: str) -> str:
    slug = re.sub(r"[^a-z0-9]+", "-", title.lower()).strip("-")
    return slug or "section"


def split_row(line: str) -> list[str] | None:
    m = ROW_RE.match(line)
    return [c.strip() for c in m.group(1).split("|")] if m else None


def field_for(header_cell: str) -> str:
    """Map one header cell to the term field it holds."""
    k = re.sub(r"[^a-z]", "", header_cell.lower())
    if k == "id":
        return "ref_id"
    if k.startswith("source"):
        return "source"
    if k.startswith("english"):
        return "english"
    return "note"  # "Block" and anything unrecognised

def column_groups(header: list[str]) -> list[list[tuple[str, int]]]:
    """Split a header into independent column groups.

    A table like ``| ID | Source | English | ID | Source | English |``
    packs two ID/Source/English sets side by side. Each set becomes its own
    group so no row is lost to a repeated field name.

    A trailing column that cannot stand alone (``| English | Source A |
    Source B |``) is folded into the group before it as a note column.
    """
    fields = [field_for(h) for h in header]
    groups: list[list[tuple[str, int]]] = []
    cur: list[tuple[str, int]] = []
    for i, f in enumerate(fields):
        if f in [g[0] for g in cur]:
            groups.append(cur)
            cur = []
        cur.append((f, i))
    if cur:
        groups.append(cur)

    usable = lambda g: {f for f, _ in g} >= {"source", "english"}
    merged: list[list[tuple[str, int]]] = []
    for g in groups:
        if merged and not usable(g):
            merged[-1].extend(g)
        else:
            merged.append(list(g))

    out: list[list[tuple[str, int]]] = []
    for g in merged:
        seen: set[str] = set()
        deduped: list[tuple[str, int]] = []
        for f, i in g:
            if f in seen:
                f = "note"
            seen.add(f)
            deduped.append((f, i))
        out.append(deduped)
    return out


def read_table(lines: list[str], start: int) -> tuple[dict | None, int]:
    """Parse one pipe table. Returns (table_spec, next_index)."""
    raw: list[list[str]] = []
    i = start
    while i < len(lines):
        cells = split_row(lines[i])
        if cells is None:
            break
        raw.append(cells)
        i += 1
    if not raw:
        return None, i

    header = raw[0]
    body = [r for r in raw[1:]
            if not all(c and set(c) <= set("-: ") for c in r)]
    groups = column_groups(header)
    usable = [g for g in groups
              if {f for f, _ in g} >= {"source", "english"}]
    if not usable:
        return None, i

    if len(usable) > 1:
        # One physical table packing several column groups side by side.
        # Keep the wide header, prefix each field with its slot, and record the
        # slot on every entry so export can put the groups back in one row.
        terms = []
        for row in body:
            row = row + [""] * (len(header) - len(row))
            for slot, g in enumerate(usable):
                rec = {f"{slot}_{f}": row[idx] for f, idx in g}
                rec["slot"] = slot
                if rec[f"{slot}_source"] and rec[f"{slot}_english"]:
                    terms.append(rec)
        if not terms:
            return None, i
        return [{"header": [header[idx] for g in usable for _, idx in g],
                 "col_map": [f"{slot}_{f}" for slot, g in enumerate(usable)
                             for f, _ in g],
                 "groups": len(usable),
                 "terms": terms}], i

    specs = []
    for group in usable:
        col_map = [f for f, _ in group]
        terms = []
        for row in body:
            row = row + [""] * (len(header) - len(row))
            rec = {}
            for field, idx in group:
                rec[field] = row[idx]
            if rec.get("source") and rec.get("english"):
                terms.append(rec)
        if terms:
            specs.append({"header": [header[idx] for _, idx in group],
                          "col_map": col_map, "terms": terms})
    if not specs:
        return None, i

    return specs, i


def parse_markdown(text: str) -> list[dict]:
    lines = text.split("\n")
    sections: list[dict] = []
    i = 0
    while i < len(lines):
        if not lines[i].startswith("## "):
            i += 1
            continue

        sec = {
            "title": lines[i][3:].strip(),
            "slug": slugify(lines[i][3:].strip()),
            "source_files": "",
            "conventions": "",
            "blocks": [],
        }
        i += 1
        subgroup = ""
        pos = 0
        bullets: list[str] = []
        para: list[str] = []

        def flush() -> None:
            nonlocal pos, bullets
            for b in bullets:
                sec["blocks"].append({"kind": "note", "note_kind": "b",
                                      "body": b, "pos": pos})
                pos += 1
            bullets = []

        def flush_para() -> None:
            """Store a run of prose lines as one note, newlines kept."""
            nonlocal pos, para
            if para:
                sec["blocks"].append({"kind": "note", "note_kind": "p",
                                      "body": "\n".join(para), "pos": pos})
                pos += 1
                para = []

        while i < len(lines) and not lines[i].startswith("## "):
            raw = lines[i]
            s = raw.strip()

            if s.startswith("### "):
                flush()
                flush_para()
                subgroup = s[4:].strip()
                i += 1
                continue

            if s.startswith("|"):
                flush_para()
                specs, i = read_table(lines, i)
                for spec in specs:
                    sec["blocks"].append({"kind": "table", "spec": spec,
                                          "subgroup": subgroup, "pos": pos})
                    pos += 1
                continue

            if s.startswith("- "):
                bullets.append(s[2:].strip())
                i += 1
                continue

            if not s:
                flush()
                flush_para()
                i += 1
                continue

            if RULE_RE.match(s):
                flush()
                flush_para()
                sec["blocks"].append({"kind": "note", "note_kind": "hr",
                                      "body": "---", "pos": pos})
                pos += 1
                i += 1
                continue

            if s.startswith("Source:"):
                flush()
                flush_para()
                sec["source_files"] = ", ".join(re.findall(r"`([^`]+)`", s))
                sec["blocks"].append({"kind": "note", "note_kind": "source",
                                      "body": s[len("Source:"):].strip(),
                                      "pos": pos})
                pos += 1
                i += 1
                continue

            if s.startswith("Convention:"):
                flush()
                flush_para()
                sec["conventions"] = s[len("Convention:"):].strip()
                sec["blocks"].append({"kind": "note", "note_kind": "conv",
                                      "body": sec["conventions"], "pos": pos})
                pos += 1
                i += 1
                continue

            if NOTE_HEAD_RE.match(s):
                flush()
                flush_para()
                sec["blocks"].append({"kind": "note", "note_kind": "h",
                                      "body": s, "pos": pos})
                pos += 1
                i += 1
                continue

            if bullets and not para:
                # continuation of the bullet above; flush() has not run yet
                indent = raw[:len(raw) - len(raw.lstrip())]
                bullets[-1] += "\n" + indent + s
                i += 1
                continue

            flush()
            # prose runs until a blank line, then lands as one note
            para.append(s)
            i += 1

        flush()
        flush_para()
        sections.append(sec)
    return sections


def import_markdown(md_path: Path, reset: bool = True) -> dict:
    sections = parse_markdown(md_path.read_text(encoding="utf-8"))
    conn = connect()
    try:
        conn.execute("BEGIN IMMEDIATE")
        if reset:
            # The FTS triggers fire per row and re-enter the statement, which
            # breaks DELETE on a table with a content-sync shadow table.
            # Drop them, wipe, then rebuild.
            for trig in ("terms_ai", "terms_ad", "terms_au"):
                conn.execute(f"DROP TRIGGER IF EXISTS {trig}")
            for t in ("terms", "notes", "tables", "sections"):
                conn.execute(f"DELETE FROM {t}")
            conn.executescript(SCHEMA)

        counts = {"sections": 0, "tables": 0, "terms": 0, "notes": 0}
        for order, sec in enumerate(sections):
            sec_id = conn.execute(
                "INSERT INTO sections (slug, title, source_files, conventions,"
                " sort_order) VALUES (?,?,?,?,?)",
                (sec["slug"], sec["title"], sec["source_files"],
                 sec["conventions"], order),
            ).lastrowid
            counts["sections"] += 1

            for block in sec["blocks"]:
                if block["kind"] == "note":
                    conn.execute(
                        "INSERT INTO notes (section_id, kind, body, sort_order)"
                        " VALUES (?,?,?,?)",
                        (sec_id, block["note_kind"], block["body"], block["pos"]),
                    )
                    counts["notes"] += 1
                    continue

                spec = block["spec"]
                table_id = conn.execute(
                    "INSERT INTO tables (section_id, subgroup, header,"
                    " col_map, groups, sort_order) VALUES (?,?,?,?,?,?)",
                    (sec_id, block["subgroup"], json.dumps(spec["header"]),
                     json.dumps(spec["col_map"]),
                     spec.get("groups", 1), block["pos"]),
                ).lastrowid
                counts["tables"] += 1
                groups = spec.get("groups", 1)
                for t in spec["terms"]:
                    slot = t.get("slot", 0)
                    if groups > 1:
                        pre = f"{slot}_"
                        src = t.get(pre + "source", "")
                        eng = t.get(pre + "english", "")
                        rid = t.get(pre + "ref_id")
                        nte = t.get(pre + "note")
                    else:
                        src, eng = t.get("source", ""), t.get("english", "")
                        rid, nte = t.get("ref_id"), t.get("note")
                    conn.execute(
                        "INSERT OR IGNORE INTO terms (table_id, source, english,"
                        " ref_id, note, slot) VALUES (?,?,?,?,?,?)",
                        (table_id, src, eng, rid or None, nte or None, slot),
                    )
                    counts["terms"] += 1
        conn.commit()
        return counts
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()


# --------------------------------------------------------------------------
# export
# --------------------------------------------------------------------------

def hoist_subgroup_notes(items: list[dict]) -> list[dict]:
    """Move a note that sits between a ``###`` heading and its table up to
    just after the heading, so the heading reads as a label for the prose
    rather than for the table.
    """
    out: list[dict] = []
    i = 0
    while i < len(items):
        it = items[i]
        if (it["_k"] == "note" and it["kind"] == "p"
                and i + 1 < len(items)
                and items[i + 1]["_k"] == "table"
                and items[i + 1]["subgroup"]):
            tbl = items[i + 1]
            out.append({**it, "subgroup": tbl["subgroup"]})
            out.append(tbl)
            i += 2
            continue
        out.append(it)
        i += 1
    return out


def export_markdown(db_path: Path = DB_PATH,
                    out_path: Path = DEFAULT_MD) -> Path:
    conn = sqlite3.connect(str(db_path))
    conn.row_factory = sqlite3.Row
    try:
        sections = conn.execute(
            "SELECT * FROM sections ORDER BY sort_order"
        ).fetchall()

        out: list[str] = []
        w = out.append
        w("# Translation Memory \u2014 project glossary\n\n")
        w("Permanent terminology store for this localization project. Every"
          " new term that gets\ntranslated MUST be recorded here so the next"
          " file translates consistently and fast.\n\n")
        w("Rules:\n\n")
        w("- One source term = one English term. Never re-invent an existing"
          " entry.\n")
        w("- Reuse an existing entry verbatim if the same concept appears"
          " again.\n")
        w("- If a source term is ambiguous in context, ask before adding a"
          " new entry.\n")
        w("- Keep this file sorted per section, append new sections at the"
          " bottom.\n")
        w("- Do not delete existing entries. Correct them in place only when"
          " clearly wrong.\n\n")
        w("---\n")

        for sec in sections:
            w(f"\n## {sec['title']}\n")

            notes = conn.execute(
                "SELECT * FROM notes WHERE section_id=? ORDER BY sort_order",
                (sec["id"],),
            ).fetchall()
            tables = conn.execute(
                "SELECT * FROM tables WHERE section_id=? ORDER BY sort_order",
                (sec["id"],),
            ).fetchall()

            items = ([dict(n, _k="note") for n in notes]
                     + [dict(t, _k="table") for t in tables])
            items.sort(key=lambda r: r["sort_order"])

            # A "### heading" belongs to the prose that follows it, not to the
            # table. Parsing gives the table the subgroup while the prose that
            # sat between the heading and the table has no subgroup, so lift
            # those notes up to just after the heading.
            items = hoist_subgroup_notes(items)

            last_subgroup = None
            idx = 0
            while idx < len(items):
                it = items[idx]
                idx += 1

                sg = it.get("subgroup")
                if sg and sg != last_subgroup:
                    w(f"\n### {sg}\n\n")
                    last_subgroup = sg

                if it["_k"] == "note":
                    kind = it["kind"]
                    if kind == "b":
                        # consecutive bullets stay glued together
                        run = [it["body"]]
                        while idx < len(items) and items[idx]["_k"] == "note" \
                                and items[idx]["kind"] == "b":
                            run.append(items[idx]["body"])
                            idx += 1
                        w("\n" + "\n".join(f"- {b}" for b in run) + "\n\n")
                        continue
                    if kind == "h":
                        w(f"\n{it['body']}\n\n")
                    elif kind == "hr":
                        w("\n---\n\n")
                    elif kind == "conv":
                        w(f"\nConvention: {it['body']}")
                    elif kind == "source":
                        # the stored body already carries its own backticks
                        w(f"\nSource: {it['body'].strip()}\n")
                    else:
                        w(f"\n{it['body']}\n\n")
                    continue

                if it["_k"] == "table":
                    header = json.loads(it["header"])
                col_map = json.loads(it["col_map"])
                groups = it["groups"]
                rows = conn.execute(
                    "SELECT * FROM terms WHERE table_id=? ORDER BY id",
                    (it["id"],),
                ).fetchall()
                w("| " + " | ".join(header) + " |\n")
                w("| " + " | ".join(["---"] * len(header)) + " |\n")
                if groups > 1:
                    # one slot per term row; a slot-0 row opens the next line
                    per = len(col_map) // groups
                    fields = [f.split("_", 1)[1] for f in col_map[:per]]
                    cells: list[str] = []
                    for r in rows:
                        if r["slot"] == 0 and cells:
                            cells += [""] * (len(header) - len(cells))
                            w("| " + " | ".join(cells) + " |\n")
                            cells = []
                        cells += ["" if r[f] is None else str(r[f])
                                  for f in fields]
                    if cells:
                        cells += [""] * (len(header) - len(cells))
                        w("| " + " | ".join(cells) + " |\n")
                else:
                    for r in rows:
                        cells = ["" if r[f] is None else str(r[f])
                                 for f in col_map]
                        w("| " + " | ".join(cells) + " |\n")
                w("\n")

        text = re.sub(r"\n{3,}", "\n\n", "".join(out))
        out_path.write_text(text.rstrip("\n"), encoding="utf-8")
        return out_path
    finally:
        conn.close()


# --------------------------------------------------------------------------
# lookup / add
# --------------------------------------------------------------------------

def pick_table(conn: sqlite3.Connection, section_slug: str) -> int:
    row = conn.execute(
        "SELECT t.id FROM tables t JOIN sections s ON s.id = t.section_id"
        " WHERE s.slug = ? ORDER BY t.sort_order LIMIT 1",
        (section_slug,),
    ).fetchone()
    if row:
        return row["id"]
    sec = conn.execute(
        "SELECT id FROM sections WHERE slug=?", (section_slug,)
    ).fetchone()
    if sec is None:
        raise SystemExit(f"unknown section: {section_slug}")
    return conn.execute(
        "INSERT INTO tables (section_id, subgroup, header, col_map,"
        " sort_order) VALUES (?,?,?,?,999)",
        (sec["id"], "", json.dumps(["Source", "English"]),
         json.dumps(["source", "english"])),
    ).lastrowid


def lookup(query: str, section: str | None = None,
           limit: int = 20) -> list[sqlite3.Row]:
    conn = connect()
    try:
        where = ["(t.source = ? OR t.english = ?)"]
        args: list = [query, query]
        if section:
            where.append("s.slug = ?")
            args.append(section)
        exact = conn.execute(
            "SELECT t.source, t.english, t.ref_id, t.note, tb.subgroup,"
            " s.title AS section, s.slug FROM terms t"
            " JOIN tables tb ON tb.id = t.table_id"
            " JOIN sections s ON s.id = tb.section_id"
            f" WHERE {' AND '.join(where)} ORDER BY s.sort_order, tb.sort_order,"
            " t.id LIMIT ?",
            args + [limit],
        ).fetchall()
        if len(exact) >= limit:
            return exact

        where = ["(t.source LIKE ? OR t.english LIKE ?)"]
        args = [f"%{query}%", f"%{query}%"]
        if section:
            where.append("s.slug = ?")
            args.append(section)
        fuzzy = conn.execute(
            "SELECT t.source, t.english, t.ref_id, t.note, tb.subgroup,"
            " s.title AS section, s.slug FROM terms t"
            " JOIN tables tb ON tb.id = t.table_id"
            " JOIN sections s ON s.id = tb.section_id"
            f" WHERE {' AND '.join(where)} ORDER BY s.sort_order, tb.sort_order,"
            " t.id LIMIT ?",
            args + [limit - len(exact)],
        ).fetchall()
        return exact + fuzzy
    finally:
        conn.close()


def add_term(source: str, english: str, section: str,
             ref_id: str | None = None, note: str | None = None) -> str:
    conn = connect()
    try:
        conn.execute("BEGIN IMMEDIATE")
        table_id = pick_table(conn, section)
        cur = conn.execute(
            "INSERT OR IGNORE INTO terms (table_id, source, english, ref_id,"
            " note) VALUES (?,?,?,?,?)",
            (table_id, source, english, ref_id, note),
        )
        conn.commit()
        return "added" if cur.rowcount else "exists"
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()


def add_batch(records: list[dict], default_section: str | None = None) -> dict:
    conn = connect()
    added = exists = 0
    try:
        conn.execute("BEGIN IMMEDIATE")
        cache: dict[str, int] = {}
        for rec in records:
            source = (rec.get("source") or "").strip()
            english = (rec.get("english") or "").strip()
            if not source or not english:
                continue
            section = (rec.get("section") or default_section or "").strip()
            if not section:
                raise SystemExit(
                    "every record needs a \"section\" slug"
                    " (python3 memory/glossary.py sections)"
                )
            if section not in cache:
                cache[section] = pick_table(conn, section)
            cur = conn.execute(
                "INSERT OR IGNORE INTO terms (table_id, source, english,"
                " ref_id, note) VALUES (?,?,?,?,?)",
                (cache[section], source, english, rec.get("ref_id"),
                 rec.get("note")),
            )
            added += 1 if cur.rowcount else 0
            exists += 0 if cur.rowcount else 1
        conn.commit()
        return {"added": added, "exists": exists}
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()


# --------------------------------------------------------------------------
# cli
# --------------------------------------------------------------------------

def main(argv: list[str] | None = None) -> int:
    p = argparse.ArgumentParser(prog="glossary.py")
    sub = p.add_subparsers(dest="cmd", required=True)

    sub.add_parser("init")
    imp = sub.add_parser("import-md")
    imp.add_argument("--md", type=Path, default=DEFAULT_MD)
    exp = sub.add_parser("export")
    exp.add_argument("--md", type=Path, default=DEFAULT_MD)
    lk = sub.add_parser("lookup")
    lk.add_argument("query")
    lk.add_argument("--section", default=None)
    lk.add_argument("--limit", type=int, default=20)
    ad = sub.add_parser("add")
    ad.add_argument("--source", required=True)
    ad.add_argument("--english", required=True)
    ad.add_argument("--section", required=True)
    ad.add_argument("--id", dest="ref_id", default=None)
    ad.add_argument("--note", default=None)
    ab = sub.add_parser("add-batch")
    ab.add_argument("--file", type=Path, default=None)
    ab.add_argument("--section", default=None)
    sub.add_parser("sections")
    sub.add_parser("stats")

    args = p.parse_args(argv)

    if args.cmd == "init":
        init()
        print(f"schema ready at {DB_PATH}")
    elif args.cmd == "import-md":
        print(json.dumps(import_markdown(args.md)))
    elif args.cmd == "export":
        print(f"wrote {export_markdown(out_path=args.md)}")
    elif args.cmd == "lookup":
        rows = lookup(args.query, args.section, args.limit)
        if not rows:
            print(f"no match for {args.query!r}")
            return 1
        w = max(len(r["source"]) for r in rows)
        for r in rows:
            rid = f"[{r['ref_id']}] " if r["ref_id"] else ""
            note = f"  ({r['note']})" if r["note"] else ""
            print(f"{rid}{r['source']:<{w}}  ->  {r['english']}{note}"
                  f"   <{r['section']}>")
    elif args.cmd == "add":
        print(add_term(args.source, args.english, args.section,
                       args.ref_id, args.note))
    elif args.cmd == "add-batch":
        text = (args.file.read_text(encoding="utf-8") if args.file
                else sys.stdin.read())
        recs = [json.loads(l) for l in text.splitlines()
                if l.strip() and not l.strip().startswith("#")]
        print(json.dumps(add_batch(recs, args.section)))
    elif args.cmd == "sections":
        conn = connect()
        try:
            for r in conn.execute(
                "SELECT s.slug, s.title, COUNT(t.id) AS n FROM sections s"
                " JOIN tables tb ON tb.section_id = s.id"
                " LEFT JOIN terms t ON t.table_id = tb.id"
                " GROUP BY s.id ORDER BY s.sort_order"
            ):
                print(f"{r['slug']:<30} {r['n']:>5}  {r['title']}")
        finally:
            conn.close()
    elif args.cmd == "stats":
        conn = connect()
        try:
            for tbl in ("sections", "tables", "terms", "notes"):
                n = conn.execute(f"SELECT COUNT(*) FROM {tbl}").fetchone()[0]
                print(f"{tbl:<10} {n}")
        finally:
            conn.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
