# The psASM Instruction Set

## Basic Instructions

### NOP

No Operation.

Clock Cycles: 2

No arguments.

### HALT

Halt execution.
Execution may be resumed by manually pressing the 'Step Instruction' button.

Clock Cycles: Undefined.

### LITA L

Load the literal value L into Register A.  

Clock Cycles: 2

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### LITB L

Load the literal value L into register B.

Clock Cycles: 2

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### CPY

Copy to contents of register A into register B.

Clock Cycles: 2

No arguments.

### SWP

Swap to contents of registers A and B.

Clock Cycles: 4

No arguments.

### JMP A

Jump to instruction at address A. 

Clock Cycles: 2

| *Argument* | *Usage* | *Bit-width* | *Valid Range* | *Note* |
| :-:        | -       | :-:         | :-:           | :-:    |
| A          | Address | 14          | [0,16383]     | /      |

### IFRA B

Execute the next instruction only if bit B in Register A is reset (equal to 0), otherwise the next instruction is skipped.

Clock Cycles: 3

| *Argument* | *Usage* | *Bit-width* | *Valid Range* | *Note*           |
| :-:        | -       | :-:         | :-:           | :-:              |
| B          | Bit     | 3           | [0,7]         | 0 = LSB, 7 = MSB |

### IFSA B

Execute the next instruction only if bit B in Register A is set (equal to 1), otherwise the next instruction is skipped.

Clock Cycles: 3

| *Argument* | *Usage* | *Bit-width* | *Valid Range* | *Note*           |
| :-:        | -       | :-:         | :-:           | :-:              |
| B          | Bit     | 3           | [0,7]         | 0 = LSB, 7 = MSB |

### IFRM A, B

Executes the next instruction only if bit B of the value stored at address A is reset (equal to 0), otherwise the next instruction is skipped.

Clock Cycles: 3

| *Argument* | *Usage* | *Bit-width* | *Valid Range* | *Note*           |
| :-:        | -       | :-:         | :-:           | :-:              |
| A          | Address | 9           | [0,511]       |                  |
| B          | Bit     | 3           | [0,7]         | 0 = LSB, 7 = MSB |

### IFSM A, B

Executes the next instruction only if bit B of the value stored at address A is set (equal to 1), otherwise the next instruction is skipped.

Clock Cycles: 3

| *Argument* | *Usage* | *Bit-width* | *Valid Range* | *Note*           |
| :-:        | -       | :-:         | :-:           | :-:              |
| A          | Address | 9           | [0,511]       |                  |
| B          | Bit     | 3           | [0,7]         | 0 = LSB, 7 = MSB |

## Data Manipulation Instructions

### ADD

Calculate register A plus register B, and store the result in register A.

Nothing is carried into the summation.

The C, HC, and OVF bits in system register 1 are set accordingly, to indicate a carry-out, half-carry-out, and signed overflow. 

Clock Cycles: 2

No arguments.

### ADDC

Calculate register A plus register B, and store the result in register A.

The C bit in the system register 1 is carried into the summation. 

The C, HC, and OVF bits in system register 1 are set accordingly, to indicate a carry-out, half-carry-out, and signed overflow. 

Clock Cycles: 2

No arguments.

### ADDLA L

Calculate register A plus the literal L, and store the result in register A.

Nothing is carried into the summation.

The C, HC, and OVF bits in system register 1 are set accordingly, to indicate a carry-out, half-carry-out, and signed overflow. 

Clock Cycles: 2

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### ADDLAC L

calculate register a plus the literal l, and store the result in register a.

the c bit in the system register 1 is carried into the summation. 

the c, hc, and ovf bits in system register 1 are set accordingly, to indicate a carry-out, half-carry-out, and signed overflow. 

Clock Cycles: 2

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |
|            |               |             |               |                                                                       |
### ADDLB L

Calculate register B plus the literal L, and store the result in register B.

Nothing is carried into the summation.

The C, HC, and OVF bits in system register 1 are set accordingly, to indicate a carry-out, half-carry-out, and signed overflow. 

Clock Cycles: 2

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### ADDLBC L

Calculate register B plus the literal L, and store the result in register B.

The C bit in the system register 1 is carried into the summation. 

The C, HC, and OVF bits in system register 1 are set accordingly, to indicate a carry-out, half-carry-out, and signed overflow. 

Clock Cycles: 2

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### SUB

Clock Cycles:

### SUBC

Clock Cycles:

### SUBL L

Clock Cycles:

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### SUBLC  L

Clock Cycles:

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### COMPB

Convert register B to the two's complement of opposite sign and store the result in register B

Nothing is carried into the summation that is part of the negation process.

The COMP_C bit in system register 1 is set accordingly to indicate a carry-out from the summation inside the negation process.

Clock Cycles:

### COMPBC

Convert register B to the two's complement of opposite sign and store the result in register B

The COMP_C bit in system register 1 is carried into the summation that is part of the negation process.

The COMP_C bit in system register 1 is set accordingly to indicate a carry-out from the summation inside the negation process.

Clock Cycles:

### NOTA

Bitwise invert register A and store the result in register A.

Clock Cycles: 2

No arguments.

### AND

Calculate register A bitwise-and register B, and store the result in register A.

Clock Cycles: 2

No Arguments.

### ANDL L

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### OR 

### ORL L

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### XOR

### XORL L

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### SHFTR

### SHFTRL L

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

### SHFTL

### SHFTLL L

| *Argument* | *Usage*       | *Bit-width* | *Valid Range* | *Note*                                                                |
| :-:        | -             | :-:         | :-:           | :-:                                                                   |
| L          | Literal       | 8           | [-128,255]    | Negative values are converted to 8-bit 2's complement representation. |

## Heap RAM & Peripheral Access Instructions

### SVA A 

### SVB A

### LDA A

### LDB A

### SVDP

### SVDR

### LDDR 

### LDDR

## Stack RAM Instructions

### CALL A

### RTRN

### RTRNI

### POPA

### POPB

### POPM A

### PUSHA

### PUSHB

### PUSHM A

### STLA O

### STLB O

### STSA O

### STSB O

### GROW S

### SHRINK S

