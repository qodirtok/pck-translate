import importlib.util, re
from collections import Counter
from pathlib import Path
W = Path(".work/tr2")
spec = importlib.util.spec_from_file_location("nl", str(W.parent/"normalize_labels.py"))
nl = importlib.util.module_from_spec(spec); spec.loader.exec_module(nl)
NUM = re.compile(r"\d+(?:\.\d+)?")
COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
def nums(t): return [x for x in NUM.findall(COLOR.sub("", t))]
want = [("batch_000",22),("batch_000",35),("batch_000",183),("batch_000",203),("batch_000",229),("batch_001",1)]
for b,r,src in nl.iter_records(W):
    if (b,r["id"]) not in want: continue
    e = r.get("english","")
    s_,d_ = Counter(nums(src)), Counter(nums(e))
    print("### %s/%d  src-only=%s dst-only=%s" % (b,r["id"],dict(s_-d_),dict(d_-s_)))
    for i,(a,c) in enumerate(zip(src.split("<CRLF>"), e.split("<CRLF>"))):
        if nums(a)!=nums(c):
            print("   L%-2d SRC %s" % (i, a[:130]))
            print("       DST %s" % (c[:130]))
    print()
