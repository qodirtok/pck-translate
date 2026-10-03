# Product Requirements Document

# PCK Game Translation Pipeline v2

**Status:** Proposed  
**Version:** 2.0  
**Product Type:** Game Localization / Translation Automation Pipeline  
**Primary Language:** Python  
**Target Output:** Professional English Game Localization

---

# 1. Product Overview

PCK Game Translation Pipeline adalah sistem otomatisasi untuk menerjemahkan data game dalam jumlah besar dari bahasa sumber ke bahasa Inggris.

Sistem harus mampu menangani:

- ribuan hingga jutaan payload
- berbagai encoding
- berbagai format game data
- repeated text
- game terminology
- placeholders
- IDs
- control codes
- asset paths
- multi-line payload
- translation memory
- parallel translation
- resumable processing
- deterministic validation

Prioritas sistem:

```text
Correctness
    >
Consistency
    >
Data Integrity
    >
Performance
    >
Cost
```

Performance tidak boleh dicapai dengan mengorbankan integritas data.

---

# 2. Problem Statement

Pipeline saat ini sudah memiliki:

- translation memory
- glossary
- format-aware processing
- audit
- parallel worker concept
- staging concept

Namun masih terdapat bottleneck:

1. writer melakukan repeated full-file write
2. streaming belum benar-benar O(n)
3. translation request belum optimal dalam batch
4. payload yang sama dapat diterjemahkan berulang
5. encoding detection tersebar di beberapa tools
6. audit dijalankan terlalu sering
7. worker dan database write perlu pemisahan yang lebih tegas
8. AGENTS.md terlalu panjang dan redundant
9. beberapa aturan penting masih hanya bergantung pada AI
10. proses belum sepenuhnya resumable

---

# 3. Goals

## Primary Goals

### G1 — Increase Translation Throughput

Sistem harus mampu memproses lebih banyak payload dengan jumlah request yang lebih sedikit.

### G2 — Reduce LLM Requests

Payload identik harus diterjemahkan sekali.

Glossary hit tidak boleh dikirim ke LLM.

### G3 — Reduce File I/O

Large file writing harus memiliki kompleksitas O(n).

### G4 — Preserve Source Integrity

Source file tidak boleh pernah dimodifikasi.

### G5 — Prevent Partial Output

Incomplete translation hanya boleh berada di staging.

### G6 — Maintain Translation Consistency

Glossary dan translation memory menjadi sumber utama terminology.

### G7 — Support Parallel Processing

Independent translation batches harus dapat diproses secara paralel.

### G8 — Support Resume

Job yang gagal harus dapat dilanjutkan tanpa mengulang seluruh pekerjaan.

---

# 4. Non-Goals

Sistem ini bukan:

- general-purpose machine translation platform
- automatic source editor
- story rewriting system
- AI writing assistant
- game data converter
- game engine
- fuzzy translation system by default

Fokus utama adalah:

> Safe, fast, consistent game localization.

---

# 5. Target Architecture

```text
                current/
                    │
                    ▼
             ┌────────────┐
             │   Scanner  │
             └─────┬──────┘
                   │
                   ▼
          ┌──────────────────┐
          │ Payload Extractor│
          └────────┬─────────┘
                   │
                   ▼
          ┌──────────────────┐
          │ Deduplicator     │
          └────────┬─────────┘
                   │
          ┌────────┴────────┐
          ▼                 ▼
   Glossary Hit          Unknown
          │                 │
          │                 ▼
          │          Batch Translator
          │                 │
          │          ┌──────┴──────┐
          │          │             │
          │       Worker 1      Worker N
          │          │             │
          └──────────┴─────────────┘
                     │
                     ▼
               Result Merge
                     │
                     ▼
              Staging Writer
                     │
                     ▼
                Full Audit
                     │
                PASS │
                     ▼
             Atomic Promotion
                     │
                     ▼
                 Translate/
```

---

# 6. Functional Requirements

## FR-001 Scanner

System must scan source files and detect:

- file size
- encoding
- BOM
- line ending
- format
- payload count
- unique payload count
- CJK count
- special handling requirements

Output example:

```text
file: current/configs/item.txt
encoding: UTF-16LE
bom: yes
eol: CRLF
format: TXT
payloads: 12000
unique: 8200
unknown: 4300
```

