"""Settle the exact line-break form inside tr3 in/ sources vs need.json keys.

The census showed in/ sources with 0 sentinel strings and 0 raw CR/LF, yet the
inspect output displayed "\\r" sequences. Two possibilities:

  A. payloads carry literal backslash+r text (the game's own in-text line-break
     marker, which normalize() correctly leaves alone because it is not a real
     control character)
  B. something is scrambled between need.json and in/

This reads the same payload from both sides and prints repr() of each so the
actual characters are unambiguous. It also reports what finalize's lookup
needs: do the in/ source strings match the need.json payload keys exactly?
"""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
W = ROOT / ".work" / "tr3"

need = json.loads((W / "need.json").read_text(encoding="utf-8"))
sent_map = need["payloads"]
# sent_to_orig in finalize: {v: k}
sent_to_orig = {v: k for k, v in sent_map.items()}

print("need.json payloads: %d entries" % len(sent_map))
# sample a few keys AND values to see their forms
print()
print("=== first 3 need.json payload entries (repr) ===")
for i, (k, v) in enumerate(list(sent_map.items())[:3]):
    print("entry %d:" % i)
    print("  key  : %r" % k[:120])
    print("  value: %r" % v[:120])
    print("  key has literal backslash-r : %s" % ("\\r" in k))
    print("  key has real CR             : %s" % ("\r" in k))
    print("  key has literal backslash-n : %s" % ("\\n" in k))
    print("  key has real LF             : %s" % ("\n" in k))
    print("  key has <CRLF>/<LF>/<CR>    : %s / %s / %s" % (
        "<CRLF>" in k, "<LF>" in k, "<CR>" in k))

print()
print("=== first 3 in/ source records (repr) ===")
in_files = sorted((W / "in").glob("batch_*.jsonl"))
shown = 0
for inf in in_files:
    for line in inf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        s = r["source"]
        print("%s id=%s:" % (inf.name, r["id"]))
        print("  source: %r" % s[:120])
        print("  has literal backslash-r : %s" % ("\\r" in s))
        print("  has real CR             : %s" % ("\r" in s))
        print("  has literal backslash-n : %s" % ("\\n" in s))
        print("  has real LF             : %s" % ("\n" in s))
        print("  has <CRLF>/<LF>/<CR>    : %s / %s / %s" % (
            "<CRLF>" in s, "<LF>" in s, "<CR>" in s))
        shown += 1
        if shown >= 3:
            break
    if shown >= 3:
        break

print()
print("=== does finalize's lookup work? ===")
# For every in/ record, is the source a key of sent_map (or a value)?
n_key = n_val = n_neither = 0
neither_examples = []
for inf in in_files:
    for line in inf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        s = r["source"]
        if s in sent_map:
            n_key += 1
        elif s in sent_to_orig:
            n_val += 1
        else:
            n_neither += 1
            if len(neither_examples) < 3:
                neither_examples.append((inf.name, r["id"], s[:80]))
print("in/ source is a need.json KEY    : %d" % n_key)
print("in/ source is a need.json VALUE  : %d" % n_val)
print("in/ source matches neither       : %d" % n_neither)
for f, i, s in neither_examples:
    print("  %s/%s: %r" % (f, i, s))

print()
print("=== what does a multi-line payload look like? ===")
# find an in/ source containing a real newline OR a literal backslash sequence
for inf in in_files:
    for line in inf.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        r = json.loads(line)
        s = r["source"]
        if "\n" in s or "\r" in s:
            print("%s id=%s REAL newline/CR found:" % (inf.name, r["id"]))
            print("  %r" % s[:200])
            break
        elif "\\r" in s or "\\n" in s:
            print("%s id=%s literal backslash sequence found:" % (inf.name, r["id"]))
            print("  %r" % s[:200])
            break
    else:
        continue
    break
