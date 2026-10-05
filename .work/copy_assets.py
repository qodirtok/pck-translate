import hashlib
import shutil
from pathlib import Path

ASSETS = [
    "skillicon.txt",
    "buff_icon.txt",
    "skillsgc.txt",
    "buff_gfx.txt",
    "skillacts.txt",
    "gfxvehicle.txt",
]

src_dir = Path("current/configs")
dst_dir = Path("Translate/configs")
dst_dir.mkdir(parents=True, exist_ok=True)

lines = []
for name in ASSETS:
    s = src_dir / name
    d = dst_dir / name
    shutil.copyfile(s, d)
    hs = hashlib.sha256(s.read_bytes()).hexdigest()
    hd = hashlib.sha256(d.read_bytes()).hexdigest()
    status = "OK" if hs == hd else "MISMATCH"
    lines.append("%-18s copied  %d bytes  sha256 %s  %s" % (
        name, s.stat().st_size, hs[:16], status))

Path(".work/copy.out").write_text("\n".join(lines), encoding="utf-8")
print("copied %d asset files" % len(ASSETS))
