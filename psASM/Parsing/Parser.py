import antlr4
from antlr4.InputStream import InputStream
from antlr4.error.ErrorListener import ErrorListener

from Input.SourceFile import SourceFile, SourceFiles

import Parsing.ParsedLine as ParsedLine
from Parsing.psASMantlr4.psASMLexer import psASMLexer
from Parsing.psASMantlr4.psASMParser import psASMParser
from Parsing.psASMantlr4.psASMParserVisitor import psASMParserVisitor
from Parsing.ParsedFile import ParsedFile, ParsedFiles

import PreProc.ExpressionTree as ExpressionTree

from Util.Errors import ParsingException, LocatedException


def peek(stack: []):
    return stack[0]


def parse_source_files(source_files: SourceFiles):
    parsed_files = ParsedFiles()
    for file in source_files:
        parsed_files.add_parsed_file(parse_source_file(file))
    return parsed_files


def parse_source_file(source_file: SourceFile):
    parsed_lines = []
    for line_id, source_line in enumerate(source_file):
        try:
            parsed_line = parse_line(source_line, source_file.file_id, line_id)
            parsed_lines.append(parsed_line)
        except LocatedException as e:
            e.decorate_location(source_file.file_id, line_id)
            raise e

    return ParsedFile(source_file.file_id, parsed_lines)


def parse_line(text: str, file_id, line_id):

    error_listener = psASMErrorListener()

    # antlr4 psASM Lexer
    lexer = psASMLexer(InputStream(text))
    lexer.removeErrorListeners()
    lexer.addErrorListener(error_listener)
    stream = antlr4.CommonTokenStream(lexer)

    # antlr4 psASM Parser
    parser = psASMParser(stream)
    parser.removeErrorListeners()
    parser.addErrorListener(error_listener)

    # Parse and extract with visitor:
    tree = parser.line()
    parsed_line = psASMOutputVisitor().visit(tree)

    parsed_line.file_id = file_id
    parsed_line.line_id = line_id

    return parsed_line


class psASMErrorListener(ErrorListener):
    def syntaxError(self, recognizer, offendingSymbol, line, column, msg, e):
        raise ParsingException(msg, error_col=column)


