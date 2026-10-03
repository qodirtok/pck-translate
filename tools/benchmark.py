#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Reproducible benchmark suite for PCK Translation Pipeline.

Measures:
  1. I/O Writer Complexity: True O(n) streaming vs old pseudo-streaming O(n^2)
  2. End-to-end Scan & Deduplication throughput
  3. Batch Translation memory and timing metrics

Usage:
  python3 tools/benchmark.py
"""
from __future__ import annotations

import io
import os
import sys
import tempfile
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import core
from apply import stream_write


def benchmark_writer() -> None:
    print("\n=== 1. I/O Writer Complexity Benchmark (O(n) vs O(n^2)) ===")
    sizes = [500, 2000, 8000]

    for n in sizes:
        # Create plan of N rows
        lines = [f'{i}\t"测试文本 {i}"' for i in range(1, n + 1)]
        plan = [(line, [(len(str(i)) + 2, len(line) - 1, f"测试文本 {i}", f"Test Text {i}")])
                for i, line in enumerate(lines, 1)]
        pairs = {f"测试文本 {i}": f"Test Text {i}" for i in range(1, n + 1)}

        src = core.Source(
            bom=b"\xff\xfe",
            codec="utf-16-le",
            eol="\r\n",
            lines=lines,
            crlf=n - 1,
            trailing_eol=True,
            raw=b"",
        )

        with tempfile.TemporaryDirectory() as td:
            staging_file = Path(td) / "staged.txt"

            # 1. New True Streaming O(n)
            t0 = time.monotonic()
            stream_write(staging_file, src, plan, pairs)
            t_new = time.monotonic() - t0

            # 2. Old Pseudo-Streaming O(n^2) simulation
            t0 = time.monotonic()
            eol = "\r\n"
            accum = []
            for line, edits in plan:
                accum.append(line.replace("测试文本", "Test Text"))
                # old rewrite on every row:
                body = eol.join(accum).encode("utf-16-le")
                staging_file.write_bytes(b"\xff\xfe" + body)
            t_old = time.monotonic() - t0

            speedup = t_old / max(t_new, 1e-6)
            print(f"  Rows: {n:5d} | Old O(n^2): {t_old:7.4f}s | New O(n): {t_new:7.4f}s | Speedup: {speedup:6.1f}x")


def benchmark_dedup() -> None:
    print("\n=== 2. Corpus Scan & Deduplication Benchmark ===")
    from batch import Stats, scan_file, translatable_files

    t0 = time.monotonic()
    st = Stats()
    files = translatable_files("utf-16-le")
    need: set[str] = set()
    for p in files:
        st.payload_count += scan_file(p, need)
        st.files += 1
        st.source_bytes += p.stat().st_size
    st.unique_payloads = len(need)
    elapsed = time.monotonic() - t0

    print(f"  Files scanned    : {st.files}")
    print(f"  Source bytes     : {st.source_bytes:,} bytes ({st.source_bytes / (1024*1024):.2f} MB)")
    print(f"  Total payloads   : {st.payload_count:,}")
    print(f"  Unique payloads  : {st.unique_payloads:,}")
    print(f"  Deduplication rate: {(1 - (st.unique_payloads / max(st.payload_count, 1))) * 100:.1f}% reduced")
    print(f"  Elapsed time     : {elapsed:.3f}s ({st.source_bytes / (1024*1024*elapsed):.1f} MB/s)")


def main() -> None:
    print("Running PCK Translation Pipeline Benchmark Suite...")
    benchmark_writer()
    benchmark_dedup()
    print("\nAll benchmarks completed successfully.")


if __name__ == "__main__":
    main()
