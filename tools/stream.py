#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Streaming row-by-row translation writer.

Translates one row at a time and writes each translated row to the output
file immediately, so progress is visible and parallel workers can each own a
disjoint row range of the same file.

Usage:
  # Translate a whole file, writing each row as it goes
  python3 tools/stream.py --src current/configs/foo.txt --pairs foo.jsonl

  # Translate only rows 100-199 (0-indexed), appending to an existing output
  python3 tools/stream.py --src current/configs/foo.txt --pairs foo.jsonl \
      --start 100 --end 200

  # Resume: skip rows already translated in the output file
  python3 tools/stream.py --src current/configs/foo.txt --pairs foo.jsonl --resume

Rules:
  - Output path mirrors source under Translate/
  - Output keeps source BOM, encoding, CRLF
  - A row whose English still contains CJK is rejected
  - Source file is never modified
  - audit.py must report OK on the result
"""
from __future__ import annotations

import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

FW = {"＋": "+", "－": "-", "～": "~", "：": ":", "（": "(", "）": ")", "【": "[", "】": "]",
      "，": ",", "。": ".", "！": "!", "？": "?", "；": ";", "、": ",", "％": "%"}
CJK = re.compile(r"[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\uff01-\uff5e]")


def norm(s: str) -> str:
    return "".join(FW.get(c, c) for c in s)


def detect(raw: bytes) -> tuple[bytes, str]:
    if raw[:2] == b"\xff\xfe":
        return b"\xff\xfe", "utf-16-le"
    if raw[:2] == b"\xfe\xff":
        return b"\xfe\xff", "utf-16-be"
    if raw[:3] == b"\xef\xbb\xbf":
        return b"\xef\xbb\xbf", "utf-8"
    return b"", "utf-8"


def payload_of(line: str) -> str | None:
    m = re.match(r"^(?:\d+,?[ \t]+)?(.*)$", line)
    if not m:
        return None
    rest = m.group(1)
    if '"' in rest:
        first, last = rest.find('"'), rest.rfind('"')
        if last > first:
            return rest[first + 1:last]
    return rest.rstrip() or None


def load_pairs(path: Path) -> dict[str, str]:
    pairs: dict[str, str] = {}
    for n, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        line = line.strip()
        if not line:
            continue
        rec = json.loads(line)
        src = (rec.get("source") or "").strip()
        eng = (rec.get("english") or "").strip()
        if not src or not eng:
            sys.stderr.write(f"pairs line {n}: missing source/english, skipped\n")
            continue
        if CJK.search(eng):
            raise SystemExit(f"pairs line {n}: English still contains CJK: {eng!r}")
        pairs[norm(src)] = eng
    if not pairs:
        raise SystemExit(f"no usable pairs in {path}")
    return pairs


def main(argv: list[str]) -> int:
    src_arg = pairs_arg = None
    start = end = None
    resume = False
    i = 0
    while i < len(argv):
        if argv[i] == "--src":
            src_arg = argv[i + 1]; i += 2
        elif argv[i] == "--pairs":
            pairs_arg = argv[i + 1]; i += 2
        elif argv[i] == "--start":
            start = int(argv[i + 1]); i += 2
        elif argv[i] == "--end":
            end = int(argv[i + 1]); i += 2
        elif argv[i] == "--resume":
            resume = True; i += 1
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
    text = raw.decode("utf-16" if codec.startswith("utf-16") else "utf-8")
    lines = text.split("\r\n")

    pairs = load_pairs(Path(pairs_arg) if Path(pairs_arg).is_absolute() else ROOT / pairs_arg)

    # Determine row range
    lo = start if start is not None else 0
    hi = end if end is not None else len(lines)

    # Resume: load already-translated rows from existing output
    existing: dict[int, str] = {}
    if resume and dst.exists():
        draw = dst.read_bytes()
        dbom, dcodec = detect(draw)
        dtext = draw.decode("utf-16" if dcodec.startswith("utf-16") else "utf-8")
        dlines = dtext.split("\r\n")
        for idx, dl in enumerate(dlines):
            if not CJK.search(dl):
                existing[idx] = dl

    out_lines: list[str] = []
    written = 0
    skipped = 0
    missing: list[str] = []

    for idx, line in enumerate(lines):
        if idx < lo or idx >= hi:
            out_lines.append(line)
            continue

        # Already translated (resume)
        if idx in existing:
            out_lines.append(existing[idx])
            skipped += 1
            continue

        if line.startswith("//"):
            out_lines.append(line)
            continue

        p = payload_of(line)
        if p is None:
            out_lines.append(line)
            continue

        key = norm(p)
        if key in pairs:
            eng = norm(pairs[key])
            new_line = line.replace(p, eng)
            out_lines.append(new_line)
            written += 1
            # Write incrementally: flush every row
            dst.parent.mkdir(parents=True, exist_ok=True)
            body = "\r\n".join(out_lines).encode(codec)
            dst.write_bytes(bom + body)
        else:
            if CJK.search(p):
                missing.append(p)
            out_lines.append(line)

    new_text = "\r\n".join(out_lines)

    if missing:
        sys.stderr.write(
            f"{len(missing)} payloads have no pair and still contain CJK "
            f"(first 10): {missing[:10]}\n")
        sys.stderr.write("Refusing to write a half-translated file.\n")
        return 1

    print(f"source      : {src}")
    print(f"destination : {dst}")
    print(f"bom         : {bom.hex() or '(none)'}   codec: {codec}")
    print(f"lines       : {len(lines)}   crlf: {text.count(chr(13) + chr(10))}")
    print(f"range       : [{lo}, {hi})")
    print(f"written     : {written}   skipped(resume): {skipped}")

    r = subprocess.run([sys.executable, "tools/audit.py", str(dst.relative_to(ROOT))],
                       cwd=ROOT, capture_output=True, text=True)
    sys.stdout.write(r.stdout)
    if r.returncode != 0:
        sys.stderr.write("audit FAILED — fix before committing\n")
        return 1
    print("audit       : OK")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
