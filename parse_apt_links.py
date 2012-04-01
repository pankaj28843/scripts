#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import re

if __name__ == "__main__":
    entries = []
    while True:
        line = sys.stdin.readline()
        if not line: break
        uri =  line.split()[0]
        uri = re.sub(r"^'|'$", "", uri)
        size = line.split()[2]
        print "--filesize %s %s"%(size, uri)
