#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Build translation batches for a set of config source files.

Extracts every translatable payload (multi-line aware, via mlspan), looks each
up in the glossary, and writes the UNKNOWN payloads as sentinel-normalised
JSONL batches for a translation worker to fill in. Records a manifest so
finalize.py can rebuild each file and promote it.

Usage:
  python3 tools/build.py --files typedef_initial.xml item_ext_prop.txt \
      --out .work/tr

Writes:
  <out>/in/batch_NNN.jsonl   {"id": N, "source": "<sentinel payload>"}
  <out>/need.json            {"payloads": {orig: sentinel}, "file_payloads": {file: [orig]},
                              "payload_files": {orig: [files]}, "batches": {batch: [orig]}}
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import core
import mlspan

ROOT = Path(__file__).resolve().parent.parent
CURRENT = ROOT / "current"


def load(p: Path):
    raw = p.read_bytes()
    bom, codec = core.detect(raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec,
                      errors="replace")
    return text, codec


def main(argv):
    ap = argparse.ArgumentParser()
    ap.add_argument("--files", nargs="+", required=True)
    ap.add_argument("--out", default=".work/tr")
    ap.add_argument("--batch-chars", type=int, default=10000)
    args = ap.parse_args(argv)

    out = ROOT / args.out
    indir = out / "in"
    indir.mkdir(parents=True, exist_ok=True)

    # Gather unknown payloads per file (glossary-resolved).
    file_payloads: dict[str, list[str]] = {}
    payload_files: dict[str, set] = {}
    all_payloads: set[str] = set()
    for f in args.files:
        text, codec = load(CURRENT / "configs" / f)
        segs = mlspan.extract_segments(text)
        pl = []
        for s, e in segs:
            p = text[s:e]
            pl.append(p)
            all_payloads.add(p)
            payload_files.setdefault(p, set()).add(f)
        file_payloads[f] = pl

    with core.Glossary() as g:
        found = g.lookup(sorted(all_payloads))
    unknown = sorted(p for p in all_payloads if p not in found)

    # Sentinel-normalise for one-line batches.
    sent = {p: mlspan.normalize(p) for p in unknown}

    # Batch by source-char budget, preserving deterministic order.
    batches: dict[str, list[str]] = {}
    cur: list[str] = []
    cur_chars = 0
    for p in unknown:
        s = sent[p]
        if cur and cur_chars + len(s) > args.batch_chars:
            cur = []
            cur_chars = 0
        cur.append(p)
        cur_chars += len(s)
        batches[p] = None  # placeholder
    # assign batch ids
    order: list[list[str]] = []
    cur = []
    cur_chars = 0
    for p in unknown:
        s = sent[p]
        if cur and cur_chars + len(s) > args.batch_chars:
            order.append(cur)
            cur = []
            cur_chars = 0
        cur.append(p)
        cur_chars += len(s)
    if cur:
        order.append(cur)

    batch_of: dict[str, str] = {}
    for bi, group in enumerate(order):
        bid = "batch_%03d" % bi
        with (indir / (bid + ".jsonl")).open("w", encoding="utf-8") as fh:
            for i, p in enumerate(group, 1):
                fh.write(json.dumps({"id": i, "source": sent[p]},
                                    ensure_ascii=False) + "\n")
                batch_of[p] = bid

    need = {
        "payloads": sent,
        "file_payloads": {f: sorted(set(pl)) for f, pl in file_payloads.items()},
        "payload_files": {p: sorted(fs) for p, fs in payload_files.items()},
        "batches": {p: batch_of[p] for p in unknown},
        "batch_order": ["batch_%03d" % i for i in range(len(order))],
    }
    (out / "need.json").write_text(
        json.dumps(need, ensure_ascii=False), encoding="utf-8")

    print("files            : %d" % len(args.files))
    print("unique payloads  : %d" % len(all_payloads))
    print("glossary reused  : %d" % (len(all_payloads) - len(unknown)))
    print("unknown          : %d" % len(unknown))
    print("batches          : %d" % len(order))
    print("in dir           : %s" % indir)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
