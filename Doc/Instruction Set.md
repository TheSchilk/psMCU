# Instructions implemented in Statemachine Prototype

## JMP  a
Jump to ROM address.

a: ROM Address (14bit)

## SVA  a
Save contents of A in RAM at a fixed address.

a: Ram Address  (9bit)

## LDA  a
Load contents of RAM at a fixed address to A.

a: Ram Address  (9bit)

## LITA l
Put literal into A.

l: literal (8bit)

## HALT
Stop program execution. (Pressing the "Instruction Step" will resume)
 
## NOP
No Operation.

# Instructions partly implemented in Statemachine Prototype

## TBSM a,b TBRM a,b TBSR b TBRR b

# Instructions not included in Statemachine prototype

## CALL a

## AND

## ANDL l

## OR

## ORL  l

## XOR

## XORL l

##LITB l

##SHFTR 

##SHFTRL l

##SHFTL

##SHFTLL l

##ADD

##ADDL l

##SVDP

##SVDM 

##LDDP

##LDDM

##CPY

##NOTA

##COMPB

##SUB

##RTRN

##POP

##PUSH

##SWP

## SVB  a

## LDB  a








