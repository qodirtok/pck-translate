"""Deterministic UI-label consistency pass for the tr2/tr3 corpora.

Why this exists
---------------
Independent batch workers produced several English renderings of the same
Chinese UI label (e.g. 技能品质 -> "Skill Quality" / "Skill Rank" / "Skill Grade"
/ "Quality" / "Skill Tier"). AGENTS.md 4 requires consistent game vocabulary, so
the variants must collapse to one canonical form.

Safety design (this pass can only ever rewrite label words)
-----------------------------------------------------------
1. Column alignment / colour codes are never touched. For each `：`/`:` we take
   the span immediately before it, strip a leading `^RRGGBB` colour code, and if
   the remainder contains a padding run (2+ spaces or U+3000) we keep only the
   part after the LAST padding run. That yields the bare label phrase, so
   `^ffffffHero Level Requirement` -> `Hero Level Requirement` and
   `Only             Cool-down` -> `Cool-down`. Only those bare phrases are ever
   rewritten, so `^ffffff`, U+3000 runs and space columns survive byte-for-byte.
2. Replacement is gated on the corpus itself. A phrase is only rewritten if it
   was actually OBSERVED as a rendering of that same Chinese label (built in
   pass 1). So a mis-aligned colon pairing cannot make us turn `Mounted` into
   `Cool-down`: `Mounted` is not a known rendering of 冷却, so it is left alone.
3. Source/English colon counts must be equal, otherwise the record is skipped.
4. Edits are applied back-to-front so earlier offsets stay valid.

Canonical choices are the dominant in-corpus rendering, or a form with precedent
in already-promoted Translate/ files (武技 -> "Martial Art" has 30 prior uses).
Genuinely ambiguous terms are collapsed to their majority form and reported as
REVIEW items for a project-level decision rather than being silently invented.
"""

import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

TOKENS = ["<CRLF>", "<LF>", "<CR>"]
COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
PADDING = re.compile(r"(?:[ ]{2,}|\u3000+)")
CJK_LABEL = re.compile(r"([\u4e00-\u9fff]{2,6})([：:])")
SPAN = re.compile(r"[A-Za-z0-9 \-\u3000]*([：:])")

CANON = {
    # unambiguous: identical meaning, spelling / case / plural drift only
    "兵器": "Weapon", "武器": "Weapon", "武器类型": "Weapon Type",
    "招式": "Move", "招式类型": "Move Type", "招式消耗": "Move Cost",
    "专精": "Mastery", "专精影响": "Mastery Effects",
    "技能品质": "Skill Quality", "学习需求": "Learning Requirement",
    "技能类别": "Skill Category", "魂技类型": "Soul Skill Type",
    "魂技效果": "Soul Skill Effect", "魂技能": "Soul Skill",
    "学习消耗": "Learning Cost", "前提成就": "Prerequisite Achievement",
    "技能修改": "Skill Mods",
    "初始冷却": "Initial Cool-down", "冷却": "Cool-down", "冷却时间": "Cool-down",
    "武技": "Martial Art", "刺杀": "Assassination",
    "攻击间隔": "Attack Interval", "攻击方式": "Attack Mode",
    "攻击范围": "Attack Range", "作用范围": "Effect Range",
    "持续时间": "Duration", "学习条件": "Learning Requirements",
    "学习等级需求": "Required Level", "招式等级": "Move Level",
    "攻击倍率": "Attack Multiplier", "攻击附加": "Attack Bonus",
    "附加": "Bonus", "数值": "Value", "下一阶": "Next Stage",
    "准备": "Preparation", "动作": "Action", "投掷": "Throw",
    "普通施放": "Normal Cast", "觉醒状态施放": "Awakened State Cast",
    # ambiguous -> majority form, reported as REVIEW
    "属性": "Type", "策略": "Tactic", "战法": "Tactic", "骑术": "Riding",
    "必杀": "Finisher", "特技": "Special", "结义兵法": "Brotherhood Stratagem",
    "生效祖籍限制": "Ancestral Home Restriction", "战斗": "Combat",
    "兵法": "Stratagem",
}
REVIEW_TERMS = ["属性", "策略", "战法", "骑术", "必杀", "特技", "结义兵法",
                "生效祖籍限制", "兵法", "魂技能"]

