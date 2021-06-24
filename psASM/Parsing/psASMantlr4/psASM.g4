grammar psASM;

// ====== Line =======

line
   : line_content EOL
   ;

line_content: preproc_directive #preproc_line
   | instruction #instruction_line
   | labels #labels_line
   | #empty_line
   ;

// ======= Instruction =======

instruction
    : (lbls=labels)? inst=INST (args+=expr (COMMA args+=expr)*)?
    ;

labels
    : lbls+=IDENTIFIER (COMMA lbls+=IDENTIFIER)* COLON
    ;

INST 
   : 'JMP'    | 'CALL'  | 'IFRM'   | 'IFSM'  | 'IFRA'   | 'IFSA'  | 'RTRN' 
   | 'RTRNI'  | 'POPA'  | 'POPB'   | 'PUSHA' | 'PUSHB'  | 'GROW'  | 'SHRINK' 
   | 'STLA'   | 'STLB'  | 'STSA'   | 'STSB'  | 'POPM'   | 'PUSHM' | 'COMPB' 
   | 'COMPBC' | 'ADDLB' | 'ADDLBC' | 'ADD'   | 'ADDC'   | 'ADDLA' | 'ADDLAC' 
   | 'SUB'    | 'SUBC'  | 'SUBL'   | 'SUBLC' | 'AND'    | 'ANDL'  | 'OR' 
   | 'ORL'    | 'XOR'   | 'XORL'   | 'SHFTR' | 'SHFTRL' | 'SHFTL' | 'SHFTLL' 
   | 'NOTA'   | 'SVA'   | 'SVB'    | 'LDA'   | 'LDB'    | 'SVDR'  | 'SVDP' 
   | 'LDDR'   | 'LDDP'  | 'LITA'   | 'LITB'  | 'CPY'    | 'SWP'   | 'HALT' 
   'NOP' ; 

COMMA: ',' ;

// ======= PreProc =======

preproc_directive
    : preproc_define 
    | preproc_include 
    | preproc_include_once
    | preproc_if 
    | preproc_ifdef 
    | preproc_ifndef 
    | preproc_elif 
    | preproc_else 
    | preproc_endif 
    | preproc_print 
    | preproc_error 
    | preproc_ascii_heap 
    | preproc_ascii_stack 
    | preproc_macro 
    | preproc_macro_expansion 
    | preproc_endmacro 
    ;
    
preproc_define
    : DEFINE name=IDENTIFIER (value=expr)? 
    ;

preproc_include
    : INCLUDE file_str=STRING_LITERAL
    ;

preproc_include_once
    : INCLUDE_ONCE
    ;

preproc_if
    : IF cond=expr
    ;

preproc_ifdef
    : IFDEF arg=IDENTIFIER
    ;

preproc_ifndef
    : IFNDEF arg=IDENTIFIER
    ;

preproc_elif
    : ELIF cond=expr
    ;

preproc_else
    : ELSE
    ;

preproc_endif
    : ENDIF
    ;

preproc_print
    : PRINT msg=STRING_LITERAL (COMMA args+=expr)*
    ;

preproc_error
    : ERROR (msg=STRING_LITERAL)?
    ;

preproc_ascii_heap
    : ASCII_HEAP txt=STRING_LITERAL COMMA adr=expr
    ;

preproc_ascii_stack
    : ASCII_STACK txt=STRING_LITERAL
    ;

preproc_macro
    : MACRO macro_name=IDENTIFIER (args+=IDENTIFIER (COMMA args+=IDENTIFIER)*)?
    ;

preproc_endmacro
    : ENDMACRO 
    ;

preproc_macro_expansion
    : (lbls=labels)? macro_name=IDENTIFIER (args+=expr (COMMA args+=expr)*)?
    ;

DEFINE: '@define' ;

INCLUDE: '@include' ;

INCLUDE_ONCE: '@include_once';

