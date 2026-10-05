"""Shared writer for the tr2/tr3 post-processing passes.

All three repair passes (repair_separator, restore_codes, restore_padding) work by
mutating records in memory and then persisting them. An earlier version of those
scripts re-read the JSONL from disk inside the write step, which silently threw
the in-memory mutations away: every pass reported "written: N files" while the
bytes on disk never changed. This helper makes the write step apply a collected
`{batch: {id: new_english}}` map instead, and verifies that every requested
update was actually found before it returns.
"""

import json
from pathlib import Path


def write_updates(workdir, updates):
    """updates: {(batch, id): new_english}. Returns (files_written, records_written).

    Raises RuntimeError if any requested id is missing from its batch, because a
    silently-dropped repair is worse than a loud failure.
    """
    byfile = {}
    for (batch, rid), txt in updates.items():
        byfile.setdefault(batch, {})[rid] = txt

    files = 0
    written = 0
    missing = []
    for batch, mapping in sorted(byfile.items()):
        pf = Path(workdir) / "out" / (batch + ".jsonl")
        if not pf.is_file():
            missing.append((batch, "batch file missing"))
            continue
        recs = [json.loads(l) for l in pf.read_text(encoding="utf-8").splitlines() if l.strip()]
        seen = set()
        with pf.open("w", encoding="utf-8") as fh:
            for rr in recs:
                if rr["id"] in mapping:
                    rr["english"] = mapping[rr["id"]]
                    seen.add(rr["id"])
                    written += 1
                fh.write(json.dumps(rr, ensure_ascii=False) + "\n")
        for rid in mapping:
            if rid not in seen:
                missing.append((batch, rid))
        files += 1

    if missing:
        raise RuntimeError("updates not applied for: %r" % (missing[:10],))
    return files, written