# Hand-reviewed allowlist of renderings we are willing to rewrite. Anything not
# listed here is reported but NEVER modified, so a mis-paired colon can never
# turn an unrelated word into a label.
#
# Deliberately EXCLUDED after inspecting the actual records:
#   "Transformation Only Cool-down"  -> would delete the "变身专用" prefix
#   "Skill Effect Ancestral Home ..." -> would delete the "魂技效果" prefix
#   "Ancestry Requirement for Effect"-> would delete the trailing qualifier
#   skill-name phrases (e.g. "Heart-Piercing Fury") are excluded by the
#   strict colon-count guard in pairs()
ALLOWED = {
    "兵器": {"Weapon", "Weapons"},
    "武器": {"Weapon", "Weapons"},
    "武器类型": {"Weapon Type"},
    "招式": {"Move"},
    "招式类型": {"Move Type"},
    "招式消耗": {"Move Cost"},
    "专精": {"Mastery"},
    "专精影响": {"Mastery Effects"},
    "技能品质": {"Skill Quality", "Skill Rank", "Quality", "Skill Grade",
                 "Skill grade", "Skill Tier"},
    "学习需求": {"Learning Requirement", "Requirement", "Learning Req",
                 "Learn Requirement", "Learning Req."},
    "技能类别": {"Skill Category", "Category", "Skill category", "Skill Class"},
    "魂技类型": {"Soul Skill Type", "Soul Art Type", "Soul Skill type"},
    "魂技效果": {"Soul Skill Effect", "Soul Art Effect", "Soul Skill effects"},
    "魂技能": {"Soul Skill"},
    "学习消耗": {"Learning Cost", "Learning cost"},
    "前提成就": {"Prerequisite Achievement", "Prerequisite achievement"},
    "技能修改": {"Skill Mods", "Skill Modifications"},
    "初始冷却": {"Initial Cool-down", "Initial Cooldown"},
    "冷却": {"Cool-down", "Cooldown"},
    "冷却时间": {"Cool-down", "Cooldown", "Cool-down Time"},
    "武技": {"Martial Art", "Martial Skill", "Move", "Martial Arts",
             "Martial Technique", "Skill", "Combat Technique"},
    "刺杀": {"Assassination", "Assassin"},
    "攻击间隔": {"Attack Interval"},
    "攻击方式": {"Attack Mode"},
    "攻击范围": {"Attack Range"},
    "作用范围": {"Effect Range"},
    "持续时间": {"Duration"},
    "学习条件": {"Learning Requirements"},
    "学习等级需求": {"Required Level", "Level Requirement", "Learning Level Requirement",
                     "Learn Level Requirement", "Required Hero Level",
                     "Hero Level Requirement", "Learning Level Req", "Level requirement"},
    "招式等级": {"Move Level"},
    "攻击倍率": {"Attack Multiplier"},
    "攻击附加": {"Attack Bonus"},
    "附加": {"Bonus"},
    "数值": {"Value"},
    "下一阶": {"Next Stage"},
    "准备": {"Preparation"},
    "动作": {"Action"},
    "投掷": {"Throw"},
    "普通施放": {"Normal Cast", "Normal cast"},
    "觉醒状态施放": {"Awakened State Cast", "Awakened cast", "Awakened state cast"},
    "属性": {"Type", "Attribute", "Attributes"},
    "策略": {"Tactic", "Strategy", "Tactics"},
    "战法": {"Tactic", "War Art", "Battle Tactic", "Battle Art", "Stratagem",
             "War Tactic"},
    "骑术": {"Riding", "Mounted", "Riding Art", "Mounted Art", "Horsemanship"},
    "必杀": {"Finisher", "Fatal", "Ultimate", "Finishing Move"},
    "特技": {"Special", "Specialty", "Trait", "Special Skill", "Special Art",
             "Special Move"},
    "结义兵法": {"Brotherhood Stratagem", "Sworn Military Art",
                 "Sworn Brotherhood Tactic", "Sworn Stratagem", "Sworn Tactics",
                 "Oath Tactic", "Sworn Alliance Stratagem", "Sworn Brothers Art"},
    "生效祖籍限制": {"Ancestral Home Restriction", "Ancestry Requirement",
                      "Origin Restriction", "Skill Origin Restriction",
                      "Skill Region Restriction", "Ancestral Origin Restriction",
                      "Skill Origin Requirement", "Region Restriction",
                      "Heritage Restriction", "Origin"},
    "战斗": {"Combat", "Battle"},
    "兵法": {"Stratagem", "Art of War"},
}


