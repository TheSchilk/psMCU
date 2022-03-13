Types of Instructions:

A: No Data
D: 8b Data
C: ?b Instruction Adr
D: 10b Mem Adr

# Flow:

[x] JMP
[x] CALL

[x] RTRN

[x] INTRPT
[x] RTRNI

[x] IFS
[x] IFR

[x] HALT
[x] NOP

# Memory:

[x] LDA
[x] LDB

[x] SVA
[x] SVB

[x] LDO
[x] SVO

[x] PUSHA
[x] PUSHB
[x] POPA
[x] POPB

[x] DATA4
[x] DATA5

[x] GROW
[x] SHRINK

[x] STLA
[x] STLB
[x] STSA
[x] STSB

[x] STLO
[x] STSO

# Data Management:

[x] LITA
[x] LITB

[x] CPY

[x] SWP

# Calculation:

[x] ADD
[x] ADDL
[x] ADDC
[x] ADDLC

[x] ADDLA
[x] ADDLAC
 
[x] ADDLB
[x] ADDLBC

[x] SUB
[x] SUBC

[x] NOTA
[x] NOTB
 
[x] AND
[x] ANDL
 
[x] OR
[x] ORL
 
[x] XOR
[x] XORL
 
[x] COMPA
[x] COMPAC
 
[x] COMPB
[x] COMPBC
 
[x] SHFTL
[x] SHFTLL
[x] SHFTLC
[x] SHFTLLC
 
[x] SHFTR
[x] SHFTRL
[x] SHFTRC
[x] SHFTRLC



##################################

Multiplication:

Unsignd:
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add

Signed:
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add
    8 Add
