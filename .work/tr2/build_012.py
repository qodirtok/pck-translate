# -*- coding: utf-8 -*-
"""Build batch_012 translations: merge <<PAD>> markers with source padding runs.

Padding-run rule: a source whitespace run needs a <<PAD>> marker only if it
contains U+3000 or is an ASCII run of length >= 2. Single ASCII spaces in the
English output are natural word spacing and carry no marker.
"""
import json, re, sys, os

IN = "/Users/zlns/personal-www/pck-translate/.work/tr2/in/batch_012.jsonl"
OUT = "/Users/zlns/personal-www/pck-translate/.work/tr2/out/batch_012.jsonl"

T = {}
T[1] = "^c3dbffTrouble Dispeller<CRLF><CRLF>^ffffffType: Passive<CRLF>^ffffffLevel Requirement: Hero Lv.50<CRLF>^ffffffAncestral Origin Restriction: Jiaozhou<CRLF><CRLF>Elite troops of Wu, named for the vow “invincible in battle,<CRLF>able to resolve any crisis”;<CRLF>reduces the cool-down of the Official Seal skill Flying General.<CRLF><CRLF>^99ccffBased on the Trouble Dispeller soldiers.<CRLF>^99ccffRequires the corresponding Skill Book to learn."
T[2] = "^c3dbffButcher's Ox Cleave<CRLF><CRLF>^ffffffWeapon: Axe<<PAD>>20 Battle Qi   5 Stamina<CRLF>Martial Art: Instant<<PAD>>Cool-down 8 sec<CRLF><CRLF>Swing the axe at the joints of the enemy's armor,<CRLF>stripping away their plates just as Pao Ding dismembers an ox.<CRLF>Causes the enemy's Defense to drop by （%d + Target Level） points.<CRLF>Deals 50%% base Damage."
T[3] = "^c3dbffButcher's Ox Cleave · Force<CRLF>^ffffffRequires at least 20 points invested in Force-type Mastery.<CRLF><CRLF>^ffffffBoosts the Defense reduction and duration applied by Butcher's Ox Cleave."
T[4] = "^c3dbffCurse Power^ffffff<CRLF><CRLF>Skill Category: Agile<CRLF>Skill Quality: III<CRLF>Requirement: Melee<CRLF>High-Tier Move<CRLF><CRLF>Swing your weapon to attack 5 enemies around you<CRLF>dealing 81%% base Damage."
T[5] = "^c3dbffBizarre Casting<CRLF><CRLF>^ffffffWeapons: Ring Blade, Staff, Dance, Fan, Bow, Whip, Crossbow<<PAD>>50 Stamina<<PAD><CRLF>Move: Instant<<PAD>>Cool-down 60 sec<CRLF><CRLF>A bizarre incantation whose secret no one can识<<PAD><CRLF>Randomly unleashes 0-4 instant attacks on the target, each dealing a certain amount of Ignore-Defense Damage<CRLF>The number of attacks is affected by the target's Stun Resistance"
