lexer grammar psASMLexer;

// ======= Instruction =======

INST 
   : 'JMP'    | 'CALL'  | 'IFRM'   | 'IFSM'  | 'IFRA'   | 'IFSA'  | 'RTRN' 
   | 'RTRNI'  | 'POPA'  | 'POPB'   | 'PUSHA' | 'PUSHB'  | 'GROW'  | 'SHRINK' 
   | 'STLA'   | 'STLB'  | 'STSA'   | 'STSB'  | 'POPM'   | 'PUSHM' | 'COMPB' 
   | 'COMPBC' | 'ADDLB' | 'ADDLBC' | 'ADD'   | 'ADDC'   | 'ADDLA' | 'ADDLAC' 
   | 'SUB'    | 'SUBC'  | 'SUBL'   | 'SUBLC' | 'AND'    | 'ANDL'  | 'OR' 
   | 'ORL'    | 'XOR'   | 'XORL'   | 'SHFTR' | 'SHFTRL' | 'SHFTL' | 'SHFTLL' 
   | 'NOTA'   | 'SVA'   | 'SVB'    | 'LDA'   | 'LDB'    | 'SVDR'  | 'SVDP' 
   | 'LDDR'   | 'LDDP'  | 'LITA'   | 'LITB'  | 'CPY'    | 'SWP'   | 'HALT' 
   |  'NOP' ; 

COMMA: ',' ;

// ======= PreProc =======

DEFINE: '@define' ;

INCLUDE: '@include' ;

INCLUDE_ONCE: '@include_once';

IF: '@if' ;
IFDEF: '@ifdef' ;
IFNDEF: '@ifndef' ;
ELIF: '@elif' ;
ELSE: '@else' ;

FOR: '@for' ;

PRINT: '@print';
ERROR: '@error' ;

MACRO: '@macro' ;

END: '@end' ;

// ======= Expressions =======

DEFINED: 'defined' ;

SPRINTF: 'sprintf';

STRLEN: 'strlen';

CATID: 'cat_id';

LPAREN: '(' ;
RPAREN: ')' ;

LSQBRACKET: '[' ;
RSQBRACKET: ']' ;

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

BINARY_LITERAL
   : '0b'[01]+
   ;

HEX_LITERAL
   : '0x' HEX_DIGIT+
   ;

fragment
HEX_DIGIT
   : [0-9a-fA-F]
   ;

DEC_LITERAL
   : [0-9]+
   ;

// ======= Char Literal =======

CHAR_START
   : '\'' -> pushMode(INSIDE_CHAR_LITERAL)
   ;

mode INSIDE_CHAR_LITERAL;

CHAR_ESCAPE
   : '\\' ['?abfnrtv\\]
   | '\\x' HEX_DIGIT HEX_DIGIT
   ;

CHAR // All non-ctrl,non-ws ASCII except: ' \
   : [\u0020-\u0026]
   | [\u0028-\u005B]
   | [\u005D-\u007E]
   ;

CHAR_END
   : '\'' -> popMode
   ;

// Better errors in chars:
CHAR_EOL: [\r\n]+ ;
CHAR_ERROR_CHAR: . ;

mode DEFAULT_MODE;

// ======= String Literal =======

STRING_START
   : '"' -> pushMode(INSIDE_STRING_LITERAL)
   ;

mode INSIDE_STRING_LITERAL;

STRING_CHAR_ESCAPE
   : '\\' ["?abfnrtv\\]
   | '\\x' HEX_DIGIT HEX_DIGIT
   ;

STRING_CHAR // All non-ctrl,non-ws ASCII except: " \
   : [\u0020-\u0021]
   | [\u0023-\u005B]
   | [\u005D-\u007E]
   ;

STRING_END
   : '"' -> popMode
   ;

// Better errors in strings:
STRING_EOL: [\r\n]+ ;
STRING_ERROR_CHAR: . ;

mode DEFAULT_MODE;

// ======= Identifiers =====

fragment
IDENTIFIER_FIRST_CHAR
   : [._$a-zA-Z] 
   ;

fragment
IDENTIFIER_OTHER_CHAR
   : [a-zA-Z0-9_]
   ;

IDENTIFIER_LITERAL
   : IDENTIFIER_FIRST_CHAR (IDENTIFIER_OTHER_CHAR+)?
   ;

// ======= Others =======

COMMENT
   : '#' ~[\r\n]* -> skip
   ;

WS: [ ]+ -> skip ;
TAB: '\t' ;
EOL: [\r\n]+ ;

ERROR_CHAR: . ;

// ======= Error Detection =======

// Capture any character that did not match a token
// Moves error from lexer to parser.