---

# 7. FR-002 Payload Extraction

System must extract logical translatable payloads.

Must support:

```text
TXT
XML
Lua
DCF
multi-line payload
```

A logical payload may span multiple physical lines.

Example:

```text
10 "第一行
第二行
第三行"
```

must be treated as:

```text
第一行
第二行
第三行
```

one translation unit.

---

# 8. FR-003 Deduplication

Identical payloads must be deduplicated.

Input:

```text
A
A
A
B
B
C
```

Translation jobs:

```text
A
B
C
```

Occurrence mapping:

```text
A → [1,2,3]
B → [4,5]
C → [6]
```

---

# 9. FR-004 Translation Memory

Translation priority:

```text
Exact Glossary
    ↓
Translation Cache
    ↓
LLM Translation
    ↓
REVIEW
```

Exact glossary match must never call the LLM.

---

# 10. FR-005 Batch Translation

Translation jobs must be grouped into configurable batches.

Default:

```text
BATCH_SIZE=50
```

The system must support:

```text
BATCH_SIZE
CONCURRENCY
MAX_RETRIES
TIMEOUT
```

without source-code modification.

---

# 11. FR-006 Parallel Translation

Independent batches may run concurrently.

Example:

```text
Batch 1 ─ Worker 1
Batch 2 ─ Worker 2
Batch 3 ─ Worker 3
Batch 4 ─ Worker 4
```

Workers must not write shared SQLite state concurrently.

---

# 12. FR-007 Translation Result Schema

Each translation result should contain at least:

```json
{
  "source": "...",
  "english": "...",
  "status": "translated",
  "batch_id": "...",
  "source_hash": "...",
  "worker_id": "...",
  "retry_count": 0
}
```

Possible status:

```text
REUSED
TRANSLATED
REVIEW
FAILED
```

---

# 13. FR-008 Validation

Every translated payload must be validated.

Validation includes:

```text
placeholder equality
placeholder order
ID preservation
control code preservation
tag preservation
URL preservation
asset path preservation
technical syntax preservation
```

Example:

Source:

```text
Hello %s, you have %d items.
```

Translation:

```text
Hello %s, you have %d items.
```

Valid.

Translation:

```text
Hello %d, you have %s items.
```

Invalid.

---

# 14. FR-009 Staging

Incomplete output:

```text
Translate/.staging/
```

Completed output:

```text
Translate/
```

Promotion condition:

```text
translation complete
AND
audit PASS
```

Only then:

```text
atomic rename
```

---

# 15. FR-010 Encoding Preservation

Supported:

```text
UTF-8
UTF-8 BOM
UTF-16LE
UTF-16BE
GBK / CP936
```

System must preserve:

- encoding
- BOM
- line ending

unless format explicitly requires otherwise.

---

# 16. FR-011 Streaming Writer

Large files must be written using a sequential file handle.

Forbidden:

```python
dst.write_bytes(entire_output)
```

inside every row iteration.

Required:

```text
open
write BOM
write chunk
flush periodically
continue
close
```

Target complexity:

```text
O(n)
```

---

# 17. FR-012 Resume

System must store job state.

Example:

```json
{
  "job_id": "...",
  "file": "...",
  "completed_batches": ["001", "002"],
  "failed_batches": ["003"],
  "status": "partial"
}
```

Restarting must resume from batch `003`.

---

# 18. FR-013 Retry

Retry only failed batches.

Default:

```text
MAX_RETRIES=3
```

Use exponential backoff.

Example:

```text
1s
2s
4s
```

or configurable equivalent.

---

# 19. FR-014 Audit

Audit must be deterministic.

Audit should support:

```text
single file
directory
batch
entire Translate/
```

Avoid launching one Python process per file when batch processing is possible.

---

# 20. FR-015 Glossary Merge

Workers return terminology candidates.

Parent process performs:

```text
deduplicate
→ validate
→ SQLite transaction
→ regenerate GLOSSARY.md
```

Only one writer owns the database mutation.

---

# 21. Performance Requirements

The system should optimize:

### P1

Zero LLM request for exact glossary hits.

### P2

One LLM translation for identical payloads.

### P3

Batch multiple payloads per request.

