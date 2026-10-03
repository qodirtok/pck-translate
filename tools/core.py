#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Shared encoding detection, format detection and payload-span extraction.

Single source of truth for every tool in tools/. Everything here is a pure
function over bytes/str so it can be unit-tested without touching the
filesystem, and so scan.py / extract.py / collect.py / tm.py / translate.py /
apply.py / stream.py / audit.py can never disagree about what a payload is or
how a file is encoded.

Nothing in this module writes files.
"""
from __future__ import annotations

import re
from pathlib import Path

# --- normalisation -----------------------------------------------------------

# Source files mix fullwidth punctuation (U+FF0C etc.) with ASCII; pairs files
# are written with ASCII. Normalising both sides makes a pair resolve
# regardless of which form the author used.
FW = {
    "＋": "+", "－": "-", "～": "~", "：": ":", "（": "(", "）": ")",
    "【": "[", "】": "]", "，": ",", "。": ".", "！": "!",
    "？": "?", "；": ";", "、": ",", "％": "%",
}


def norm(s: str) -> str:
    """Map fullwidth punctuation to ASCII so pairs resolve either way."""
    return "".join(FW.get(c, c) for c in s)


# --- CJK ---------------------------------------------------------------------

CJK = re.compile(r"[\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\uff01-\uff5e]")
CJK0, CJK1 = 0x4E00, 0x9FFF
CJK_RANGES = ((0x3400, 0x4DBF), (0xF900, 0xFAFF), (0xFF01, 0xFF5E))


def has_cjk(s: str) -> bool:
    return bool(CJK.search(s))


def count_cjk(s: str) -> int:
    return sum(1 for c in s
               if CJK0 <= ord(c) <= CJK1
               or any(a <= ord(c) <= b for a, b in CJK_RANGES))


# --- encoding ----------------------------------------------------------------

# Order matters: UTF-16 BOMs are checked before UTF-8, and a file that decodes
# cleanly as UTF-8 is UTF-8 (GBK high bytes 0x81-0xFE are not valid UTF-8 lead
# bytes, so a clean UTF-8 decode is authoritative, not a GBK misread).
def detect(raw: bytes) -> tuple[bytes, str]:
    """Return (bom, codec) so a write reproduces the source byte-exactly."""
    if raw[:2] == b"\xff\xfe":
        return b"\xff\xfe", "utf-16-le"
    if raw[:2] == b"\xfe\xff":
        return b"\xfe\xff", "utf-16-be"
    if raw[:3] == b"\xef\xbb\xbf":
        return b"\xef\xbb\xbf", "utf-8"
    try:
        raw.decode("utf-8")
        return b"", "utf-8"
    except UnicodeDecodeError:
        pass
    try:
        raw.decode("gbk")
        return b"", "gbk"
    except UnicodeDecodeError:
        return b"", "unknown"


class Source:
    """A decoded source file, carrying everything needed to rewrite it byte-exactly."""

    __slots__ = ("bom", "codec", "eol", "lines", "crlf", "trailing_eol", "raw")

    def __init__(self, bom: bytes, codec: str, eol: str, lines: list[str],
                 crlf: int, trailing_eol: bool, raw: bytes) -> None:
        self.bom = bom
        self.codec = codec
        self.eol = eol
        self.lines = lines
        self.crlf = crlf
        self.trailing_eol = trailing_eol
        self.raw = raw

    @property
    def text(self) -> str:
        return self.eol.join(self.lines)


def load(p: Path) -> Source:
    """Decode a file into a Source record that is enough to rewrite it byte-exactly.

    Total function: a file no supported codec can decode (a .dds, a .dll)
    comes back with codec "unknown" and no lines rather than raising, so
    callers can skip binaries with one comparison instead of a try/except.
    """
    raw = p.read_bytes()
    bom, codec = detect(raw)
    if codec == "unknown":
        return Source(bom, codec, "\n", [], 0, False, raw)
    text = raw.decode("utf-16" if codec.startswith("utf-16") else codec,
                      errors="replace")
    eol = "\r\n" if "\r\n" in text else "\n"
    return Source(
        bom=bom,
        codec=codec,
        eol=eol,
        lines=text.split(eol),
        crlf=text.count("\r\n"),
        # A file whose last line has no terminator must not gain one on write.
        # split() cannot tell the two apart on its own, so record it here.
        trailing_eol=text.endswith(eol) if text else False,
        raw=raw,
    )


def read_text(p: Path) -> tuple[bytes, str, str, list[str], int]:
    """Return (bom, codec, eol, lines, crlf_count) for a file on disk.

    Lines are split on the detected EOL only, so a CRLF file never leaves a
    stray "\\r" on the end of every line (which would otherwise make the
    trailing-whitespace audit compare against a phantom).
    """
    s = load(p)
    return s.bom, s.codec, s.eol, s.lines, s.crlf


# --- format ------------------------------------------------------------------

# Translatable-span extraction, per format. Only these spans are translatable;
# asset paths (FileName="CB\\通用\\..."), font names and other non-translatable
# attributes are ignored by construction, which is why the CJK audit is
# span-aware rather than whole-line.
XML_STR = re.compile(r'(String=")([^"]*)(")')
LUA_KV = re.compile(
    r'((?:name|note|desc|desc_1|desc_2|title|text|label|msg)\s*=\s*")([^"]*)(")')
LUA_BARE = re.compile(r'^(\s*")([^"]+)(")')
TXT_QUOTED = re.compile(r'"([^"]*)"')
DCF_COMMENT = re.compile(r'^(//\s*)(.*)$')
DCF_QUOTED = re.compile(r'"([^"]*)"')

# Placeholder / control-code tokeniser. Order-sensitive comparison lives in
# audit.py; this only finds the tokens.
TOK = re.compile(
    r'%[-+ #0]*\d*(?:\.\d+)?[sdf]|%\d+\$[sdf]|&%s&|\^[0-9A-Fa-f]{6}|\$%*')
ID = re.compile(r'^(\d+,?[ \t]*)')


def guess_format(path: Path, lines: list[str]) -> str:
    ext = path.suffix.lower()
    if ext == ".xml":
        return "xml"
    if ext == ".lua":
        return "lua"
    if ext == ".dcf":
        return "dcf"
    if ext in (".txt", ".dat", ".stf"):
        return "txt"
    head = "\n".join(lines[:20])
    if "<DIALOG" in head or "<XML" in head or head.lstrip().startswith("<"):
        return "xml"
    if head.lstrip().startswith("--"):
        return "lua"
    return "txt"


def spans(line: str, fmt: str) -> list[tuple[int, int, str]]:
    """Return [(start, end, payload)] of translatable spans in one line."""
    out: list[tuple[int, int, str]] = []
    if fmt == "xml":
        for m in XML_STR.finditer(line):
            out.append((m.start(2), m.end(2), m.group(2)))
    elif fmt == "lua":
        for m in LUA_KV.finditer(line):
            out.append((m.start(2), m.end(2), m.group(2)))
        if not out:
            m = LUA_BARE.match(line)
            if m:
                out.append((m.start(2), m.end(2), m.group(2)))
    elif fmt == "dcf":
        m = DCF_COMMENT.match(line)
        if m:
            out.append((m.start(2), m.end(2), m.group(2)))
        else:
            for mm in DCF_QUOTED.finditer(line):
                out.append((mm.start(1), mm.end(1), mm.group(1)))
    else:
        for m in TXT_QUOTED.finditer(line):
            out.append((m.start(1), m.end(1), m.group(1)))
    return out


def ph_sig(line: str) -> tuple:
    """Placeholder multiset, order-independent (audit.py compares order too)."""
    return tuple(sorted(TOK.findall(line)))


def ph_order(line: str) -> tuple:
    """Placeholder tokens in source order."""
    return tuple(TOK.findall(line))


# --- translation memory (read side) ------------------------------------------

ROOT = Path(__file__).resolve().parent.parent
DB_PATH = ROOT / "memory" / "glossary.db"

# A source can legitimately have several rows: the terms table's UNIQUE key is
# (table_id, source, english, ref_id, slot), so re-deciding a term adds a row
# instead of replacing one. A lookup must therefore be *deterministic* or the
# same input can produce different output on different runs, which would break
# the project's consistency invariant. Newest decision wins; highest rowid
# breaks a tie.
_LOOKUP_ORDER = "ORDER BY created_at, id"


class Glossary:
    """Read side of memory/glossary.db. Single writer stays outside this class."""

    def __init__(self, db: Path | None = None) -> None:
        import sqlite3
        self._sqlite3 = sqlite3
        self._path = Path(db) if db else DB_PATH
        self._conn = sqlite3.connect(str(self._path))

    def close(self) -> None:
        self._conn.close()

    def __enter__(self) -> "Glossary":
        return self

    def __exit__(self, *exc) -> None:
        self.close()

    def lookup(self, payloads: list[str]) -> dict[str, str]:
        """Exact-match lookup for a batch of payloads.

        Chunked so the generated IN(...) list never grows past SQLite's
        variable limit on a file with tens of thousands of unique payloads.
        """
        out: dict[str, str] = {}
        if not payloads:
            return out
        for i in range(0, len(payloads), 400):
            chunk = payloads[i:i + 400]
            qs = ",".join("?" * len(chunk))
            sql = (f"SELECT source, english FROM terms WHERE source IN ({qs}) "
                   f"{_LOOKUP_ORDER}")
            for src, eng in self._conn.execute(sql, chunk):
                # Later rows overwrite earlier ones, so the newest decision wins.
                out[src] = eng
        return out

    def lookup_one(self, payload: str) -> str | None:
        return self.lookup([payload]).get(payload)

    def count(self) -> int:
        return self._conn.execute("SELECT COUNT(*) FROM terms").fetchone()[0]

    def reverse(self) -> dict[str, str]:
        """Map english -> source, for pairs rows that omit the source side.

        Newest decision wins, so a re-decided term resolves to its current
        source rather than a stale one.
        """
        out: dict[str, str] = {}
        for src, eng in self._conn.execute(
                f"SELECT source, english FROM terms {_LOOKUP_ORDER}"):
            out[eng] = src
        return out
