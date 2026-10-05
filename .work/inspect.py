from pathlib import Path
import re

raw_lines = []


def emit(s=""):
    raw_lines.append(s)


def dec(raw):
    if raw[:2] == b"\xff\xfe":
        return raw.decode("utf-16"), "utf-16-le"
    if raw[:2] == b"\xfe\xff":
        return raw.decode("utf-16"), "utf-16-be"
    if raw[:3] == b"\xef\xbb\xbf":
        return raw.decode("utf-8-sig"), "utf-8-bom"
    try:
        return raw.decode("utf-8"), "utf-8"
    except Exception:
        try:
            return raw.decode("gbk"), "gbk"
        except Exception:
            return raw.decode("gbk", "replace"), "gbk?"


files = [
    "item_ext_desc.txt", "skillstr.txt", "skillgbk.txt", "instance.txt", "buff_str.txt",
    "skillicon.txt", "buff_icon.txt", "skillsgc.txt", "gfxvehicle.txt", "toptable.txt",
    "typedef_initial.xml", "item_ext_prop.txt", "buff_gfx.txt", "skillacts.txt",
]
IDPAT = re.compile(r"^\s*\d+\s*[\t,]")
for f in files:
    p = Path("current/configs") / f
    raw = p.read_bytes()
    text, enc = dec(raw)
    ls = text.splitlines()
    emit("")
    emit("===== %s =====" % f)
    emit("encoding=%s  bytes=%d  lines=%d" % (enc, len(raw), len(ls)))
    emit("tabs=%d  commas=%d" % (text.count("\t"), text.count(",")))
    emit("id-prefixed lines=%d" % sum(1 for l in ls if IDPAT.match(l)))
    odd = sum(1 for l in ls if l.count('"') % 2 == 1)
    emit("odd-quote lines (multiline candidates)=%d" % odd)
    emit("--- first 8 lines ---")
    for l in ls[:8]:
        emit("  " + l[:160])

out = Path(".work/inspect.out")
out.write_text("\n".join(raw_lines), encoding="utf-8")
print("WROTE", out, "records=", len(raw_lines))