### P4

Parallel independent batches.

### P5

O(n) file writing.

### P6

Batch audit.

### P7

Reusable translation cache.

---

# 22. Performance Metrics

Every translation run should optionally report:

```text
files
source_bytes
payload_count
unique_payload_count
glossary_hits
cache_hits
llm_payloads
llm_batches
workers
retries
translation_time
write_time
audit_time
total_time
```

Example:

```text
Files              : 120
Payloads            : 1,250,000
Unique payloads     : 420,000
Glossary hits       : 620,000
Cache hits          : 110,000
LLM payloads        : 520,000
LLM batches         : 10,400
Workers             : 4
Retries             : 21
Translation         : 18m 42s
Writing             : 42s
Audit               : 17s
Total               : 19m 41s
```

---

# 23. Configuration

Configuration should support:

```text
BATCH_SIZE=50
CONCURRENCY=4
MAX_RETRIES=3
TIMEOUT=180
FLUSH_BYTES=65536
```

Recommended environment/configuration mechanism:

```text
.env
or
config.toml
```

Do not hardcode performance settings.

---

# 24. CLI

Existing CLI commands should remain compatible when possible.

Recommended future commands:

```bash
python3 tools/translate.py scan
python3 tools/translate.py collect
python3 tools/translate.py translate
python3 tools/translate.py resume
python3 tools/translate.py audit
python3 tools/translate.py benchmark
```

Existing command forms should continue to work during migration.

---

# 25. Error States

The system must distinguish:

```text
SUCCESS
PARTIAL
FAILED
REVIEW_REQUIRED
AUDIT_FAILED
```

Do not represent all failures as generic errors.

---

# 26. Security / Integrity

Never:

- modify source
- overwrite source
- silently convert encoding
- ignore audit errors
- promote incomplete files
- hide failed translation
- modify technical tokens
- concurrently modify SQLite

---

# 27. Testing Strategy

## Unit Tests

Test:

- encoding
- extraction
- deduplication
- glossary
- placeholders
- writer
- staging
- audit

## Integration Tests

Test:

```text
source
→ scan
→ glossary
→ translation
→ staging
→ audit
→ promotion
```

## Regression Tests

Existing supported files must remain valid.

---

# 28. Benchmark Strategy

Create fixtures:

```text
10 KB
100 KB
1 MB
10 MB
100 MB
```

Measure:

```text
old writer
vs
new writer
```

Measure:

```text
translation request count
wall clock time
write time
memory usage
```

The benchmark must be reproducible.

---

# 29. Acceptance Criteria

The new system is accepted when:

### Integrity

- `current/` remains unchanged
- all technical tokens remain unchanged
- encoding remains valid
- line structure remains valid
- audit passes

### Performance

- writer complexity is O(n)
- duplicate payloads are translated once
- glossary hits bypass LLM
- requests are batched
- workers execute independently
- audit is batch-capable

### Reliability

- failed batches can retry
- completed batches can resume
- incomplete output never reaches final Translate/
- SQLite has a single writer

### Maintainability

- AGENTS.md is concise
- duplicated instructions are removed
- encoding logic is centralized
- format logic is reusable
- tests cover regressions

---

# 30. Definition of Done

The implementation is complete only when:

```text
[x] Scanner optimized
[x] Encoding detection unified
[x] Format extraction unified
[x] Payload deduplication implemented
[x] Glossary fast path implemented
[x] Batch translation implemented
[x] Parallel workers implemented
[x] True O(n) writer implemented
[x] Staging implemented
[x] Atomic promotion implemented
[x] Resume implemented
[x] Retry implemented
[x] Batch audit implemented
[x] Glossary single-writer implemented
[x] AGENTS.md simplified
[x] Translate/AGENTS.md deduplicated
[x] Unit tests added
[x] Integration tests added
[x] Performance benchmark added
[x] Existing CLI verified
[x] Source immutability verified
```

---

# 31. Success Definition

The final system should behave like:

```text
FAST
+
CONSISTENT
+
RESUMABLE
+
PARALLEL
+
DETERMINISTIC
+
SAFE
```

without compromising translation fidelity.

The central engineering principle is:

> Make the AI responsible for language decisions, and make deterministic software responsible for file integrity.
