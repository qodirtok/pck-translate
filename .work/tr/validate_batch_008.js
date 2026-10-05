#!/usr/bin/env node
const fs = require('fs');

const inPath = '/Users/zlns/personal-www/pck-translate/.work/tr/in/batch_008.jsonl';
const outPath = '/Users/zlns/personal-www/pck-translate/.work/tr/out/batch_008.jsonl';

const inLines = fs.readFileSync(inPath, 'utf8').split(/\r?\n/).filter(l => l.trim());
const outLines = fs.readFileSync(outPath, 'utf8').split(/\r?\n/).filter(l => l.trim());

console.log('Input lines:', inLines.length);
console.log('Output lines:', outLines.length);

let idMismatch = 0;
let sentinelMismatch = 0;
let colorCodeMismatch = 0;
let chineseRemaining = 0;
let placeholderMismatch = 0;
let issues = [];

for (let i = 0; i < inLines.length; i++) {
  const src = JSON.parse(inLines[i]);
  const out = JSON.parse(outLines[i]);
  
  // Check ID match
  if (src.id !== out.id) {
    idMismatch++;
    if (idMismatch <= 3) issues.push(`ID mismatch at line ${i}: src=${src.id} out=${out.id}`);
  }
  
  // Check <CRLF> count
  const srcCRLF = (src.source.match(/<CRLF>/g) || []).length;
  const outCRLF = (out.english.match(/<CRLF>/g) || []).length;
  if (srcCRLF !== outCRLF) {
    sentinelMismatch++;
    if (sentinelMismatch <= 5) issues.push(`CRLF mismatch id=${src.id}: src=${srcCRLF} out=${outCRLF}\n  src: ${src.source.substring(0,100)}\n  out: ${out.english.substring(0,100)}`);
  }
  
  // Check color codes (^hex)
  const srcColors = (src.source.match(/\^[0-9a-fA-F]{6}/g) || []).sort();
  const outColors = (out.english.match(/\^[0-9a-fA-F]{6}/g) || []).sort();
  if (srcColors.length !== outColors.length) {
    colorCodeMismatch++;
    if (colorCodeMismatch <= 5) issues.push(`Color code mismatch id=${src.id}: src=${srcColors.join(',')} out=${outColors.join(',')}`);
  }
  
  // Check Chinese remaining
  if (/[\u4e00-\u9fff]/.test(out.english)) {
    chineseRemaining++;
    if (chineseRemaining <= 10) issues.push(`Chinese remaining id=${src.id}: ${out.english.substring(0,120)}`);
  }
  
  // Check % placeholders
  const srcPlaceholders = (src.source.match(/%\d*\$?[dsx%]|%[0-9]*[dsx]/g) || []).sort();
  const outPlaceholders = (out.english.match(/%\d*\$?[dsx%]|%[0-9]*[dsx]/g) || []).sort();
  if (JSON.stringify(srcPlaceholders) !== JSON.stringify(outPlaceholders)) {
    placeholderMismatch++;
    if (placeholderMismatch <= 5) issues.push(`Placeholder mismatch id=${src.id}: src=${srcPlaceholders} out=${outPlaceholders}`);
  }
}

console.log('\n=== VALIDATION RESULTS ===');
console.log('ID mismatches:', idMismatch);
console.log('CRLF sentinel mismatches:', sentinelMismatch);
console.log('Color code mismatches:', colorCodeMismatch);
console.log('Chinese characters remaining:', chineseRemaining);
console.log('Placeholder mismatches:', placeholderMismatch);

if (issues.length > 0) {
  console.log('\n=== ISSUES (first 20) ===');
  for (const issue of issues.slice(0, 20)) {
    console.log(issue);
    console.log('---');
  }
} else {
  console.log('\n✅ All checks passed!');
}
