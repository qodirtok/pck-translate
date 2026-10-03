# Translate/ AGENTS.md

This directory contains the localized output files mirroring the path structure of `current/`.

**Single Source of Truth:**
All translation rules, technical element preservation rules, glossary requirements, workflow specifications, and definition of done are canonically defined in the root [`/AGENTS.md`](../AGENTS.md).

## Output Directory Rules

1. **Mirrored Path:** Every localized file must be placed at the exact mirrored relative path corresponding to `current/` (e.g., `current/configs/foo.txt` → `Translate/configs/foo.txt`).
2. **Never Edit Manually:** Translations must be generated via the pipeline tools (`tools/batch.py` or `tools/apply.py`) which enforce true streaming into `Translate/.staging/` followed by atomic promotion upon passing `tools/audit.py`.
3. **No Partial Files:** Files in this directory must always be 100% complete and verified. Partial/in-progress files remain strictly in `Translate/.staging/`.
4. **Encoding & Format:** Output files must preserve the exact encoding (UTF-16LE, UTF-8, GBK), BOM, and line endings (CRLF/LF) of their source counterpart.
