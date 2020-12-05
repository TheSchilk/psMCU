" VIM syntax file
" Language: psASM

if exists("b:current_syntax")
    finish
endif

syn keyword psASM_OP_CTRL NOP HALT
syn keyword psASM_OP_JMP JMP CALL IFSA IFRA IFSM IFRM RTRN RTRNI
syn keyword psASM_OP_OP AND ANDL OR ORL XOR XORL SHFTR SHFTRL SHFTL SHFTLL ADD ADDLA ADDLB NOTA COMPB SUB SUBL LITA LITB CPY SWP
syn keyword psASM_OP_DATA SVA SVB LDA LDB SVDP SVDR LDDP LDDR POPA PUSHA POPB PUSHB POPM PUSHM

syn match psASM_Comment '#.*$'
syn match psASM_PRE '^\s*@.*$'
syn match psASM_LIT '\d\+' " An unsigned literal
syn match psASM_LIT '(+|-)\d\+' " A signed literal
syn match psASM_LIT '0x[\dabcdefABCDEF]\+' " A hex literal
syn match psASM_LIT '0b[01]\+'


" Highlighting:
let b:current_syntax = "cel"
hi def link psASM_Comment Comment
hi def link psASM_PRE PreProc
hi def link psASM_OP_CTRL Statement
hi def link psASM_OP_JMP Statement
hi def link psASM_OP_OP Statement
hi def link psASM_OP_DATA Statement
" hi def link psASM_LIT Constant

