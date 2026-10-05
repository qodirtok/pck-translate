import re
from pathlib import Path

out = []


def emit(s=""):
    out.append(s)


def dec(raw):
    if raw[:2] == b"\xff\xfe":
        return raw.decode("utf-16")
    if raw[:2] == b"\xfe\xff":
        return raw.decode("utf-16")
    if raw[:3] == b"\xef\xbb\xbf":
        return raw.decode("utf-8-sig")
    try:
        return raw.decode("utf-8")
    except Exception:
        return raw.decode("gbk", "replace")


CJK = re.compile(r"[一-鿿㐀-䶿-䶿豈-﫿！-～]")
DOTQ = re.compile(r'"([^"]*)"', re.DOTALL)


def is_cjk(s):
    return bool(CJK.search(s))


def examine(f):
    p = Path("current/configs") / f
    raw = p.read_bytes()
    text = dec(raw)
    emit("")
    emit("==================== %s ====================" % f)
    emit("chars=%d  lines=%d" % (len(text), len(text.splitlines())))
    emit("total double-quotes=%d  parity=%s" % (text.count('"'), "even" if text.count('"') % 2 == 0 else "ODD"))
    # DOTALL quoted spans over the WHOLE text
    spans = DOTQ.findall(text)
    withcjk = [s for s in spans if is_cjk(s)]
    emit("DOTALL quoted spans=%d   with-CJK=%d   without-CJK=%d" % (len(spans), len(withcjk), len(spans) - len(withcjk)))
    uniq = set(withcjk)
    emit("unique CJK payloads=%d" % len(uniq))
    # total CJK chars inside vs outside quoted spans
    # build masked text: remove quoted spans
    masked = DOTQ.sub(lambda m: '"' + ("\n" * m.group(1).count("\n")) + '"', text)
    cjk_in = sum(len(CJK.findall(s)) for s in spans)
    cjk_total = len(CJK.findall(text))
    emit("CJK chars total=%d  inside-quoted=%d  OUTSIDE-quoted=%d" % (cjk_total, cjk_in, cjk_total - cjk_in))
    # show sample of unique CJK payloads (short)
    emit("--- sample unique CJK payloads ---")
    for s in sorted(uniq, key=len)[:6]:
        emit("   [%d] %r" % (len(s), s[:90]))
    for s in sorted(uniq, key=len)[-3:]:
        emit("   [%d] %r" % (len(s), s[:90]))


for f in ["item_ext_desc.txt", "skillstr.txt", "buff_str.txt", "toptable.txt"]:
    examine(f)

Path(".work/exam2.out").write_text("\n".join(out), encoding="utf-8")
print("WROTE .work/exam2.out")
