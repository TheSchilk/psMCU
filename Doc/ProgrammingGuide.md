# Programming Guide

## Architecture Overview
psMCU features two 8 bit registers (A & B) onto which the instructions add. 

The program is a sequence of 16 bit instructions stored in their own ROM
with a 14 bit address bus allowing for up to aprox. 16K instructions.

psMCU features 4096 bytes of freely usable heap RAM and 4096 Stack RAM which
are completely separate, Additionally there is accommodation for up to 256
peripheral and status registers which share an address space with the heap RAM.

The heap RAM is referred to simply as RAM, while the Stack RAM is refereed to
as STACK.

RAM and Peripheral Register addressing works as follows:  
The internal RAM address bus is 9 bits wide, giving an address space of 0x000-0x1FF

The 4096 bytes of RAM are paged into 16 pages of 256 bytes.

The 9 bit wide RAM address bus is mapped as follows:

| 0x000<br>.<br>.<br>0x0FF | <br>Currently Selected<br>RAM Page     |
|:------------------------:|----------------------------------------|
| 0x100<br>.<br>.<br>0x1FF | <br>Peripheral and<br>Status Registers |

The current RAM page can be selected using the PAGE register.

The Stack may only be accessed using the `PUSH`, `POP`, `CALL`, and `RETURN`
instructions.

Do note however that some instructions cannot access the whole 9 bit wide
address bus. In this case two instructions are provided. One accesses the
lower RAM portion of the address space, and one the upper peripheral section.

These instructions are:
```
# Save the value in register A to the peripheral register at the address
# specified by the B register. (Address = B + 0x100)
SVDP

# Load the value from the peripheral register specified in B to the A
# Register (Address = B + 0x100)
LDDP

# Save the value in register A to RAM at the address specified by the
# B register. (Address = B + 0x000)
SVDM

# Load the value from RAM at the address specified by the B register to the
# A Register. (Address = B + 0x000)
LDDM

```

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


