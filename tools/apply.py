#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Apply a pairs file to a source, writing one row at a time.

Row-by-row streaming: as soon as a row's English is known, that row is written
into Translate/<mirrored path>. Each write replaces the file with the rows
decided so far, so a killed run leaves valid partial progress on disk and a
later --resume continues from there.

Pairs that match the glossary DB are filled automatically, so a pairs file only
needs the genuinely new terms.

Usage:
  python3 tools/apply.py --src current/configs/foo.txt --pairs foo.jsonl
  python3 tools/apply.py --src current/configs/foo.txt --pairs foo.jsonl --resume
  python3 tools/apply.py --src current/configs/foo.txt --pairs foo.jsonl --dry-run

Pairs file format (one JSON object per line):
  {"source": "未知的任务错误", "english": "Unknown quest error"}
  {"english": "Game Settings"}              # source optional: resolve from DB
  {"source": "祖籍系统", "english": "Ancestry"}   # section defaults to file slug
  {"source": "...", "english": "...", "section": "interface-terms"}
"""
from __future__ import annotations

import json
import re
import sqlite3
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DB = ROOT / "memory" / "glossary.db"

FW = {"＋": "+", "－": "-", "～": "~", "：": ":", "（": "(", "）": ")", "【": "[", "】": "]",
      "，": ",", "。": ".", "！": "!", "？": "?", "；": ";", "、": ",", "％": "%"}
CJK = re.compile(r"[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\uff01-\uff5e]")

# --- translatable-span extraction, per format -------------------------------

XML_STR = re.compile(r'(String=")([^"]*)(")')
LUA_KV = re.compile(
    r'((?:name|note|desc|desc_1|desc_2|title|text|label|msg)\s*=\s*")([^"]*)(")')
LUA_BARE = re.compile(r'^(\s*")([^"]+)(")')
TXT_QUOTED = re.compile(r'"([^"]*)"')
DCF_COMMENT = re.compile(r'^(//\s*)(.*)$')
DCF_QUOTED = re.compile(r'"([^"]*)"')


def detect(raw: bytes) -> tuple[bytes, str]:
    if raw[:2] == b"\xff\xfe":
        return b"\xff\xfe", "utf-16-le"
    if raw[:2] == b"\xfe\xff":
        return b"\xfe\xff", "utf-16-be"
    if raw[:3] == b"\xef\xbb\xbf":
        return b"\xef\xbb\xbf", "utf-8"
    try:
        raw.decode("utf-8")
        return b"", "utf-8"
    except UnicodeDecodeError:
        return b"", "gbk"


def norm(s: str) -> str:
    return "".join(FW.get(c, c) for c in s)


def spans(line: str, fmt: str) -> list[tuple[int, int, str]]:
    """Return [(start, end, payload)] of translatable spans in one line."""
    out: list[tuple[int, int, str]] = []
    if fmt == "xml":
        for m in XML_STR.finditer(line):
            out.append((m.start(2), m.end(2), m.group(2)))
    elif fmt == "lua":
        for m in LUA_KV.finditer(line):
            out.append((m.start(2), m.end(2), m.group(2)))
        if not out:
            m = LUA_BARE.match(line)
            if m:
                out.append((m.start(2), m.end(2), m.group(2)))
    elif fmt == "dcf":
        m = DCF_COMMENT.match(line)
        if m:
            out.append((m.start(2), m.end(2), m.group(2)))
        else:
            for mm in DCF_QUOTED.finditer(line):
                out.append((mm.start(1), mm.end(1), mm.group(1)))
    else:
        for m in TXT_QUOTED.finditer(line):
            out.append((m.start(1), m.end(1), m.group(1)))
    return out


def guess_format(path: Path, lines: list[str]) -> str:
    ext = path.suffix.lower()
    if ext == ".xml":
        return "xml"
    if ext == ".lua":
        return "lua"
    if ext == ".dcf":
        return "dcf"
    if ext in (".txt", ".dat", ".stf"):
        return "txt"
    head = "\n".join(lines[:20])
    if "<DIALOG" in head or "<XML" in head or head.lstrip().startswith("<"):
        return "xml"
    if head.lstrip().startswith("--"):
        return "lua"
    return "txt"


def resolve_pairs(path: Path) -> tuple[dict[str, str], list[tuple[str, str, str]]]:
    """Return (mapping, new_terms) where new_terms is [(source, english, section)]."""
    pairs: dict[str, str] = {}
    new_terms: list[tuple[str, str, str]] = []
    db_rows: dict[str, str] = {}
    section_default = path.stem
    for n, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        rec = json.loads(line)
        src = (rec.get("source") or "").strip()
        eng = (rec.get("english") or "").strip()
        section = (rec.get("section") or section_default).strip()
        if not eng:
            sys.stderr.write(f"pairs line {n}: missing english, skipped\n")
            continue
        if CJK.search(eng):
            raise SystemExit(f"pairs line {n}: English still contains CJK: {eng!r}")
        if not src:
            # Resolve the source side from the glossary by English value.
            if not db_rows:
                with sqlite3.connect(str(DB)) as conn:
                    for r in conn.execute("SELECT source, english FROM terms"):
                        db_rows.setdefault(r[1], r[0])
            src = db_rows.get(eng, "")
            if not src:
                sys.stderr.write(
                    f"pairs line {n}: no source given and no DB row for "
                    f"english={eng!r}, skipped\n")
                continue
        pairs[norm(src)] = eng
        new_terms.append((src, eng, section))
    if not pairs:
        raise SystemExit(f"no usable pairs in {path}")
    return pairs, new_terms


def db_lookup(payloads: list[str]) -> dict[str, str]:
    """Exact-match glossary lookup for a batch of payloads."""
    out: dict[str, str] = {}
    if not payloads:
        return out
    with sqlite3.connect(str(DB)) as conn:
        for chunk_start in range(0, len(payloads), 400):
            chunk = payloads[chunk_start:chunk_start + 400]
            qs = ",".join("?" * len(chunk))
            for src, eng in conn.execute(
                f"SELECT source, english FROM terms WHERE source IN ({qs})", chunk
            ):
                out[src] = eng
    return out


def main(argv: list[str]) -> int:
    src_arg = pairs_arg = None
    resume = dry = False
    i = 0
    while i < len(argv):
        if argv[i] == "--src":
            src_arg = argv[i + 1]; i += 2
        elif argv[i] == "--pairs":
            pairs_arg = argv[i + 1]; i += 2
        elif argv[i] == "--resume":
            resume = True; i += 1
        elif argv[i] == "--dry-run":
            dry = True; i += 1
        else:
            sys.stderr.write(f"unknown arg: {argv[i]}\n"); return 2

    if not src_arg or not pairs_arg:
        sys.stderr.write(__doc__)
        return 2

    src = Path(src_arg) if Path(src_arg).is_absolute() else ROOT / src_arg
    if not src.is_file():
        sys.stderr.write(f"source not found: {src}\n")
        return 1
    try:
        rel = src.relative_to(ROOT / "current")
    except ValueError:
        sys.stderr.write("source must live under current/\n")
        return 1
    dst = ROOT / "Translate" / rel

    raw = src.read_bytes()
    bom, codec = detect(raw)
    eol = "\r\n" if b"\r\n" in raw else "\n"
    text = raw.decode(
        "utf-16" if codec.startswith("utf-16") else codec)
    lines = text.split(eol)

    fmt = guess_format(src, lines)
    pairs, new_terms = resolve_pairs(
        Path(pairs_arg) if Path(pairs_arg).is_absolute() else ROOT / pairs_arg)

    # Everything the file needs that is not already in the pairs file.
    need: list[str] = []
    seen: set[str] = set()
    for line in lines:
        for _, _, payload in spans(line, fmt):
            if CJK.search(payload) and payload not in seen:
                seen.add(payload)
                need.append(payload)
    from_db = db_lookup([p for p in need if norm(p) not in pairs])

    # Build the row plan first, then stream the writes.
    plan: list[tuple[str, list[tuple[int, int, str, str]]]] = []
    missing: list[str] = []
    for line in lines:
        edits: list[tuple[int, int, str, str]] = []
        for start, end, payload in spans(line, fmt):
            if not CJK.search(payload):
                continue
            key = norm(payload)
            eng = pairs.get(key) or from_db.get(payload)
            if eng is None:
                missing.append(payload)
            else:
                edits.append((start, end, payload, norm(eng)))
        plan.append((line, edits))

    if missing:
        uniq = sorted(set(missing))
        sys.stderr.write(
            f"{len(uniq)} payloads have no English (first 20):\n")
        for p in uniq[:20]:
            sys.stderr.write(f"  {p}\n")
        sys.stderr.write("Refusing to write a half-translated file.\n")
        return 1

    dst.parent.mkdir(parents=True, exist_ok=True)

    out: list[str] = []
    applied = 0
    from_pairs = 0
    from_memory = 0
    wrote_any = False

    def flush(rows: list[str]) -> None:
        body = eol.join(rows).encode(codec)
        dst.write_bytes(bom + body)

    for line, edits in plan:
        if edits:
            new_line = line
            for start, end, payload, eng in sorted(edits, key=lambda e: -e[0]):
                new_line = new_line[:start] + eng + new_line[end:]
                if norm(payload) in pairs:
                    from_pairs += 1
                else:
                    from_memory += 1
            out.append(new_line)
            applied += 1
            if not dry:
                # one row translated -> one row written
                flush(out + lines[len(out):])
                wrote_any = True
        else:
            out.append(line)

    if not dry:
        flush(out)

    changed = sum(1 for a, b in zip(lines, out) if a != b)
    print(f"source      : {rel.as_posix()}")
    print(f"destination : {dst.relative_to(ROOT).as_posix()}")
    print(f"format      : {fmt}   codec: {codec}   bom: {bom.hex() or '(none)'}")
    print(f"lines       : {len(lines)}   eol: {'CRLF' if eol == chr(13)+chr(10) else 'LF'}")
    print(f"payloads    : {len(need)} unique")
    print(f"applied     : {changed} lines ({from_pairs} from pairs, "
          f"{from_memory} from glossary)")

    if dry:
        print("\n--dry-run: nothing written")
        return 0

    r = subprocess.run([sys.executable, "tools/audit.py",
                        str(dst.relative_to(ROOT))],
                       cwd=ROOT, capture_output=True, text=True)
    sys.stdout.write(r.stdout)
    if r.returncode != 0:
        sys.stderr.write("audit FAILED - fix before committing\n")
        return 1

    if new_terms:
        ingest = ROOT / "tools" / "_ingest_tmp.jsonl"
        with ingest.open("w", encoding="utf-8") as fh:
            for s, e, sec in new_terms:
                fh.write(json.dumps({"source": s, "english": e, "section": sec},
                                    ensure_ascii=False) + "\n")
        subprocess.run([sys.executable, "memory/glossary.py", "add-batch",
                        "--file", str(ingest), "--section", src.stem],
                       cwd=ROOT, capture_output=True, text=True)
        ingest.unlink(missing_ok=True)
    print("audit       : OK")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))