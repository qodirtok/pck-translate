#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Batch translation driver: one round-trip for the whole corpus.

The per-file tools make the translator do one collect -> translate -> apply
cycle per file. Over ~1,400 files that is ~1,400 round-trips and ~1,400 audit
process spawns. This tool collapses it:

    collect  ->  ONE pairs file with every unknown payload, deduplicated
                 (the translator fills it in a single pass)
    apply    ->  every file streamed to .staging/ in parallel,
                 ONE audit pass over all of them,
                 then atomic promotion of everything that passed

Glossary hits never reach the translator at all, and identical payloads are
translated once no matter how many files or rows they appear in.

Usage:
  python3 tools/batch.py collect --out tools/pairs_batch.jsonl
  python3 tools/batch.py collect --encoding utf-16-le --out tools/pairs_u16.jsonl
  python3 tools/batch.py apply --pairs tools/pairs_batch.jsonl --jobs 4
  python3 tools/batch.py apply --pairs tools/pairs_batch.jsonl --dry-run
  python3 tools/batch.py apply --pairs tools/pairs_batch.jsonl --resume
  python3 tools/batch.py status

Exit codes: 0 clean, 1 partial (some files not promoted), 2 usage error.
"""
from __future__ import annotations

import argparse
import json
import os
import sys
import time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import core
from apply import build_plan, resolve_pairs, stream_write
from audit import audit as audit_pair

ROOT = Path(__file__).resolve().parent.parent
CURRENT = ROOT / "current"
TRANSLATE = ROOT / "Translate"
STAGING = TRANSLATE / ".staging"
INDEX = ROOT / "tools" / ".batch_index.json"

JOBS = int(os.environ.get("PCK_JOBS", str(min(8, (os.cpu_count() or 2)))))

# Never translated, by standing decision. See AGENTS.md.
#   badwords.txt is a server-side chat blocklist, not display text; translating
#   it changes which chat strings the server blocks rather than localising
#   anything.
EXCLUDE_NAMES = {"badwords.txt"}

# These store one payload across several physical lines. A line-based reader
# splits a payload into fragments, translates each fragment as if it were a
# sentence, and produces output that is wrong in a way the CJK audit cannot
# detect. They are skipped until a payload-aware reader exists.
MULTILINE_UNSAFE = {"skillstr.txt", "skillgbk.txt", "instance.txt", "buff_str.txt"}


class Stats:
    """Counters for one run. Not thread-safe; only touched by the main thread."""

    def __init__(self) -> None:
        self.files = 0
        self.source_bytes = 0
        self.payload_count = 0      # every translatable payload occurrence
        self.unique_payloads = 0   # deduplicated across the whole run
        self.glossary_hits = 0
        self.cache_hits = 0
        self.llm_payloads = 0       # what the translator has to decide
        self.llm_batches = 0
        self.workers = JOBS
        self.retries = 0
        self.translation_time = 0.0
        self.write_time = 0.0
        self.audit_time = 0.0
        self.total_time = 0.0


def translatable_files(encoding: str | None = None) -> list[Path]:
    """Every source file this tool is allowed to touch."""
    out: list[Path] = []
    for p in sorted(CURRENT.rglob("*")):
        if not p.is_file() or p.name in EXCLUDE_NAMES or p.name in MULTILINE_UNSAFE:
            continue
        s = core.load(p)
        if s.codec == "unknown":
            continue  # binary
        if encoding and s.codec != encoding:
            continue
        out.append(p)
    return out


def scan_file(p: Path, need: set[str]) -> int:
    """Add every unique CJK payload of `p` to `need`. Returns payload count."""
    s = core.load(p)
    fmt = core.guess_format(p, s.lines)
    seen: set[str] = set()
    n = 0
    for line in s.lines:
        for _, _, payload in core.spans(line, fmt):
            if core.has_cjk(payload):
                n += 1
                if payload not in seen:
                    seen.add(payload)
                    need.add(payload)
    return n


def cmd_collect(args: argparse.Namespace) -> int:
    t0 = time.monotonic()
    st = Stats()
    files = translatable_files(args.encoding)
    need: set[str] = set()
    for p in files:
        st.payload_count += scan_file(p, need)
        st.files += 1
        st.source_bytes += p.stat().st_size
    st.unique_payloads = len(need)

    with core.Glossary() as g:
        found = g.lookup(sorted(need))
    st.glossary_hits = sum(1 for p in need if p in found)
    unknown = sorted(p for p in need if p not in found)
    st.llm_payloads = len(unknown)
    st.llm_batches = (len(unknown) + args.batch - 1) // args.batch if args.batch else 0

    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w", encoding="utf-8") as fh:
        for i, src in enumerate(unknown, 1):
            # The translator fills in "english". Carrying an explicit id makes a
            # batched response unambiguous even if a payload repeats.
            fh.write(json.dumps({"id": i, "source": src}, ensure_ascii=False) + "\n")

    # Record which files collect covered, so apply touches exactly these.
    INDEX.write_text(json.dumps({
        "files": [p.relative_to(ROOT).as_posix() for p in files],
        "encoding": args.encoding,
        "pairs": str(out),
    }, ensure_ascii=False), encoding="utf-8")

    st.translation_time = time.monotonic() - t0
    st.total_time = st.translation_time
    try:
        out_rel = out.relative_to(ROOT).as_posix()
    except ValueError:
        out_rel = str(out)
    report(st, extra=f"\npairs written : {out_rel}\n"
                     f"index written : {INDEX.relative_to(ROOT).as_posix()}")
    return 0


def target_files() -> list[Path]:
    """Files apply should touch: the ones collect indexed, else a full walk."""
    if INDEX.is_file():
        try:
            data = json.loads(INDEX.read_text(encoding="utf-8"))
            return [ROOT / f for f in data.get("files", [])]
        except (json.JSONDecodeError, OSError, KeyError):
            pass
    return translatable_files()


def write_one(src: Path, pairs: dict[str, str], resume: bool) -> tuple[Path, bool, list[str], dict]:
    """Stage one file. Returns (rel, has_cjk_to_do, missing, timing)."""
    rel = src.relative_to(CURRENT)
    t0 = time.monotonic()
    s = core.load(src)
    fmt = core.guess_format(src, s.lines)

    need: list[str] = []
    seen: set[str] = set()
    for line in s.lines:
        for _, _, payload in core.spans(line, fmt):
            if core.has_cjk(payload) and payload not in seen:
                seen.add(payload)
                need.append(payload)
    if not need:
        return rel, False, [], {"write_time": 0.0, "source": s, "fmt": fmt}

    with core.Glossary() as g:
        from_db = g.lookup([p for p in need if core.norm(p) not in pairs])
    plan, missing = build_plan(s.lines, fmt, pairs, from_db)
    if missing:
        return rel, True, sorted(set(missing)), {"write_time": 0.0}

    staging = STAGING / rel
    staging.parent.mkdir(parents=True, exist_ok=True)
    from apply import count_staged_lines
    skip = count_staged_lines(staging, s) if resume else 0
    stream_write(staging, s, plan, pairs, skip=skip)
    return rel, True, [], {"write_time": time.monotonic() - t0, "source": s, "fmt": fmt}


def cmd_apply(args: argparse.Namespace) -> int:
    t0 = time.monotonic()
    st = Stats()
    pairs, new_terms = resolve_pairs(Path(args.pairs))
    files = target_files()
    if args.limit:
        files = files[:args.limit]

    # Phase 1: stage every file. Files own disjoint paths, so writing them
    # concurrently is safe; no shared file and no SQLite write happens here.
    staged: list[tuple[Path, core.Source]] = []
    blocked: list[tuple[Path, list[str]]] = []
    noop = 0

    def work(src: Path):
        return src, write_one(src, pairs, args.resume)

    if args.jobs > 1 and len(files) > 1:
        with ThreadPoolExecutor(max_workers=args.jobs) as pool:
            results = list(pool.map(work, files))
    else:
        results = [work(p) for p in files]

    for src, (rel, has_work, missing, info) in results:
        st.files += 1
        st.source_bytes += src.stat().st_size
        st.write_time += info.get("write_time", 0.0)
        if missing:
            blocked.append((rel, missing))
        elif has_work:
            staged.append((rel, info["source"]))
        else:
            noop += 1

    # Phase 2: ONE audit pass over everything staged. No process per file.
    ta = time.monotonic()
    passed: list[Path] = []
    failed: list[tuple[Path, dict]] = []
    for rel, s in staged:
        staging = STAGING / rel
        r = audit_pair(CURRENT / rel, staging)
        ok = (r["bom_match"] and r["enc_match"] and r["line_match"]
              and r["crlf_match"] and r["id_mismatch"] == 0
              and r["ph_mismatch"] == 0 and not r["ph_reorder_lines"]
              and r["cjk_remaining"] == 0
              and r["tws_mismatch"] == 0 and r["quote_parity_bad"] == 0)
        (passed if ok else failed).append((staging, r))
    st.audit_time = time.monotonic() - ta

    if args.dry_run:
        print(f"would promote : {len(passed)}")
        print(f"audit failed  : {len(failed)}")
        print(f"blocked       : {len(blocked)}")
        print(f"no work needed: {noop}")
        for rel, missing in blocked[:5]:
            print(f"  blocked {rel}: {len(missing)} payload(s) without English")
        for staging, r in failed[:5]:
            bad = [f"{k}={v}" for k, v in r.items()
                   if k not in ("src", "dst") and k in
                   ("line_match", "crlf_match", "bom_match", "enc_match",
                    "id_mismatch", "ph_mismatch", "cjk_remaining",
                    "tws_mismatch", "quote_parity_bad") and v not in (0, True, [], False)]
            print(f"  audit FAIL {staging.relative_to(ROOT)}: {' '.join(bad)}")
        return 0

    # Phase 3: atomic promotion. Only audited files move, and os.replace on the
    # same filesystem is atomic, so Translate/ never holds a partial file.
    for staging, _ in passed:
        final = TRANSLATE / staging.relative_to(STAGING)
        final.parent.mkdir(parents=True, exist_ok=True)
        os.replace(staging, final)
        print(f"promoted  {final.relative_to(ROOT).as_posix()}")

    # Single glossary writer, one transaction, after every file is done.
    if new_terms:
        st.translation_time = 0.0
        import subprocess
        ingest = ROOT / "tools" / "_ingest_tmp.jsonl"
        seen_pairs: set[tuple[str, str]] = set()
        with ingest.open("w", encoding="utf-8") as fh:
            for s_, e_, sec in new_terms:
                if (s_, e_) in seen_pairs:
                    continue
                seen_pairs.add((s_, e_))
                fh.write(json.dumps({"source": s_, "english": e_, "section": sec},
                                    ensure_ascii=False) + "\n")
        r = subprocess.run([sys.executable, "memory/glossary.py", "add-batch",
                            "--file", str(ingest), "--section", "batch"],
                           cwd=ROOT, capture_output=True, text=True)
        ingest.unlink(missing_ok=True)
        if r.returncode != 0:
            sys.stderr.write("glossary ingest failed:\n" + r.stderr)

    st.total_time = time.monotonic() - t0
    report(st, extra=f"\npromoted      : {len(passed)}\n"
                     f"audit failed  : {len(failed)}\n"
                     f"blocked       : {len(blocked)}\n"
                     f"no work needed: {noop}")
    if failed or blocked:
        print("\nNOT promoted (staging kept):")
        for staging, r in failed[:20]:
            bad = [f"{k}={v}" for k, v in r.items()
                   if k not in ("src", "dst") and k in
                   ("line_match", "crlf_match", "bom_match", "enc_match",
                    "id_mismatch", "ph_mismatch", "cjk_remaining",
                    "tws_mismatch", "quote_parity_bad") and v not in (0, True, [], False)]
            print(f"  audit FAIL {staging.relative_to(ROOT)}: {' '.join(bad)}")
        for rel, missing in blocked[:20]:
            print(f"  no English {rel.as_posix()}: {len(missing)} payload(s)")
        return 1
    return 0


def cmd_status(_args: argparse.Namespace) -> int:
    print(f"staging dir : {STAGING.relative_to(ROOT).as_posix()}")
    left = [p for p in STAGING.rglob("*") if p.is_file()] if STAGING.is_dir() else []
    print(f"staged files: {len(left)}")
    for p in left[:20]:
        print(f"  {p.relative_to(ROOT).as_posix()}")
    with core.Glossary() as g:
        print(f"glossary    : {g.count()} terms")
    if INDEX.is_file():
        print(f"last index  : {INDEX.relative_to(ROOT).as_posix()}")
    return 0


def report(st: Stats, extra: str = "") -> None:
    def s(x: float) -> str:
        return f"{x:.2f}s"

    print("\n--- run report " + "-" * 50)
    print(f"files              : {st.files}")
    print(f"source bytes       : {st.source_bytes:,}")
    print(f"payloads           : {st.payload_count:,}")
    print(f"unique payloads    : {st.unique_payloads:,}")
    print(f"glossary hits      : {st.glossary_hits:,}")
    print(f"llm payloads       : {st.llm_payloads:,}")
    print(f"llm batches        : {st.llm_batches:,}")
    print(f"workers            : {st.workers}")
    print(f"collect            : {s(st.translation_time)}")
    print(f"write              : {s(st.write_time)}")
    print(f"audit              : {s(st.audit_time)}")
    print(f"total              : {s(st.total_time)}")
    print("-" * 62)
    if extra:
        print(extra)


def main(argv: list[str]) -> int:
    ap = argparse.ArgumentParser(
        prog="batch.py", description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)

    c = sub.add_parser("collect", help="collect every unknown payload into one pairs file")
    c.add_argument("--out", default="tools/pairs_batch.jsonl")
    c.add_argument("--encoding", default=None,
                   help="only scan files with this codec (utf-16-le, utf-8, gbk)")
    c.add_argument("--batch", type=int, default=50,
                   help="documentary batch size for the report (default 50)")
    c.set_defaults(func=cmd_collect)

    a = sub.add_parser("apply", help="apply a completed pairs file across the corpus")
    a.add_argument("--pairs", required=True)
    a.add_argument("--jobs", type=int, default=JOBS)
    a.add_argument("--limit", type=int, default=0)
    a.add_argument("--dry-run", action="store_true")
    a.add_argument("--resume", action="store_true",
                   help="keep already-staged rows instead of rewriting them")
    a.set_defaults(func=cmd_apply)

    st = sub.add_parser("status", help="show staging and glossary state")
    st.set_defaults(func=cmd_status)

    args = ap.parse_args(argv)
    try:
        return args.func(args)
    except SystemExit:
        raise
    except KeyboardInterrupt:
        sys.stderr.write("\ninterrupted; staging kept for --resume\n")
        return 130


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))