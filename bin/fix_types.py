#!/usr/bin/env python3
import re
import glob


def fix_types(path):
    matcher = re.compile(r"""\s*\bsubtype\s+(\w+)\s+is\s+(\w+);.*""", re.I)
    with open(path, "r") as inf:
        buffer = inf.read()
        buffer_lines = buffer.split("\n")

    for line in buffer_lines:
        matches = matcher.match(line)    
        if matches:
            name = matches.group(2)
            if ("type %s is record" % name) in buffer:
                buffer = buffer.replace("type %s;" % name, 
                                        "--  <>type %s;" % name)
                buffer = buffer.replace("subtype %s_t is %s;" % (name, name), 
                                        "--  <>subtype %s_t is %s;" % (name, name))
                buffer = buffer.replace("type %s is record" % name, 
                                        "type %s_t is record" % name)
    with open(path, "w") as outf:
        outf.write(buffer)

        
for path in glob.glob("src/gen/*.ads"):
    fix_types(path)
