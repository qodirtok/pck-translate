"""Numeral-aware numeric parity check for the tr2/tr3 corpora.

Why this exists
---------------
A raw digit-multiset comparison between a Chinese payload and its English
translation is useless on its own: it flags every idiomatic numeric conversion
as a defect. All of the following are correct English, not errors:

    第一段          -> "Stage 1"           (ordinal written as a digit)
    技能品质：肆    -> "Skill Quality: 4"  (digit numeral written as a digit)
    三千            -> "3,000"             (numeral expanded)
    10月            -> "October"           (calendar month spelled out)
    七夕            -> "Qixi"              (festival name)
    1次             -> "once"              (count spelled out)
    上一阶段        -> "previous stage"    (NOT a numeral - 一 belongs to a word)

So both sides are normalised before comparing:

  * Chinese numeral runs -> Arabic digits, except runs inside a shielded word
  * English number words -> digits (once, first, October, twenty, ...)
  * digit-grouping commas removed (3,000 -> 3000)

Whatever still differs is a genuine defect: a number the translation added,
dropped, or altered. That residual list is the point of this module.

Shielding
---------
`七夕`, `上一`, `十一` and friends contain numeral characters but are words.
Shielded spans are swapped for a private-use marker + one alphabet letter (never
digits, which would re-enter the numeric scan) and restored afterwards.
"""

import re
from collections import Counter

CN_DIGITS = {
    "零": 0, "〇": 0, "一": 1, "壹": 1, "二": 2, "贰": 2, "两": 2, "三": 3, "叁": 3,
    "四": 4, "肆": 4, "五": 5, "伍": 5, "六": 6, "陆": 6, "七": 7, "柒": 7,
    "八": 8, "捌": 8, "九": 9, "玖": 9,
}
CN_UNITS = {"十": 10, "拾": 10, "百": 100, "佰": 100, "千": 1000, "仟": 1000}
CN_ALL = dict(CN_DIGITS)
CN_ALL.update(CN_UNITS)

# Words that merely CONTAIN a numeral character. Listed longest-first so the
# longest match wins.
SHIELDED = [
    # festivals / holidays / calendar proper nouns
    "七夕", "中秋", "端午", "元旦", "春节", "国庆", "重阳", "腊八", "冬至",
    "除夕", "元宵", "清明", "五一", "十一", "圣诞",
    # ordinary words built on 一 / 二 / 三 ...
    "上一", "下一", "一些", "一点", "一部分", "一直", "一定", "一样", "一旦",
    "一共", "一切", "唯一", "之一", "一体", "一丝", "一丝不苟", "一举",
    "万一", "三令五申", "五湖四海", "七上八下", "乱七八糟", "九牛一毛",
    "十全", "百战", "千军", "万事", "两面", "三者", "四方", "第五", "第二",
    "第一", "独当一面", "一命", "一夫", "一家", "一式", "一招", "一式", "一段",
]
SHIELDED = sorted(set(SHIELDED), key=len, reverse=True)

MARK = "\ue000"          # private use area: never a digit, never scanned
COLOR = re.compile(r"\^[0-9a-fA-F]{6}")
CN_RUN = re.compile("[" + "".join(CN_ALL) + "]+")

EN_WORD = {
    "once": 1, "twice": 2, "thrice": 3,
    "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7,
    "eight": 8, "nine": 9, "ten": 10, "eleven": 11, "twelve": 12, "thirteen": 13,
    "fourteen": 14, "fifteen": 15, "sixteen": 16, "seventeen": 17, "eighteen": 18,
    "nineteen": 19, "twenty": 20, "thirty": 30, "forty": 40, "fifty": 50,
    "sixty": 60, "seventy": 70, "eighty": 80, "ninety": 90,
    "first": 1, "second": 2, "third": 3, "fourth": 4, "fifth": 5, "sixth": 6,
    "seventh": 7, "eighth": 8, "ninth": 9, "tenth": 10,
    "january": 1, "february": 2, "march": 3, "april": 4, "may": 5, "june": 6,
    "july": 7, "august": 8, "september": 9, "october": 10, "november": 11,
    "december": 12,
}
EN_RE = re.compile(r"\b(" + "|".join(sorted(EN_WORD, key=len, reverse=True)) + r")\b", re.I)


def cn_to_int(s):
    total = section = num = 0
    for ch in s:
        v = CN_ALL[ch]
        if v < 10:
            num = v
        else:
            section += (num or 1) * v
            num = 0
    return total + section + num


def _shield(t):
    """Swap shielded words for MARK + a single alphabet letter."""
    table = {}
    letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    def sub_word(m):
        w = m.group(0)
        if w not in letters:
            w = "?"          # more than 52 distinct shielded words in one payload
        table[w] = m.group(0)
        return MARK + w

    pattern = re.compile("(" + "|".join(
        re.escape(w) for w in SHIELDED) + ")")
    return pattern.sub(sub_word, t), table


def _unshield(t, table):
    for k, v in table.items():
        t = t.replace(MARK + k, v)
    return t


def norm_cn(t):
    t, table = _shield(t)
    t = CN_RUN.sub(lambda m: str(cn_to_int(m.group(0))), t)
    return _unshield(t, table)


def norm_en(t):
    return EN_RE.sub(lambda m: str(EN_WORD[m.group(1).lower()]), t)


def nums(t):
    """Numeric multiset of a payload after numeral normalisation.

    The first physical line is the skill NAME header (e.g. `^c3dbff一剑凌风`).
    Numeral characters inside a proper name are not numeric values - 一剑凌风 is
    "Sword of the Gale", not "1 sword" - so the header is excluded from the
    comparison. Everything after it is a description or a stat line and is
    compared strictly.
    """
    t = COLOR.sub("", t)
    head, sep, rest = t.partition("<CRLF>")
    if not sep:
        head, rest = "", t
    rest = norm_en(norm_cn(rest))
    rest = re.sub(r"(?<=\d),(?=\d{3}\b)", "", rest)   # 3,000 -> 3000
    return Counter(re.findall(r"\d+(?:\.\d+)?", rest))


def diff(src, dst):
    """(missing_from_dst, added_in_dst) as dicts; empty dicts mean parity."""
    a, b = nums(src), nums(dst)
    return dict(a - b), dict(b - a)


def ok(src, dst):
    return not any(diff(src, dst))