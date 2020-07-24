# Programming Guide

## Architecture Overview

## Syntax

### Comments
Comments are indicated with a `#` and go until the end of the line:
```
# This whole line is a comment
JMP somewhere # <- Everything before this is an instruciton but I am not!
```
Lines with only whitespace are also ignored

### Instructions
Generally an instruction consists of an Operation and some arguments:
```
# Format: [INSTRUCTION] [COMMA SEPERATED LIST OF ARGUMENTS]

# The NOP instructions does nothing and takes no arguments. Fun.
# Do Nothing:
NOP

# Load the value 42 into the Register A:
LITA 42

# Skip the next instruction if bit 0 of the value at address 0x100 is set:
TBRM 0x100,0

# Also valid
      TBRM     0x100 ,        0

```

### Labels
Because the precise positions of instructions is not know until during assembly
and may change frequently, an instruction can be labeled.

These labels can then be used in JMP and CALL instructions instead
of a hard-coded address. The address to be jumped to is inserted
auto-magically during assembly. 

```
# An infinte Loop:
TheStart_isHere: NOP # A labeled NOP instruction
JMP TheStart_isHere # A jump to the previously defined label

```

A label must not contain whitespace characters.

### Preprocessor Directives
Preprocessor directives start with a `@`.
There are 2 preprocessor directives:
`@define ONE 1`  
`@include another_file.psASM'  

### Constants