IF: '@if' ;
IFDEF: '@ifdef' ;
IFNDEF: '@ifndef' ;
ELIF: '@elif' ;
ELSE: '@else' ;
ENDIF: '@endif' ;

PRINT: '@print';
ERROR: '@error' ;

ASCII_HEAP: '@ascii_heap' ;
ASCII_STACK: '@ascii_stack' ;

MACRO: '@macro' ;

ENDMACRO: '@endmacro' ;

// ======= Expressions =======

expr
   : op=(PLUS | MINUS | NOT | BIT_NOT)child1=expr #unary_expr
   | child1=expr op=(DIV | MUL | MOD) child2=expr #mult_expr
   | child1=expr op=(PLUS | MINUS) child2=expr #add_expr
   | child1=expr op=(LSHFIT | RSHIFT) child2=expr #shift_expr
   | child1=expr op=(LESS | LESS_EQ | GREATER | GREATER_EQ) child2=expr #compare_expr
   | child1=expr op=(EQ | NEQ) child2=expr #equate_expr
   | child1=expr BIT_AND child2=expr #bitand_expr
   | child1=expr BIT_XOR child2=expr #bitxor_expr
   | child1=expr BIT_OR child2=expr #bitor_expr
   | child1=expr AND child2=expr #and_expr
   | child1=expr OR child2=expr #or_expr
   | child1=expr QUEST child2=expr COLON child3=expr #condit_expr
   | atom #atom_expr
   ;

atom
   : LPAREN child1=expr RPAREN #expr_atom
   | numerical_literal #numerical_atom
   | DEFINED LPAREN arg=IDENTIFIER RPAREN #defined_atom
   | arg=IDENTIFIER #identifier_atom
   ;

DEFINED: 'defined' ;

LPAREN: '(' ;
RPAREN: ')' ;

NOT: '!' ;
BIT_NOT: '~' ;

DIV: '/' ;
MUL: '*' ;
MOD: '%' ;

PLUS: '+' ;
MINUS: '-' ;

LSHFIT: '<<' ;
RSHIFT: '>>' ;

LESS: '<' ;
LESS_EQ: '<=' ;
GREATER: '>' ;
GREATER_EQ: '>=' ;

EQ: '==' ;
NEQ: '!=' ;

BIT_AND: '&' ;
BIT_XOR: '^' ;
BIT_OR: '|' ;

AND: '&&' ;
OR: '||' ;

QUEST: '?' ;
COLON: ':' ;

// ======= Literals =======

numerical_literal
   : lit = ( BINARY_LITERAL 
   |         HEX_LITERAL 
   |         DEC_LITERAL 
   |         CHAR_LITERAL )
   ;

CHAR_LITERAL
   : '\'' CHAR '\''
   ;

fragment
CHAR
    : [\u0020-\u007E] 
    ;

BINARY_LITERAL
   : '0b'[01]+
   ;

HEX_LITERAL
   : '0x'[0-9a-fA-F]+
   ;

DEC_LITERAL
   : [0-9]+
   ;

STRING_LITERAL
    :  '"' CHAR_SEQUENCE? '"'
    ;

fragment
CHAR_SEQUENCE
    :   CHAR+
    ;

// ======= Identifiers =====

fragment
IDENTIFIER_FIRST_CHAR
   : [._$a-zA-Z] 
   ;

fragment
IDENTIFIER_OTHER_CHAR
   : [a-zA-Z0-9_]
   ;

IDENTIFIER
   : IDENTIFIER_FIRST_CHAR (IDENTIFIER_OTHER_CHAR+)?
   ;

// ======= thers =======

COMMENT
   : '#' ~[\r\n]* -> skip
   ;

WS: [ \t]+ -> skip ;
EOL: [\r\n]+ ;

// ======= Error Detection =======

// Capture any character that did not match a token
// Moves error from lexer to parser.
ERROR_CHAR: . ;
