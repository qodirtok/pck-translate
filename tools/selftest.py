#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Negative-test harness for tools/audit.py.

Replaces the ad-hoc throwaway scripts used during earlier validation rounds.
Each case takes a real source/destination pair, applies one mutation, and asserts
that audit.py exits non-zero. A control case asserts an unmodified pair still
exits zero, so a broken audit.py that always fails is caught too.

Usage:
  python3 tools/selftest.py
  python3 tools/selftest.py --verbose

Exit 0 = every case behaved as expected. Exit 1 = at least one case did not.
"""
from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
STEM = "_selftest.txt"

# A real pair: small, UTF-16LE+BOM, CRLF, mixed placeholder types.
SRC_TEXT = (
    "#_index\r\n"
    "#_begin\r\n"
    '1\t"未知的任务错误"\r\n'
    '2\t"声望不满足要求"\r\n'
    '3\t"已达上限，无法完成"\r\n'
    '4\t"恢复 %d/%d HP"\r\n'
    '5\t"^fff600Locked"\r\n'
    '6\t"%s 技能提升到了 %d 级"\r\n'
)
DST_TEXT = (
    "#_index\r\n"
    "#_begin\r\n"
    '1\t"Unknown quest error"\r\n'
    '2\t"Reputation requirement not met"\r\n'
    '3\t"Limit reached, cannot complete"\r\n'
    '4\t"Restore %d/%d HP"\r\n'
    '5\t"^fff600Locked"\r\n'
    '6\t"%s skill increased to level %d"\r\n'
)


def write_pair_bytes(dst_text: str) -> bytes:
    return b"\xff\xfe" + dst_text.encode("utf-16-le")


def write_pair(dst_text: str) -> tuple[Path, Path]:
    sd = ROOT / "current" / "configs" / STEM
    dd = ROOT / "Translate" / "configs" / STEM
    for p in (sd, dd):
        if p.exists():
            p.unlink()
    sd.write_bytes(b"\xff\xfe" + SRC_TEXT.encode("utf-16-le"))
    dd.write_bytes(write_pair_bytes(dst_text))
    return sd, dd


def cleanup() -> None:
    for p in (ROOT / "current" / "configs" / STEM, ROOT / "Translate" / "configs" / STEM):
        if p.exists():
            p.unlink()


def audit() -> tuple[int, str]:
    r = subprocess.run(
        [sys.executable, "tools/audit.py", f"Translate/configs/{STEM}"],
        cwd=ROOT, capture_output=True, text=True)
    return r.returncode, r.stdout + r.stderr


def flags(out: str) -> dict[str, str]:
    return {k: v for k, v in re.findall(r"\s+(\w+): (.*)", out)
            if k in ("bom_match", "enc_match", "line_match", "crlf_match",
                     "id_mismatch", "ph_mismatch", "cjk_remaining",
                     "tws_mismatch", "quote_parity_bad")}


CASES: list[tuple[str, object, bool]] = [
    # (name, mutation, expect_pass)
    ("control (unmodified)", lambda t: t, True),
    ("CJK reintroduced", lambda t: t.replace('"Unknown quest error"', '"未知的任务错误"', 1), False),
    ("one line dropped", lambda t: "\r\n".join(t.split("\r\n")[:-3]), False),
    ("ID renumbered", lambda t: t.replace('2\t"', '9\t"', 1), False),
    ("placeholder %d removed", lambda t: t.replace('"Restore %d/%d HP"', '"Restore HP"', 1), False),
    ("extra %s added", lambda t: t.replace('"^fff600Locked"', '"^fff600%s Locked"', 1), False),
    ("%s and %d swapped", lambda t: t.replace('"%s skill increased to level %d"',
                                             '"%d skill increased to level %s"', 1), False),
    ("CRLF converted to LF", lambda t: t.replace("\r\n", "\n"), False),
    ("stray ASCII quote", lambda t: t.replace('"^fff600Locked"', '"^fff600Lo"cked"', 1), False),
    ("trailing space added", lambda t: t.replace('"^fff600Locked"', '"^fff600Locked" ', 1), False),
    ("color code mangled", lambda t: t.replace("^fff600", "^fff60", 1), False),
    ("BOM stripped", "NO_BOM", False),
    ("destination with no source", "NO_SOURCE", False),
]


def main(argv: list[str]) -> int:
    verbose = "--verbose" in argv
    failures: list[str] = []
    try:
        for name, mut, expect_pass in CASES:
            if mut == "NO_BOM":
                sd, dd = write_pair(DST_TEXT)
                dd.write_bytes(DST_TEXT.encode("utf-16-le"))  # no BOM
            elif mut == "NO_SOURCE":
                sd, dd = write_pair(DST_TEXT)
                sd.unlink()
            else:
                sd, dd = write_pair(mut(DST_TEXT))

            # A mutation that changes nothing cannot prove anything. Assert the
            # destination actually differs, so a typo in a case name or fixture
            # can never masquerade as a passing negative test. The control case
            # and the no-source case are defined by NOT changing the file.
            mutates_dst = mut not in ("NO_BOM", "NO_SOURCE") and not expect_pass
            if mutates_dst and dd.read_bytes() == write_pair_bytes(DST_TEXT):
                failures.append(f"{name} (mutation was a no-op)")
                print(f"  [FAIL] {name:32s} mutation did not change the file")
                continue
            code, out = audit()
            passed = code == 0
            ok = passed == expect_pass
            verdict = "ok" if ok else "FAIL"
            detail = flags(out) if verbose else {}
            print(f"  [{verdict}] {name:32s} exit={code} "
                  f"{'passed' if expect_pass else 'rejected'}"
                  + (f"  {detail}" if detail else ""))
            if not ok:
                failures.append(name)
    finally:
        cleanup()

    print()
    if failures:
        print(f"FAILED: {len(failures)} case(s) did not behave as expected:")
        for f in failures:
            print(f"  - {f}")
        return 1
    print(f"all {len(CASES)} cases behaved as expected")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
