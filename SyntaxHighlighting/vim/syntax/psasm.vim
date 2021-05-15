" VIM syntax file
" Language: psASM

if exists("b:current_syntax")
    finish
endif

" Instructions related to execution-flow
syn keyword psASM_Inst_Flow NOP HALT JMP CALL IFSA IFRA IFSM IFRM RTRN RTRNI

" Instructions related to data manipulation
syn keyword psASM_Inst_Data AND ANDL OR ORL XOR XORL SHFTR SHFTRL SHFTL SHFTLL COMPB COMPBC ADD ADDC ADDLA ADDLAC ADDLB ADDLBC NOTA SUB SUBC SUBL SUBLC LITA LITB CPY SWP

" Instructions related to memory/stack access
syn keyword psASM_Inst_Mem SVA SVB LDA LDB SVDP SVDR LDDP LDDR POPA PUSHA POPB PUSHB POPM PUSHM GROW SHRINK STSA STSB STLA STLB

" Comments
syn match psASM_Comment '#.*$'

" Preprocessor statemnts:
syn match psASM_PreProc '^\s*@.*$'

" Line Labels
syn match psASM_Label_Global '^\s*[a-zA-Z0-9_]\+\s*:'
syn match psASM_Label_Local '^\s*\.[a-zA-Z0-9_]\+\s*:'

" " Decimal literals
" syn match psASM_Literal '\d\+' 
" syn match psASM_Literal '(+|-)\d\+'
" 
" " Hex literals
" syn match psASM_Literal '0x[\dabcdefABCDEF]\+'
" 
" " Binary literals
" syn match psASM_Literal '0b[01]\+'


" Highlighting
let b:current_syntax = "cel"

hi def link psASM_Inst_Flow Function
hi def link psASM_Inst_Data Function
hi def link psASM_Inst_Mem  Function

hi def link psASM_Comment Comment
hi def link psASM_PreProc PreProc
hi def link psASM_Label_Global Tag 
hi def link psASM_Label_Local Debug

" hi def link psASM_Literal Constant