class psASMOutputVisitor(psASMParserVisitor):
    # Override default handler:
    # Setup default rule handler to only visit and return first child.
    def visitChildren(self, node):
        if node.getChildCount() > 0:
            return self.visit(node.getChild(0))
        else:
            return None

    # Visit a parse tree produced by psASMParser#labels_line.
    def visitLabels_line(self, ctx: psASMParser.Labels_lineContext) -> ParsedLine.LabelsLine:
        # 'labels'
        labels = self.visit(ctx.getChild(0))
        return ParsedLine.LabelsLine(labels)

    # Visit a parse tree produced by psASMParser#empty_line.
    def visitEmpty_line(self, ctx: psASMParser.Empty_lineContext) -> ParsedLine.EmptyLine:
        return ParsedLine.EmptyLine()

    # Visit a parse tree produced by psASMParser#instruction.
    def visitInstruction(self, ctx: psASMParser.InstructionContext) -> ParsedLine.InstructionLine:
        # '(lbls=labels)? inst=INST (args+=expr (COMMA args+=expr)*)?'
        if ctx.lbls is None:
            lbls = []
        else:
            lbls = self.visit(ctx.lbls)

        inst = ctx.inst.text

        args = [self.visit(arg) for arg in ctx.args]

        return ParsedLine.InstructionLine(lbls, inst, args)

    # Visit a parse tree produced by psASMParser#labels.
    def visitLabels(self, ctx: psASMParser.LabelsContext) -> [str]:
        # 'lbls+=IDENTIFIER (COMMA lbls+=IDENTIFIER)* COLON'
        return [lbl.text for lbl in ctx.lbls]

    # Visit a parse tree produced by psASMParser#preproc_define.
    def visitPreproc_define(self, ctx: psASMParser.Preproc_defineContext) -> ParsedLine.DefineDirective:
        # 'DEFINE name=IDENTIFIER (value=expr)?'
        name = ctx.name.text
        if ctx.value is not None:
            value = self.visit(ctx.value)
        else:
            value = None

        return ParsedLine.DefineDirective(name, value)

    # Visit a parse tree produced by psASMParser#preproc_include.
    def visitPreproc_include(self, ctx: psASMParser.Preproc_includeContext) -> ParsedLine.IncludeDirective:
        # 'INCLUDE file_str=string_literal'
        file = self.visit(ctx.file_str)
        return ParsedLine.IncludeDirective(file)

    # Visit a parse tree produced by psASMParser#preproc_include_once.
    def visitPreproc_include_once(self, ctx: psASMParser.Preproc_include_onceContext) -> ParsedLine.IncludeOnceDirective:
        return ParsedLine.IncludeOnceDirective()

    # Visit a parse tree produced by psASMParser#preproc_if.
    def visitPreproc_if(self, ctx: psASMParser.Preproc_ifContext) -> ParsedLine.IfDirective:
        # 'IF cond=expr'
        condition = self.visit(ctx.cond)
        return ParsedLine.IfDirective(condition)

    # Visit a parse tree produced by psASMParser#preproc_ifdef.
    def visitPreproc_ifdef(self, ctx: psASMParser.Preproc_ifdefContext) -> ParsedLine.IfDefDirective:
        # 'IFDEF arg=IDENTIFIER'
        identifier = ctx.arg.text
        return ParsedLine.IfDefDirective(identifier)

    # Visit a parse tree produced by psASMParser#preproc_ifndef.
    def visitPreproc_ifndef(self, ctx: psASMParser.Preproc_ifndefContext) -> ParsedLine.IfnDefDirective:
        # 'IFNDEF arg=IDENTIFIER'
        identifier = ctx.arg.text
        return ParsedLine.IfnDefDirective(identifier)

    # Visit a parse tree produced by psASMParser#preproc_elif.
    def visitPreproc_elif(self, ctx: psASMParser.Preproc_elifContext) -> ParsedLine.ElIfDirective:
        # 'ELIF cond=expr'
        condition = self.visit(ctx.cond)
        return ParsedLine.ElIfDirective(condition)

    # Visit a parse tree produced by psASMParser#preproc_else.
    def visitPreproc_else(self, ctx: psASMParser.Preproc_elseContext) -> ParsedLine.ElseDirective:
        # 'ELSE'
        return ParsedLine.ElseDirective()

    # Visit a parse tree produced by psASMParser#preproc_endif.
    def visitPreproc_endif(self, ctx: psASMParser.Preproc_endifContext) -> ParsedLine.EndIfDirective:
        # 'ENDIF'
        return ParsedLine.EndIfDirective()

    # Visit a parse tree produced by psASMParser#preproc_print.
    def visitPreproc_print(self, ctx: psASMParser.Preproc_printContext) -> ParsedLine.PrintDirective:
        # 'PRINT (txt=expr)?'
        if ctx.txt is not None:
            txt = self.visit(ctx.txt)
        else:
            txt = ""
        return ParsedLine.PrintDirective(txt)

    # Visit a parse tree produced by psASMParser#preproc_error.
    def visitPreproc_error(self, ctx: psASMParser.Preproc_errorContext) -> ParsedLine.ErrorDirective:
        # 'ERROR (txt=expr)?'
        if ctx.txt is not None:
            txt = self.visit(ctx.txt)
        else:
            txt = ""
        return ParsedLine.ErrorDirective(txt)

    # Visit a parse tree produced by psASMParser#preproc_ascii_heap.
    def visitPreproc_ascii_heap(self, ctx: psASMParser.Preproc_ascii_heapContext) -> ParsedLine.AsciiHeapDirective:
        # 'ASCII_HEAP txt=expr COMMA adr=expr'
        txt = self.visit(ctx.txt)
        adr = self.visit(ctx.adr)
        return ParsedLine.AsciiHeapDirective(txt, adr)

    # Visit a parse tree produced by psASMParser#preproc_ascii_stack.
    def visitPreproc_ascii_stack(self, ctx: psASMParser.Preproc_ascii_stackContext) -> ParsedLine.AsciiStackDirective:
        # 'ASCII_STACK txt=expr'
        txt = self.visit(ctx.txt)
        return ParsedLine.AsciiStackDirective(txt)

    # Visit a parse tree produced by psASMParser#preproc_macro.
    def visitPreproc_macro(self, ctx: psASMParser.Preproc_macroContext) -> ParsedLine.MacroDirective:
        # 'MACRO macro_name=IDENTIFIER (args+=IDENTIFIER (COMMA args+=IDENTIFIER)*)?'
        name = ctx.macro_name.text
        args = [arg.text for arg in ctx.args]
        return ParsedLine.MacroDirective(name, args)

    # Visit a parse tree produced by psASMParser#preproc_endmacro.
    def visitPreproc_endmacro(self, ctx: psASMParser.Preproc_endmacroContext) -> ParsedLine.EndMacroDirective:
        # 'ENDMACRO'
        return ParsedLine.EndMacroDirective()

    # Visit a parse tree produced by psASMParser#preproc_macro_expansion.
    def visitPreproc_macro_expansion(self, ctx: psASMParser.Preproc_macro_expansionContext) -> ParsedLine.MacroExpansionDirective:
        # '(lbls=labels)? macro_name=IDENTIFIER (args+=expr (COMMA args+=expr)*)?'
        if ctx.lbls is None:
            lbls = []
        else:
            lbls = self.visit(ctx.lbls)
        name = ctx.macro_name.text
        args = [self.visit(arg) for arg in ctx.args]
        return ParsedLine.MacroExpansionDirective(lbls, name, args)

    # Visit a parse tree produced by psASMParser#compare_expr.
    def visitCompare_expr(self, ctx: psASMParser.Compare_exprContext):
        # 'child1=expr op=(LESS | LESS_EQ | GREATER | GREATER_EQ) child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)

        if ctx.op.type == psASMParser.LESS:
            return ExpressionTree.LessExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.LESS_EQ:
            return ExpressionTree.LessEqExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.GREATER:
            return ExpressionTree.GreaterExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.GREATER_EQ:
            return ExpressionTree.GreaterEqExpression(ctx, child1, child2)
        else:
            raise Exception("Unhandeled Operator.")

    # Visit a parse tree produced by psASMParser#add_expr.
    def visitAdd_expr(self, ctx: psASMParser.Add_exprContext):
        # 'child1=expr op=(PLUS | MINUS) child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        if ctx.op.type == psASMParser.PLUS:
            return ExpressionTree.AddExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.MINUS:
            return ExpressionTree.SubExpression(ctx, child1, child2)
        else:
            raise Exception("Unhandeled Operator.")

    # Visit a parse tree produced by psASMParser#bitxor_expr.
    def visitBitxor_expr(self, ctx: psASMParser.Bitxor_exprContext):
        # 'child1=expr BIT_XOR child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        return ExpressionTree.BitXORExpression(ctx, child1, child2)

    # Visit a parse tree produced by psASMParser#shift_expr.
    def visitShift_expr(self, ctx: psASMParser.Shift_exprContext):
        # 'child1=expr op=(LSHFIT | RSHIFT) child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        if ctx.op.type == psASMParser.LSHFIT:
            return ExpressionTree.LShiftExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.RSHIFT:
            return ExpressionTree.RShiftExpression(ctx, child1, child2)
        else:
            raise Exception("Unhandeled Operator.")

    # Visit a parse tree produced by psASMParser#mult_expr.
    def visitMult_expr(self, ctx: psASMParser.Mult_exprContext):
        # 'child1=expr op=(DIV | MUL | MOD) child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        if ctx.op.type == psASMParser.MUL:
            return ExpressionTree.MulExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.DIV:
            return ExpressionTree.DivExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.MOD:
            return ExpressionTree.ModExpression(ctx, child1, child2)
        else:
            raise Exception("Unhandeled Operator.")

    # Visit a parse tree produced by psASMParser#unary_expr.
    def visitUnary_expr(self, ctx: psASMParser.Unary_exprContext):
        # 'op=(PLUS | MINUS | NOT | BIT_NOT)child1=expr'
        child1 = self.visit(ctx.child1)
        if ctx.op.type == psASMParser.PLUS:
            return ExpressionTree.PosExpression(ctx, child1)
        elif ctx.op.type == psASMParser.MINUS:
            return ExpressionTree.NegExpression(ctx, child1)
        elif ctx.op.type == psASMParser.NOT:
            return ExpressionTree.NotExpression(ctx, child1)
        elif ctx.op.type == psASMParser.BIT_NOT:
            return ExpressionTree.BitNotExpression(ctx, child1)
        else:
            raise Exception("Unhandeled Operator.")

    # Visit a parse tree produced by psASMParser#and_expr.
    def visitAnd_expr(self, ctx: psASMParser.And_exprContext):
        # 'child1=expr AND child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        return ExpressionTree.AndExpression(ctx, child1, child2)

    # Visit a parse tree produced by psASMParser#bitand_expr.
    def visitBitand_expr(self, ctx: psASMParser.Bitand_exprContext):
        # 'child1=expr BIT_AND child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        return ExpressionTree.BitAndExpression(ctx, child1, child2)

    # Visit a parse tree produced by psASMParser#condit_expr.
    def visitCondit_expr(self, ctx: psASMParser.Condit_exprContext):
        # 'child1=expr QUEST child2=expr COLON child3=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        child3 = self.visit(ctx.child3)
        return ExpressionTree.ConditionalExpression(ctx, child1, child2, child3)

    # Visit a parse tree produced by psASMParser#or_expr.
    def visitOr_expr(self, ctx: psASMParser.Or_exprContext):
        # 'child1=expr OR child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        return ExpressionTree.OrExpression(ctx, child1, child2)

    # Visit a parse tree produced by psASMParser#bitor_expr.
    def visitBitor_expr(self, ctx: psASMParser.Bitor_exprContext):
        # 'child1=expr BIT_OR child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        return ExpressionTree.BitOrExpression(ctx, child1, child2)

    # Visit a parse tree produced by psASMParser#equate_expr.
    def visitEquate_expr(self, ctx: psASMParser.Equate_exprContext):
        # 'child1=expr op=(EQ | NEQ) child2=expr'
        child1 = self.visit(ctx.child1)
        child2 = self.visit(ctx.child2)
        if ctx.op.type == psASMParser.EQ:
            return ExpressionTree.EqExpression(ctx, child1, child2)
        elif ctx.op.type == psASMParser.NEQ:
            return ExpressionTree.NEqExpression(ctx, child1, child2)

    # Visit a parse tree produced by psASMParser#expr_atom.
    def visitExpr_atom(self, ctx: psASMParser.Expr_atomContext):
        # 'LPAREN child1=expr RPAREN'
        return self.visit(ctx.child1)

    # Visit a parse tree produced by psASMParser#defined_atom.
    def visitDefined_atom(self, ctx: psASMParser.Defined_atomContext):
        # 'DEFINED LPAREN arg=IDENTIFIER RPAREN'
        arg = ctx.arg.text
        return ExpressionTree.isDefinedExpression(ctx, arg)

    # Visit a parse tree produced by psASMParser#sprintf_atom.
    def visitSprintf_atom(self, ctx: psASMParser.Sprintf_atomContext):
        # 'SPRINTF LPAREN txt=expr (COMMA args+= expr)* RPAREN'
        txt = self.visit(ctx.txt)
        args = [self.visit(arg) for arg in ctx.args]
        return ExpressionTree.SprintfExpression(ctx, txt, args)

    # Visit a parse tree produced by psASMParser#strlen_atom.
    def visitStrlen_atom(self, ctx: psASMParser.Strlen_atomContext):
        # 'STRLEN LPAREN txt=expr RPAREN'
        txt = self.visit(ctx.txt)
        return ExpressionTree.StrlenExpression(ctx, txt)

    # Visit a parse tree produced by psASMParser#identifier_atom.
    def visitIdentifier_atom(self, ctx: psASMParser.Identifier_atomContext):
        # 'arg=IDENTIFIER'
        arg = ctx.arg.text
        return ExpressionTree.IdentifierExpression(ctx, arg)

    # Visit a parse tree produced by psASMParser#numerical_literal.
    def visitNumerical_literal(self, ctx: psASMParser.Numerical_literalContext):
        # 'BINARY_LITERAL | HEX_LITERAL | DEC_LITERAL | char_literal '

        child = ctx.getChild(0)

        if isinstance(child, psASMParser.Char_literalContext):
            return self.visit(child)
        else:
            return ExpressionTree.NumLiteralExpression(ctx, str(child))

    # Visit a parse tree produced by psASMParser#string_literal.
    def visitString_literal(self, ctx: psASMParser.String_literalContext):
        # 'STRING_START (txt+=STRING_CHAR_ESCAPE | txt+=STRING_CHAR)* STRING_END'
        txt = ""
        for piece in ctx.txt:
            txt += piece.text
        return ExpressionTree.StringLiteralExpression(ctx, txt)

    # Visit a parse tree produced by psASMParser#char_literal.
    def visitChar_literal(self, ctx: psASMParser.Char_literalContext):
        # 'CHAR_START (txt=CHAR_ESCAPE | txt=CHAR) CHAR_END'
        txt = ctx.txt.text
        return ExpressionTree.CharLiteralExpression(ctx, txt)
