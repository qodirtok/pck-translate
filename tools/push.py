#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Push working tree to origin/main.

Called automatically at the end of every translation session so nothing is lost.

Usage:
  python3 tools/push.py                 # stage all, commit, push
  python3 tools/push.py -m "custom msg"  # custom commit message
  python3 tools/push.py --dry-run        # show what would be committed

Never touches current/ — only Translate/, memory/, tools/, AGENTS.md, etc.
"""
from __future__ import annotations

import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def git(*args: str, check: bool = True) -> str:
    r = subprocess.run(["git", *args], cwd=ROOT, capture_output=True, text=True)
    if check and r.returncode != 0:
        sys.stderr.write(r.stdout + r.stderr)
        raise SystemExit(f"git {' '.join(args)} failed")
    return r.stdout.strip()


def main(argv: list[str]) -> int:
    dry = "--dry-run" in argv
    msg = None
    if "-m" in argv:
        i = argv.index("-m")
        if i + 1 < len(argv):
            msg = argv[i + 1]
    if not msg:
        msg = "auto-sync: translation progress"

    status = git("status", "--porcelain")
    if not status.strip():
        print("nothing to commit (working tree clean)")
        return 0

    if dry:
        print("would commit:")
        for line in status.splitlines():
            print("  " + line)
        return 0

    # Stage safe paths (everything except current/)
    git("add", "Translate/", "memory/", "tools/", "AGENTS.md", "PRD.md", ".gitignore")
    git("commit", "-m", msg)
    git("push", "origin", "main")
    log = git("log", "--oneline", "-1")
    print("pushed: " + log)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))