#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Multi-line-aware translatable-span extraction and rebuild for configs.

The single-line tools in core.py/extract.py/apply.py split a payload on its
physical line, which shatters the multi-line quoted payloads in skillstr.txt,
skillgbk.txt, buff_str.txt and instance.txt. This module works on the FULL
decoded text and returns precise character offsets, so a payload that spans
many physical lines is captured as ONE logical span and a rebuild can replace
it without disturbing any other byte.

Extraction model (uniform across every configs format):
  1. Quoted spans  : DOTALL  "..."  whose content contains CJK. Captures
     single-line and multi-line payloads, XML name=/group0= values, and the
     "河北" instance names.
  2. Unquoted runs : maximal runs of non-structural characters outside any
     claimed quoted span. Captures bare tab-separated labels (toptable),
     // and /* */ comment text, and item_ext_prop doc lines.

Structural characters (never part of a token): quote, tab, CR, LF, {, }.
Every configs file's CJK lives in translatable display text; the only
non-translatable content (asset paths, bone sockets, numeric fields) carries
no CJK, so extracted coverage should reach 100% of the file's CJK.

Multi-line safety: a real line break inside a payload is rendered to a
sentinel (<CRLF>/<LF>/<CR>) before translation and restored afterwards, so the
translator reproduces the exact line structure and the line-count audit holds.
Literal backslash escapes (\\r, \\n) are ordinary content tokens and are left
untouched.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import core

# Structural delimiters for the unquoted-token pass. A quote is structural
# here too, so leftover quote characters around a claimed span never merge two
# neighbouring tokens into one bogus payload.
STRUCTURAL = set('"\t\n\r{}')

# Real line-break sentinels. Private-use-adjacent readable tokens that cannot
# occur in the game text; validated on the way back in.
SENT = {"\r\n": "<CRLF>", "\n": "<LF>", "\r": "<CR>"}
_UNSENT = [("<CRLF>", "\r\n"), ("<LF>", "\n"), ("<CR>", "\r")]


def has_cjk(s: str) -> bool:
    return core.has_cjk(s)


def extract_segments(text: str) -> list[tuple[int, int]]:
    """Return sorted, non-overlapping (start, end) char spans of every
    translatable segment in `text`. Offsets index into `text` directly."""
    segs: list[tuple[int, int]] = []
    n = len(text)
    claimed = bytearray(n)

    # Step 1: quoted spans whose content has CJK.
    for m in re.finditer(r'"([^"]*)"', text, re.DOTALL):
        if has_cjk(m.group(1)):
            s, e = m.start(1), m.end(1)
            segs.append((s, e))
            claimed[s:e] = b"\x01" * (e - s)

    # Step 2: unquoted CJK tokens outside claimed regions.
    i = 0
    bs = -1

    def flush(s: int, e: int) -> None:
        if e > s and has_cjk(text[s:e]):
            segs.append((s, e))

    while i < n:
        if claimed[i] or text[i] in STRUCTURAL:
            if bs >= 0:
                flush(bs, i)
                bs = -1
            i += 1
            continue
        if bs < 0:
            bs = i
        i += 1
    if bs >= 0:
        flush(bs, n)

    segs.sort()
    # Defensive: drop any accidental overlap (should never happen).
    out: list[tuple[int, int]] = []
    last_end = -1
    for s, e in segs:
        if s >= last_end:
            out.append((s, e))
            last_end = e
    return out


def coverage(text: str, segs: list[tuple[int, int]]) -> tuple[int, int]:
    """(cjk_inside_segments, cjk_total). Should be equal for configs files."""
    inside = sum(core.count_cjk(text[s:e]) for s, e in segs)
    return inside, core.count_cjk(text)


def normalize(text: str) -> str:
    """Replace real CR/LF with sentinels so a payload is one logical line."""
    out = text.replace("\r\n", SENT["\r\n"])
    out = out.replace("\n", SENT["\n"])
    out = out.replace("\r", SENT["\r"])
    return out


def denormalize(text: str) -> str:
    """Restore sentinels to real line breaks."""
    for tok, real in _UNSENT:
        text = text.replace(tok, real)
    return text


def ph_sig(s: str) -> tuple:
    return tuple(sorted(core.TOK.findall(s)))


def rebuild(text: str, segs: list[tuple[int, int]],
            trans: dict[str, str]) -> tuple[str, list[str]]:
    """Replace each span with trans[payload]. Returns (new_text, missing).

    `trans` maps the EXACT source payload (text[start:end]) to its English.
    Spans with no entry are reported in `missing` and left untouched.
    """
    missing: list[str] = []
    parts: list[str] = []
    prev = 0
    for s, e in segs:
        payload = text[s:e]
        eng = trans.get(payload)
        if eng is None:
            missing.append(payload)
            eng = payload
        parts.append(text[prev:s])
        parts.append(eng)
        prev = e
    parts.append(text[prev:])
    return "".join(parts), missing
