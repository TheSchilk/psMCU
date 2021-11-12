parser grammar psASMParser;

options { tokenVocab=psASMLexer; }
 

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
   | preproc_end
   | preproc_print 
   | preproc_error 
   | preproc_ascii_heap 
   | preproc_ascii_stack 
   | preproc_macro 
   | preproc_macro_expansion 
   ;
   
preproc_define
   : DEFINE name=IDENTIFIER (value=expr)? 
   ;

preproc_include
   : INCLUDE file_str=string_literal
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

preproc_end
   : END
   ;

preproc_print
   : PRINT (txt=expr)?
   ;

preproc_error
   : ERROR (txt=expr)?
   ;

preproc_ascii_heap
   : ASCII_HEAP txt=expr COMMA adr=expr
   ;

preproc_ascii_stack
   : ASCII_STACK txt=expr
   ;

preproc_macro
   : MACRO macro_name=IDENTIFIER (args+=IDENTIFIER (COMMA args+=IDENTIFIER)*)?
   ;

preproc_macro_expansion
   : (lbls=labels)? macro_name=IDENTIFIER (args+=expr (COMMA args+=expr)*)?
   ; 

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
   | string_literal #string_atom
   | DEFINED LPAREN arg=IDENTIFIER RPAREN #defined_atom
   | SPRINTF LPAREN txt=expr (COMMA args+= expr)* RPAREN #sprintf_atom
   | STRLEN LPAREN txt=expr RPAREN #strlen_atom
   | arg=IDENTIFIER #identifier_atom
   ;

// ======= Literals =======

numerical_literal
   : BINARY_LITERAL 
   | HEX_LITERAL 
   | DEC_LITERAL 
   | char_literal
   ;

string_literal
   :  STRING_START (txt+=STRING_CHAR_ESCAPE | txt+=STRING_CHAR)* STRING_END
   ;

char_literal
   :  CHAR_START (txt=CHAR_ESCAPE | txt=CHAR) CHAR_END
   ;
