#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Apply a pairs file to a source, streaming row-by-row into staging.

True streaming: the staging file handle is opened once, the BOM is written
once, and each resolved row is appended to a buffer that is flushed every
FLUSH_BYTES. The accumulated output is never rewritten, so writing a file of
N rows costs O(N) bytes of I/O, not O(N^2).

Flow:

    current/<rel>  ->  Translate/.staging/<rel>  ->  audit  ->  Translate/<rel>

A crash, a timeout, or an untranslated payload leaves the partial file in
.staging/ and never touches Translate/. Promotion is an atomic os.replace(),
so Translate/ only ever holds a complete, audited file.

Pairs that match the glossary DB are filled automatically, so a pairs file only
needs the genuinely new terms.

Usage:
  python3 tools/apply.py --src current/configs/foo.txt --pairs foo.jsonl
  python3 tools/apply.py --src current/configs/foo.txt --pairs foo.jsonl --resume
  python3 tools/apply.py --src current/configs/foo.txt --pairs foo.jsonl --dry-run
"""
from __future__ import annotations

import json
import os
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import core
from audit import audit as audit_pair

ROOT = Path(__file__).resolve().parent.parent
STAGING = ROOT / "Translate" / ".staging"

# Flush the write buffer every this many bytes. 64 KB keeps the number of
# write() syscalls low without holding a large file in memory.
FLUSH_BYTES = int(os.environ.get("PCK_FLUSH_BYTES", str(64 * 1024)))


def resolve_pairs(path: Path) -> tuple[dict[str, str], list[tuple[str, str, str]]]:
    """Return (mapping, new_terms) where new_terms is [(source, english, section)]."""
    pairs: dict[str, str] = {}
    new_terms: list[tuple[str, str, str]] = []
    section_default = path.stem
    # A pair may omit "source" and be keyed by English instead. Resolving those
    # needs a reverse index; build it lazily and only if such a pair exists.
    needs_reverse = False
    raw_lines = path.read_text(encoding="utf-8").splitlines()
    for line in raw_lines:
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        rec = json.loads(line)
        if not (rec.get("source") or "").strip():
            needs_reverse = True
            break
    db_rows: dict[str, str] = {}
    if needs_reverse:
        with core.Glossary() as g:
            db_rows = g.reverse()
    for n, line in enumerate(raw_lines, 1):
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
        if core.has_cjk(eng):
            raise SystemExit(f"pairs line {n}: English still contains CJK: {eng!r}")
        if not src:
            src = db_rows.get(eng, "")
            if not src:
                sys.stderr.write(
                    f"pairs line {n}: no source given and no DB row for "
                    f"english={eng!r}, skipped\n")
                continue
        pairs[core.norm(src)] = eng
        new_terms.append((src, eng, section))
    if not pairs:
        raise SystemExit(f"no usable pairs in {path}")
    return pairs, new_terms


def db_lookup(payloads: list[str]) -> dict[str, str]:
    """Exact-match glossary lookup. Deterministic: newest decision wins."""
    with core.Glossary() as g:
        return g.lookup(payloads)


def build_plan(lines: list[str], fmt: str, pairs: dict[str, str],
               from_db: dict[str, str]) -> tuple[list[tuple[str, list[tuple[int, int, str, str]]]], list[str]]:
    """Return (plan, missing). plan is [(line, [(start, end, payload, english)])]."""
    plan: list[tuple[str, list[tuple[int, int, str, str]]]] = []
    missing: list[str] = []
    for line in lines:
        edits: list[tuple[int, int, str, str]] = []
        for start, end, payload in core.spans(line, fmt):
            if not core.has_cjk(payload):
                continue
            key = core.norm(payload)
            eng = pairs.get(key) or from_db.get(payload)
            if eng is None:
                missing.append(payload)
            else:
                edits.append((start, end, payload, core.norm(eng)))
        plan.append((line, edits))
    return plan, missing


def stream_write(staging: Path, src: core.Source,
                 plan: list[tuple[str, list[tuple[int, int, str, str]]]],
                 pairs: dict[str, str],
                 skip: int = 0) -> tuple[int, int, int]:
    """Write the plan to `staging` sequentially. Returns (applied, from_pairs, from_memory).

    `skip` rows are already on disk from a previous run (--resume).

    The BOM is written once and every row is appended to a buffer that is
    flushed every FLUSH_BYTES. The accumulated output is never rewritten, so
    the total bytes written for N rows is O(N), not O(N^2).
    """
    applied = from_pairs = from_memory = 0
    buf = bytearray()
    eol_b = src.eol.encode(src.codec)
    last = len(plan) - 1
    with staging.open("wb") as fh:
        fh.write(src.bom)
        for i, (line, edits) in enumerate(plan):
            if i < skip:
                continue
            if edits:
                new_line = line
                for start, end, payload, eng in sorted(edits, key=lambda e: -e[0]):
                    new_line = new_line[:start] + eng + new_line[end:]
                    if core.norm(payload) in pairs:
                        from_pairs += 1
                    else:
                        from_memory += 1
                applied += 1
                buf += new_line.encode(src.codec)
            else:
                buf += line.encode(src.codec)
            # Reproduce the source's terminator exactly: present between
            # lines, and present after the last line only if it was there.
            if i != last or src.trailing_eol:
                buf += eol_b
            if len(buf) >= FLUSH_BYTES:
                fh.write(buf)
                buf.clear()
        if buf:
            fh.write(buf)
        fh.flush()
        os.fsync(fh.fileno())
    return applied, from_pairs, from_memory


def count_staged_lines(staging: Path, src: core.Source) -> int:
    """How many rows are already on disk, for --resume."""
    if not staging.is_file():
        return 0
    raw = staging.read_bytes()
    if not raw:
        return 0
    text = raw.decode("utf-16" if src.codec.startswith("utf-16") else src.codec,
                      errors="replace")
    return len(text.split(src.eol))


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

    final = ROOT / "Translate" / rel
    staging = STAGING / rel

    source = core.load(src)
    lines = source.lines
    fmt = core.guess_format(src, lines)
    pairs, new_terms = resolve_pairs(
        Path(pairs_arg) if Path(pairs_arg).is_absolute() else ROOT / pairs_arg)

    # Everything the file needs that is not already in the pairs file.
    need: list[str] = []
    seen: set[str] = set()
    for line in lines:
        for _, _, payload in core.spans(line, fmt):
            if core.has_cjk(payload) and payload not in seen:
                seen.add(payload)
                need.append(payload)
    from_db = db_lookup([p for p in need if core.norm(p) not in pairs])

    plan, missing = build_plan(lines, fmt, pairs, from_db)
    if missing:
        uniq = sorted(set(missing))
        sys.stderr.write(f"{len(uniq)} payloads have no English (first 20):\n")
        for p in uniq[:20]:
            sys.stderr.write(f"  {p}\n")
        sys.stderr.write("Refusing to write a half-translated file.\n")
        return 1

    skip = count_staged_lines(staging, source) if resume else 0
    if resume and skip:
        sys.stderr.write(f"resuming: {skip} rows already staged\n")

    if not dry:
        staging.parent.mkdir(parents=True, exist_ok=True)
        applied, from_pairs, from_memory = stream_write(
            staging, source, plan, pairs, skip=skip)
    else:
        applied = sum(1 for _, e in plan if e)
        from_pairs = from_memory = 0

    print(f"source      : {rel.as_posix()}")
    print(f"staging     : {staging.relative_to(ROOT).as_posix()}")
    print(f"destination : {final.relative_to(ROOT).as_posix()}")
    print(f"format      : {fmt}   codec: {source.codec}   "
          f"bom: {source.bom.hex() or '(none)'}")
    print(f"lines       : {len(lines)}   "
          f"eol: {'CRLF' if source.eol == chr(13)+chr(10) else 'LF'}")
    print(f"payloads    : {len(need)} unique")
    print(f"applied     : {applied} rows ({from_pairs} from pairs, "
          f"{from_memory} from glossary)")

    if dry:
        print("\n--dry-run: nothing written")
        return 0

    # Audit the staged file in-process. No second Python process, and the
    # destination is never visible under Translate/ until it passes.
    r = audit_pair(src, staging)
    ok = (r["bom_match"] and r["enc_match"] and r["line_match"]
          and r["crlf_match"] and r["id_mismatch"] == 0
          and r["ph_mismatch"] == 0 and not r["ph_reorder_lines"]
          and r["cjk_remaining"] == 0
          and r["tws_mismatch"] == 0 and r["quote_parity_bad"] == 0)
    if not ok:
        for k, v in r.items():
            if k not in ("src", "dst"):
                print(f"  {k}: {v}")
        sys.stderr.write(
            "audit FAILED on staging output - Translate/ not touched, "
            "staging kept for inspection\n")
        return 1

    final.parent.mkdir(parents=True, exist_ok=True)
    os.replace(staging, final)
    print(f"promoted    : {final.relative_to(ROOT).as_posix()}")

    if new_terms:
        import subprocess
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
