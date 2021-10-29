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
    : (labels)? INST (expr (COMMA expr)*)?
    ;

labels
    : IDENTIFIER (COMMA IDENTIFIER)* COLON
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
    | preproc_if 
    | preproc_ifdef 
    | preproc_ifndef 
    | preproc_elif 
    | preproc_else 
    | preproc_endif 
    | preproc_warning 
    | preproc_error 
    | preproc_ascii_heap 
    | preproc_ascii_stack 
    | preproc_macro 
    | preproc_macro_expansion 
    | preproc_endmacro 
    ;
    
preproc_define
    : DEFINE IDENTIFIER expr? 
    ;

preproc_include
    : INCLUDE STRING_LITERAL
    ;

preproc_if
    : IF expr
    ;

preproc_ifdef
    : IFDEF IDENTIFIER
    ;

preproc_ifndef
    : IFNDEF IDENTIFIER
    ;

preproc_elif
    : ELIF expr
    ;

preproc_else
    : ELSE
    ;

preproc_endif
    : ENDIF
    ;

preproc_warning
    : WARNING STRING_LITERAL
    ;

preproc_error
    : ERROR STRING_LITERAL
    ;

preproc_ascii_heap
    : ASCII_HEAP STRING_LITERAL COMMA expr
    ;

preproc_ascii_stack
    : ASCII_STACK STRING_LITERAL
    ;

preproc_macro
    : MACRO IDENTIFIER (IDENTIFIER (COMMA IDENTIFIER)*)?
    ;

preproc_endmacro
    : ENDMACRO 
    ;

preproc_macro_expansion
    : (labels)? IDENTIFIER (expr (COMMA expr)*)?
    ;

DEFINE: '@define' ;
REDEFINE: '@redefine' ;

INCLUDE: '@include' ;

IF: '@if' ;
IFDEF: '@ifdef' ;
IFNDEF: '@ifndef' ;
ELIF: '@elif' ;
ELSE: '@else' ;
ENDIF: '@endif' ;

WARNING: '@warning';
ERROR: '@error' ;

ASCII_HEAP: '@ascii_heap' ;
ASCII_STACK: '@ascii_stack' ;

MACRO: '@macro' ;

ENDMACRO: '@endmacro' ;

// ======= Expressions =======

expr
   : (PLUS | MINUS | NOT | BIT_NOT) expr #unary_expr
   | expr (DIV | MUL | MOD) expr #mult_expr
   | expr (PLUS | MINUS) expr #add_expr
   | expr (LSHFIT | RSHIFT) expr #shift_expr
   | expr (LESS | LESS_EQ | GREATER | GREATER_EQ) expr #compare_expr
   | expr (EQ | NEQ) expr #equate_expr
   | expr BIT_AND expr #bitand_expr
   | expr BIT_XOR expr #bitxor_expr
   | expr BIT_OR expr #bitor_expr
   | expr AND expr #and_expr
   | expr OR expr #or_expr
   | expr QUEST expr COLON expr #condit_expr
   | atom #atom_expr
   ;

atom
   : LPAREN expr RPAREN #expr_atom
   | numerical_literal #numerical_atom
   | DEFINED LPAREN IDENTIFIER RPAREN #defined_atom
   | IDENTIFIER #identifier_atom
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
   : BINARY_LITERAL 
   | HEX_LITERAL 
   | DEC_LITERAL 
   | CHAR_LITERAL
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
   : [a-zA-Z0-9_\-]
   ;

IDENTIFIER
   : IDENTIFIER_FIRST_CHAR (IDENTIFIER_OTHER_CHAR+)?
   ;

// ======= Others =======

COMMENT
   : '#' ~[\r\n]* -> skip
   ;

WS: [ \t]+ -> skip ;
EOL: [\r\n]+ ;

// ======= Error Detection =======

// Capture any character that did not match a token
// Moves error from lexer to parser.
ERROR_CHAR: . ;