TAIL = re.compile(r"^[A-Za-z][A-Za-z \-]*$")
HEX6 = re.compile(r"^[0-9a-fA-F]{6}$")
MAXLEN = 30
MAXWORDS = 4


def phrase_of(span_text, prev_is_caret):
    """Bare label phrase from the text immediately before a colon.

    A `^RRGGBB` colour code leaves its hex digits at the head of the span, so we
    strip them ONLY when the span really is preceded by `^` - otherwise `Cool-down`
    would lose its leading `C` (hex) and become `ool-down`.
    """
    s = span_text
    if prev_is_caret and len(s) > 6 and HEX6.match(s[:6]):
        s = s[6:]
    parts = PADDING.split(s)
    tail = (parts[-1] if parts else s).strip()
    if not TAIL.match(tail):
        return "", False
    if len(tail) > MAXLEN or len(tail.split()) > MAXWORDS:
        return "", False
    return tail, True


def pairs(src, eng):
    """[(cn_label, en_phrase, colon_index)] or None when not confidently alignable.

    The strict colon-count guard matters: one worker rendered the `·强攻` skill
    suffix as `: Assault`, adding a colon at the head of the record. Index
    pairing then slid by one and would have rewritten `Skill Quality` into
    `Learning Requirement`. Requiring the TOTAL colon count on both sides to
    equal the number of CJK labels makes such records unalignable, so they are
    reported and left alone instead of being silently corrupted.
    """
    sflat = src
    for t in TOKENS:
        sflat = sflat.replace(t, "\n")
    cs = [m.group(1) for m in CJK_LABEL.finditer(sflat)]
    if not cs:
        return None
    n_src = sflat.count("：") + sflat.count(":")
    n_eng = eng.count("：") + eng.count(":")
    if n_src != len(cs) or n_eng != len(cs):
        return None
    ce = []
    for m in SPAN.finditer(eng):
        st = m.start()
        ph, ok = phrase_of(m.group(0)[:-1], st > 0 and eng[st - 1] == "^")
        if ok:
            ce.append((ph, m.start(1)))
    if len(ce) != len(cs):
        return None
    return [(cn, ph, pos) for cn, (ph, pos) in zip(cs, ce)]


def iter_records(workdir):
    inn, out = workdir / "in", workdir / "out"
    need = json.loads((workdir / "need.json").read_text(encoding="utf-8"))
    order = []
    for bid in need["batch_order"]:
        order += ["batch_008a", "batch_008b"] if bid == "batch_008" else [bid]
    for b in order:
        sd = {}
        for ln in (inn / (b + ".jsonl")).read_text(encoding="utf-8").splitlines():
            if ln.strip():
                r = json.loads(ln)
                sd[r["id"]] = r["source"]
        pf = out / (b + ".jsonl")
        for ln in pf.read_text(encoding="utf-8").splitlines():
            if ln.strip():
                r = json.loads(ln)
                yield b, r, sd.get(r["id"])


