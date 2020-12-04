# Programming Guide

## Architecture Overview
psMCU features two 8 bit registers (A & B) onto which the instructions act. 

The program is a sequence of 16 bit instructions stored in their own ROM
with a 14 bit address bus allowing for up to aprox. 16K instructions.

psMCU features 4096 bytes of freely usable heap RAM and 4096 bytes of Stack RAM 
which are completely separate. Additionally there is accommodation for up to 256
peripheral and status registers which share an address space with the heap RAM.

The heap RAM is referred to simply as RAM, while the Stack RAM is refereed to
as STACK.

RAM and Peripheral Register addressing works as follows:  
The internal RAM address bus is 9 bits wide, giving an address space of 0x000-0x1FF

The 4096 bytes of RAM are paged into 16 pages of 256 bytes.

The 9 bit wide RAM address bus is mapped as follows:
|       Address Range      |                 Function               |
|:------------------------:|----------------------------------------|
| 0x000<br>.<br>.<br>0x0FF | <br>Currently Selected<br>RAM Page     |
| 0x100<br>.<br>.<br>0x1FF | <br>Peripheral and<br>Status Registers |

The current RAM page can be selected using System Register 2.

The Stack may only be accessed using the following instructions:
```
PUSHA 
PUSHB
PUSHM

POPA
POPB
POPM

CALL
RETURN
```

Do note, however, that some instructions cannot access the whole 9 bit wide
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
## Execution/Fixed Addresses
The processor starts by executing the instruction at ROM address 0x0.
The processor jumps to address 0x1 when an interrupt occurs.

Therefore, the instruction at 0x0 is usually a jump to the entry point of the 
program, and the instruction at 0x1 a jump to the interrupt
service routine. These instructions are generated automatically by
psASM. See the sections Main and Interrupts below for details.

## Syntax

### Comments
Comments are indicated with a `#` and go until the end of the line:
```
# This whole line is a comment
JMP somewhere # <- Everything before this is an instruciton but I am not!
```
Lines with only white space are also ignored

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
and may change frequently, an instruction can be labelled.

These labels can then be used in JMP and CALL instructions instead
of a hard-coded address. The address to be jumped to is inserted
auto-magically during assembly. 

```
# An infinte Loop:
TheStart_isHere: NOP # A labeled NOP instruction
JMP TheStart_isHere # A jump to the previously defined label

```

A label must always be followed by an instruction.

A label must not contain white-space characters. There are 2 reserved labels:
`MAIN` and `INTERRUPT`.

### Main
psASM automatically generates a jump instruction at address 0x0 to jump to the
entry point of the program.

If a `MAIN` (case sensitive) label exists anywhere in the program, psASM will 
generate a jump to that label.

If no `MAIN` label is found, psASM will generate a jump to the first instruction
of the first file. It is recommended to have a `MAIN` label.


### Interrupts
Interrupts are enabled with the `EN_INT` bit in System Register 3.

If Interrupts are enabled and an interrupt occurs, the processor will finish 
executing the current instruction, and then jump to address 0x1 while pushing
the address of the next instruction to be executed onto the stack.

If a `INTERRUPT` (case sensitive) label exists anywhere in the program,
psASM will automatically generate a jump to that label at ROM address 0x1.

If there is no such label, psASM will automatically generate a `RTRNI`
(Return from interrupt) instruction at that location which will cause 
the process to return back to execution.

All interrupts are suppressed until the processor finishes handling the
interrupt with the `RTRNI` instruction. Should another interrupt occur
while handling the interrupt (or while interrupts are disabled), another
interrupt will occur immediately after the current interrupt returns (or
interrupts are enabled).

Registers A and B do not feature shadow registers. Therefore, the interrupt
should stash their current value on the stack and restore it before returning.

System Register 2 also does not feature a shadow register. If the interrupt
routine needs to access a different RAM page it needs to restore the page
selected before returning.

The only data that is automatically saved and restored when entering/exiting
an interrupt are the ALU status bits in the System Register 1. This does not
include the 'Shift in' bit. This means that instructions that affect these 
bits can be used in the interrupt routine without causing problems.

An example interrupt routine:

```
@include StdLib.psASM
# Interrupt routine:

# Push A then B onto the Stack:
INTERRUPT: 
PUSHA
PUSHB

# Push System Register 2 onto the Stack 
# to save the currently selected RAM page:
# (Only necessary if page is changed in interrupt)
PUSHM SYS2

# ... Handle Interrupt ....

# Restore System Register 2:
POPM SYS2

# Restore A and B
POPB
POPA

# Return from the interrupt routine:
RTRNI

```


### Preprocessor Directives
Preprocessor directives start with a `@`.
There are 2 preprocessor directives:
```
@define ONE 1
@include another_file.psASM
```

### Constants

