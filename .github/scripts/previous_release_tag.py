#!/usr/bin/env python3
import re
import sys

rel = sys.argv[1] if len(sys.argv) > 1 else ""


def key(tag):
    if re.fullmatch(r"[0-9]+", tag):
        return int(tag)
    match = re.search(r"[0-9]+[.][0-9]+[.][0-9]+", tag)
    if match:
        major, minor, patch = (int(part) for part in match.group(0).split("."))
        return major * 10000 + minor * 100 + patch
    match = re.search(r"(^|[^0-9])([0-9]{5,}|[0-9]{3})([^0-9]|$)", tag)
    if match:
        digits = re.sub(r"[^0-9]", "", match.group(0))
        if len(digits) == 3:
            return int(digits[0]) * 10000 + int(digits[1]) * 100 + int(digits[2])
        return int(digits)
    return -1


rel_num = key(rel)
best_num = -1
best_tag = ""

for raw_line in sys.stdin:
    tag = raw_line.strip()
    candidate_num = key(tag)
    if candidate_num < 0 or tag == rel:
        continue
    if rel_num >= 0 and candidate_num >= rel_num:
        continue
    if candidate_num > best_num:
        best_num = candidate_num
        best_tag = tag

print(best_tag)
