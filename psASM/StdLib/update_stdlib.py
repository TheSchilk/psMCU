#!/usr/bin/env python3

# Update the StdLib embedded in StdLib.py using StdLib.psASM 

# Convert StdLib.psASM into a python list of strings
StdLib = []
with open('StdLib.psASM', 'r') as asm_file:
    StdLib.append("StdLib = [\n")
    for line in asm_file:
        line = line.rstrip("\n\r")
        StdLib.append("    '"+str(line)+"'\n")
    StdLib.append("]\n")

# Overwrite ../StdLib.py with new content:
with open('../StdLib.py', 'w') as asm_file:
    for line in StdLib:
        asm_file.write(line)

print("Updated ../StdLib.py!")
