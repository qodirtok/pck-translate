from pathlib import Path

out_lines = []


def emit(s=""):
    out_lines.append(s)


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


def cmp(f, n=7):
    src = Path("current/configs") / f
    dst = Path("Translate/configs") / f
    emit("")
    emit("########## %s ##########" % f)
    if not dst.exists():
        emit("  (not in Translate/ yet)")
        return
    s = dec(src.read_bytes())
    d = dec(dst.read_bytes())
    emit("  src lines=%d  dst lines=%d" % (len(s.splitlines()), len(d.splitlines())))
    emit("  --- SRC ---")
    for l in s.splitlines()[:n]:
        emit("   " + l[:130])
    emit("  --- DST ---")
    for l in d.splitlines()[:n]:
        emit("   " + l[:130])


for f in [
    "gang_icon.txt",
    "fonts.txt",
    "weapon_transform.txt",
    "extract_equip_model.txt",
    "fixed_msg.txt",
    "province.txt",
    "boneinit.cfg",
    "task_err.txt",
]:
    cmp(f)

outp = Path(".work/cmp_done.out")
outp.write_text("\n".join(out_lines), encoding="utf-8")
print("WROTE", outp, "records=", len(out_lines))
