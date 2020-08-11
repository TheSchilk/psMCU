# JMP  a
Jump to ROM address.

a: ROM Address (14bit)

# CALL a
Jump to ROM address and push return address onto stack.

a: ROM Address (14bit)

# TBSM a,b
Skip if bit is set in specified RAM position.

a: Ram Address  (9bit)
b: Bit to check (3bit) (0 = LSB, 7 = MSB)

# TBRM a,b
Skip if bit is reset in specified RAM position.

a: Ram Address  (9bit)
b: Bit to check (3bit) (0 = LSB, 7 = MSB)

# TBSR b
Skip if bit is set in A.

b: Bit to check (3bit) (0 = LSB, 7 = MSB)

# TBRR b
Skip if bit is reset in A.

b: Bit to check (3bit) (0 = LSB, 7 = MSB)

# RTRNI
Returns from an interrupt.

# AND
Logical AND A and B, store in A.

# ANDL l
Logical AND A and some literal, store in A.

l: literal (8bit)

# OR
Logical OR A and B, store in A.

# ORL  l
Logical OR A and some literal, store in A.

l: literal (8bit)

# XOR
Logical XOR A and B, store in A.

# XORL l
Logical XOR A and some literal, store in A.

l: literal (8bit)

# SVA  a
Save contents of A in RAM at a fixed address.

a: Ram Address  (9bit)

# SVB  a
Save contents of B in RAM at a fixed address.

a: Ram Address  (9bit)


# LDA  a
Load contents of RAM at a fixed address to A.

a: Ram Address  (9bit)

# LDB  a
Load contents of RAM at a fixed address to B.

a: Ram Address  (9bit)

# LITA l
Put literal into A.

l: literal (8bit)

#LITB l
Put literal into B.

l: literal (8bit)

#SHFTR 
Shift A right by a value in B. Store in A.

#SHFTRL l
Shift A right by a literal. Store in A.

l: literal (8bit)

#SHFTL
Shift A left by a value in B. Store in A.

#SHFTLL l
Shift A left by a literal. Store in A.

l: literal (8bit)

#ADD
Add A to B. Store in A.

May set the C and HC flags in the Status Register

#ADDL l
Add A to literal. Store in A.

May set the C and HC flags in the Status Register.

l: literal (8bit)

#SVDP
Save A to RAM at the location specified in B, with the 9th bit set.

Note: This saves to the upper half of RAM, where all peripherals are mapped to.

#SVDM 
Save A to RAM at the location specified in B, with the 9th bit zeroed.

Note: This saves to the lower half of RAM, where the selected RAM page is mapped to.

#LDDP
Load A from RAM at the location specified in B, with the 9th bit set. 

Note: This loads from the upper half of RAM, where all peripherals are mapped to. 

#LDDM
Load A from RAM at the location specified in B, with the 9th bit zeroed. 

Note: This loads from the lower half of RAM, where the selected RAM page is mapped to.

#CPY
Copy the contents of the A into B.

#NOTA
Invert A. Store in A.

#COMPB
Calculate two's complement of B. Store in B. 

#SUB
Subtract B from A. Store in A.

May set the B and HB flags in the Status Register.

#RTRN
Pop the last two values off the stack and return to that address.

#POP
Pop the last value off the stack and store in A.

#PUSH
Push A onto the Stack.

#SWP
Swap the contents of A and B

#HALT
Stop program execution. (Pressing the "Instruction Step" will resume)

#NOP
No Operation.


