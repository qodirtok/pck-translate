# tr3 Terminology — item_ext_desc.txt (Chinese → English)

Use these established renderings exactly. They come from the project's
already-promoted translation files (47 aligned current/Translate pairs).
Consistency matters more than elegance: when a term below matches, use the
listed English form verbatim.

## UI / interaction verbs

| 中文 | English |
|---|---|
| 右键点击 | Right-click |
| 点击 | click |
| 使用 | use; Can only be used in ... |
| 开启 | open; activate; enable |
| 领取 | claim |
| 兑换 | exchange; redeem |
| 购买 | buy; purchase |
| 附加 | Adds (e.g. "Level %d - Adds %d Damage") |
| 获得 | gain; receive; earn |
| 升级 | upgrade; level up |
| 学习 | learn; Learning Requirement |
| 学会 | learned; Must have learned ... |
| 能学习 | can be learned; Only one can be learned |
| 需要 / 需求 | requires; Requirement: ... |

## Stats and resources

| 中文 | English |
|---|---|
| 攻击力 / 攻击 | Attack Power; Attack |
| 防御 / 防御力 | Defense |
| 生命值 / 生命 / 命值 | HP; Max HP |
| 体力 | Stamina |
| 斗气 | Battle Qi |
| 历练 | Experience; Training and Experience value |
| 移动速度 | Movement Speed |
| 暴击 | Crit; Crit Rate |
| 属性 | Attribute; Type (majority form: "Type: Passive") |

## Labels (use "Label: value" with ASCII colon)

| 中文 | English |
|---|---|
| 品质 | Quality (e.g. "Skill Quality: IV") |
| 类别 | Category (e.g. "Skill Category: Wisdom") |
| 类型 | Type (e.g. "Soul Skill Type: Protection") |
| 等级 | Level (e.g. "Level %d - Adds %d Damage") |
| 冷却 / 冷却时间 | Cool-down (e.g. "Cool-down: 5 min") |
| 消耗 | Cost (e.g. "Cost: 10 Stamina") |
| 武技 | Martial Art (e.g. "Martial Art: Instant") |
| 兵器 | Weapon (e.g. "Weapon: Any") |
| 英雄 | Hero (e.g. "Level Requirement: Hero Lv.36") |
| 限制 | Restriction (e.g. "Origin Restriction: Qingzhou") |
| 祖籍 | Ancestral; ancestral homeland; Origin Restriction |

## Item / equipment terms

| 中文 | English |
|---|---|
| 兵器 | Weapon |
| 装备 | equip; equipment |
| 兵种 | troop; troop-type |
| 马匹 | mount; horse |
| 骑术 | Riding (e.g. "Advanced Riding") |
| 符玉 | Skill Jade |
| 秘文 | Secret Text; Rune; Secret Manual |
| 图鉴 | Codex; Illustrated Guide |
| 礼包 | Gift Pack |
| 奖励 | Reward |
| 任务 | quest |
| 称号 | title |
| 绑定 | Binds on Equip; Bound |
| 不可交易 | Untradable |
| 可交易 | Tradable; Cross-Server Tradable |
| 交易 | trade; trading |
| 包裹 | inventory; bag; pack |
| 留出 | free up (e.g. "please free up at least one slot") |

## Place names (proper nouns — keep as-is)

| 中文 | English |
|---|---|
| 长安 | Chang'an |
| 洛阳 | Luoyang |
| 木牛流马 | Wooden Ox and Gliding Horse |
| 赤壁 | Chibi; Red Cliff (project uses both; match context) |

## Asset paths — DO NOT translate (copy byte-for-byte)

These filenames appear inside payloads and are immutable:

- `护卫技能_*.dds` (e.g. `护卫技能_夜月凝霜.dds`, `护卫技能_月影击.dds`)
- `斗气虚空.dds`
- `不可侵犯.dds`
- Any other path ending in `.dds`, `.att`, `.gfx`

## Punctuation rules (fullwidth → ASCII)

| Fullwidth | ASCII |
|---|---|
| `。` (U+3002) | `.` |
| `：` (U+FF1A) | `:` |
| `，` (U+FF0C) | `,` |
| `（` `）` (U+FF08/09) | `(` `)` |
| `、` (U+3001) | `,` (or appropriate) |
| `！` (U+FF01) | `!` |
| `；` (U+FF1B) | `;` |
| `？` (U+FF1F) | `?` |

Use straight ASCII quotes `"` in your output — the pipeline converts them
to curly quotes during finalization.

## Dates

- `2010年3月` → `March 2010`
- `2011年1月23日` → `January 23, 2011`
- `19：00-24：00` → `19:00-24:00` (ASCII colon)

## Preserve exactly (never translate or alter)

- Color codes: `^fff600`, `^7fffff`, `^ffffff`, `^ff0000`, `^8DF1EF`, etc.
- Placeholders: `%d`, `%s`, `%%`, `%.2f`, `*level`, `&%s&`
- Color swatch character: `■` (U+25A0)
- Literal `\r` text (backslash + r) — the game's own in-text line-break marker
- `<LF>` sentinels (angle-bracket L-F) — line breaks in multi-line payloads;
  keep them at the same positions in your English
- Numbers, percentages, stat values
