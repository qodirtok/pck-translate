#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generic translation runner.

Collapses the inspect -> tm -> translate -> write -> verify cycle into one call.
The translator supplies only the unknown payloads as a JSONL pairs file; this
script handles encoding, the mirrored output path, the write, and the audit.

Usage:
  python3 tools/translate.py --src current/configs/task_err.txt \
      --pairs /tmp/task_err_pairs.jsonl
  python3 tools/translate.py --src current/configs/task_err.txt --pairs p.jsonl --dry-run

Pairs file format (one JSON object per line):
  {"source": "未知的任务错误", "english": "Unknown quest error"}

Rules enforced here:
  - the output path mirrors the source under Translate/
  - the output keeps the source's BOM, encoding and line endings
  - a pair whose English still contains CJK is rejected
  - the source file is never modified
  - audit.py must report OK on the result, or the run is a failure
"""
from __future__ import annotations

import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

# Fullwidth -> ASCII, matching the convention already used across Translate/.
FW = {"＋": "+", "－": "-", "～": "~", "：": ":", "（": "(", "）": ")", "【": "[", "】": "]",
      "，": ",", "。": ".", "！": "!", "？": "?", "；": ";", "、": ",", "％": "%"}
CJK = re.compile(r"[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\uff01-\uff5e]")


def norm(s: str) -> str:
    return "".join(FW.get(c, c) for c in s)


def detect(raw: bytes) -> tuple[bytes, str]:
    """Return (bom, codec) so the write reproduces the source exactly."""
    if raw[:2] == b"\xff\xfe":
        return b"\xff\xfe", "utf-16-le"
    if raw[:2] == b"\xfe\xff":
        return b"\xfe\xff", "utf-16-be"
    if raw[:3] == b"\xef\xbb\xbf":
        return b"\xef\xbb\xbf", "utf-8"
    return b"", "utf-8"


def payload_of(line: str) -> str | None:
    """Return the translatable payload of a line, or None for headers/blank."""
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
        # Normalise the key so a pair written with fullwidth punctuation still
        # resolves against a source line that uses the same fullwidth form.
        pairs[norm(src)] = eng
    if not pairs:
        raise SystemExit(f"no usable pairs in {path}")
    return pairs


def main(argv: list[str]) -> int:
    src_arg = pairs_arg = None
    dry = False
    i = 0
    while i < len(argv):
        if argv[i] == "--src":
            src_arg = argv[i + 1]; i += 2
        elif argv[i] == "--pairs":
            pairs_arg = argv[i + 1]; i += 2
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
    text = raw.decode("utf-16" if codec.startswith("utf-16") else "utf-8")
    lines = text.split("\r\n")

    pairs = load_pairs(Path(pairs_arg) if Path(pairs_arg).is_absolute() else ROOT / pairs_arg)

    out, used, missing = [], set(), []
    for line in lines:
        if line.startswith("//"):
            out.append(line)
            continue
        p = payload_of(line)
        if p is None:
            out.append(line)
            continue
        # Match on the normalized payload: the source may carry fullwidth
        # punctuation (e.g. U+FF0C) while the pair file uses ASCII, and the
        # two must still resolve to the same entry.
        key = norm(p)
        if key in pairs:
            eng = norm(pairs[key])
            used.add(key)
            out.append(line.replace(p, eng))
        else:
            if CJK.search(p):
                missing.append(p)
            out.append(line)

    new_text = "\r\n".join(out)

    if missing:
        sys.stderr.write(
            f"{len(missing)} payloads have no pair and still contain CJK "
            f"(first 10): {missing[:10]}\n")
        sys.stderr.write("Refusing to write a half-translated file.\n")
        return 1

    unchanged = new_text == text
    print(f"source      : {src}")
    print(f"destination : {dst}")
    print(f"bom         : {bom.hex() or '(none)'}   codec: {codec}")
    print(f"lines       : {len(lines)}   crlf: {text.count(chr(13) + chr(10))}")
    print(f"pairs given : {len(pairs)}   applied: {len(used)}")
    print(f"already-en  : {len(pairs) - len(used)} (reuse from a previous batch)")

    if dry:
        print("\n--dry-run: nothing written")
        return 0

    dst.parent.mkdir(parents=True, exist_ok=True)
    body = new_text.encode(codec)
    dst.write_bytes(bom + body)
    print(f"wrote {dst} ({len(bom) + len(body)} bytes)")

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