def main():
    workdir = Path(sys.argv[1] if len(sys.argv) > 1 else ".work/tr2")
    apply_changes = "--apply" in sys.argv

    # ---- pass 1: sanity-check the allowlist against the corpus ----
    variants = defaultdict(Counter)
    for _b, _r, src in iter_records(workdir):
        if not src:
            continue
        pr = pairs(src, _r.get("english", ""))
        if not pr:
            continue
        for cn, ph, _pos in pr:
            if ph and cn in CANON:
                variants[cn][ph] += 1

    for cn in sorted(set(CANON) | set(ALLOWED)):
        if CANON.get(cn) not in ALLOWED.get(cn, set()) and cn in ALLOWED:
            print("WARN: canonical %r for %s is not in its allowlist" % (CANON[cn], cn))
    varset = ALLOWED

    # ---- pass 2: apply ----
    total = 0
    touched_recs = 0
    touched_files = set()
    rename = Counter()
    skipped_colon = 0
    for b, r, src in iter_records(workdir):
        eng = r.get("english", "")
        if not src:
            continue
        pr = pairs(src, eng)
        if not pr:
            if CJK_LABEL.search(src):
                skipped_colon += 1
            continue
        edits = []
        for cn, ph, pos in pr:
            canon = CANON.get(cn)
            if canon is None or not ph or ph == canon:
                continue
            # gate: only rewrite phrases this chinese label was actually seen with,
            # so a mis-aligned colon pairing can never corrupt an unrelated word
            if ph not in varset.get(cn, ()):
                continue
            start = pos - len(ph)
            if eng[start:pos] != ph:
                continue
            edits.append((start, pos, ph, canon, cn))
        if not edits:
            continue
        new = eng
        for start, pos, old, canon, cn in sorted(edits, key=lambda t: -t[0]):
            new = new[:start] + canon + new[pos:]
            rename[(cn, old, canon)] += 1
        total += len(edits)
        touched_recs += 1
        touched_files.add(b)
        if apply_changes:
            r["english"] = new

    if apply_changes:
        for b in sorted(touched_files):
            pf = workdir / "out" / (b + ".jsonl")
            recs = [json.loads(l) for l in pf.read_text(encoding="utf-8").splitlines() if l.strip()]
            with pf.open("w", encoding="utf-8") as fh:
                for rr in recs:
                    fh.write(json.dumps(rr, ensure_ascii=False) + "\n")

    # ---- residual report ----
    residual = defaultdict(Counter)
    for _b, _r, src in iter_records(workdir):
        if not src:
            continue
        pr = pairs(src, _r.get("english", ""))
        if not pr:
            continue
        for cn, ph, _pos in pr:
            if cn in CANON:
                residual[cn][ph] += 1

    print("mode: %s" % ("APPLY" if apply_changes else "DRY-RUN"))
    print("files=%d records=%d label edits=%d  (records with unalignable colons: %d)"
          % (len(touched_files), touched_recs, total, skipped_colon))
    print()
    print("=== renames applied (cn | current -> canonical) x count ===")
    for (cn, old, canon), n in sorted(rename.items(), key=lambda t: -t[1]):
        print("  %-8s %-28s -> %-28s %d" % (cn, old, canon, n))
    print()
    print("=== residual variance per chinese label ===")
    clean = 0
    for cn in sorted(residual):
        forms = residual[cn]
        if len(forms) == 1:
            clean += 1
            continue
        print("  %-8s %s" % (cn, dict(forms.most_common())))
    print("  (%d/%d labels fully consistent)" % (clean, len(residual)))
    print()
    print("=== REVIEW terms ===")
    for t in REVIEW_TERMS:
        v = residual.get(t)
        print("  %-8s -> %-26s %s" % (t, CANON[t], dict(v.most_common()) if v else "(absent)"))


if __name__ == "__main__":
    main()