import antlr4
from antlr4.InputStream import InputStream
from antlr4.error.ErrorListener import ErrorListener
from Parsing.psASMantlr4.psASMLexer import psASMLexer
from Parsing.psASMantlr4.psASMParser import psASMParser
from Parsing.psASMantlr4.psASMVisitor import psASMVisitor
from Input.SourceFile import SourceFile
from Parsing.ParsedFile import ParsedFile
import Parsing.ExpressionTree as ExpressionTree
import Parsing.ParsedLine as ParsedLine
from Util.Errors import ParsingException


def peek(stack: []):
    return stack[0]


def parse_file(source_file: SourceFile):
    parsed_lines = []
    for line_id, source_line in enumerate(source_file):
        parsed_line = parse_line(source_line, source_file.file_id, line_id)
        parsed_lines.append(parsed_line)
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


class psASMOutputVisitor(psASMVisitor):
    # Visit a parse tree produced by psASMParser#line.
    def visitLine(self, ctx: psASMParser.LineContext):
        # 'line_content EOL'

        # Visit the line_content child.
        return self.visit(ctx.getChild(0))

    # Visit a parse tree produced by psASMParser#preproc_line.
    def visitPreproc_line(self, ctx: psASMParser.Preproc_lineContext):
        # 'preproc_directive'

        # Visit the preproc_directive
        return self.visit(ctx.getChild(0))

    # Visit a parse tree produced by psASMParser#instruction_line.
    def visitInstruction_line(self, ctx: psASMParser.Instruction_lineContext):
        # 'instruction'

        # Visit instruciton
        return self.visit(ctx.getChild(0))

    # Visit a parse tree produced by psASMParser#labels_line.
    def visitLabels_line(self, ctx: psASMParser.Labels_lineContext):
        # 'labels'

        # Visit labels
        labels = self.visit(ctx.getChild(0))
        return ParsedLine.LabelsLine(labels)

    # Visit a parse tree produced by psASMParser#empty_line.
    def visitEmpty_line(self, ctx: psASMParser.Empty_lineContext):
        return ParsedLine.EmptyLine()

    # Visit a parse tree produced by psASMParser#instruction.
    def visitInstruction(self, ctx: psASMParser.InstructionContext):
        # '(labels)? INST (expr (COMMA expr)*)?'
        children_queue = list(ctx.getChildren())

        # Optional labels:
        if isinstance(peek(children_queue), psASMParser.LabelsContext):
            # This instruction-line is labeled:
            labels = self.visit(children_queue.pop(0))
        else:
            # This instruction is not labeled.
            labels = []

        # Instruction:
        inst = str(children_queue.pop(0))

        # Comma-seperated args:
        args = []
        while children_queue:
            args.append(self.visit(children_queue.pop(0)))

            # If the stack is not empty, the argument must be followed by a comma:
            if children_queue:
                children_queue.pop(0)

        return ParsedLine.InstructionLine(labels, inst, args)

    # Visit a parse tree produced by psASMParser#labels.
    def visitLabels(self, ctx: psASMParser.LabelsContext):
        # 'IDENTIFIER (COMMA IDENTIFIER)* COLON'
        children_queue = list(ctx.getChildren())

        labels = []
        # The first child must be an identifier (label):
        labels.append(str(children_queue.pop(0)))

        # More, comma-seperated, args:
        while not str(peek(children_queue)) == ':':
            child = children_queue.pop(0)
            if not str(child) == ',':
                labels.append(str(child))

        return labels

    # Visit a parse tree produced by psASMParser#preproc_define.
    def visitPreproc_define(self, ctx: psASMParser.Preproc_defineContext):
        # 'DEFINE IDENTIFIER expr?'
        children_queue = list(ctx.getChildren())

        # First child is '@define'
        children_queue.pop(0)

        # Second child is name:
        name = str(children_queue.pop(0))

        # If there is a third child, it is the value-expression:
        if children_queue:
            value = self.visit(children_queue.pop(0))
        else:
            value = None

        return ParsedLine.DefineDirective(name, value)

    # Visit a parse tree produced by psASMParser#preproc_include.
    def visitPreproc_include(self, ctx: psASMParser.Preproc_includeContext):
        # 'INCLUDE STRING_LITERAL'
        children_queue = list(ctx.getChildren())

        # First child is '@include'
        children_queue.pop(0)

        # Second child is file-name StringLiteral:
        file = str(children_queue.pop(0))

        return ParsedLine.IncludeDirective(file)

    # Visit a parse tree produced by psASMParser#preproc_include_once.
    def visitPreproc_include_once(self, ctx: psASMParser.Preproc_include_onceContext):
        return ParsedLine.IncludeOnceDirective()

    # Visit a parse tree produced by psASMParser#preproc_if.
    def visitPreproc_if(self, ctx: psASMParser.Preproc_ifContext):
        # 'IF expr'
        children_queue = list(ctx.getChildren())

        # First child is '@if'
        children_queue.pop(0)

        # Second child is condition expression:
        condition = self.visit(children_queue.pop(0))

        return ParsedLine.IfDirective(condition)

    # Visit a parse tree produced by psASMParser#preproc_ifdef.
    def visitPreproc_ifdef(self, ctx: psASMParser.Preproc_ifdefContext):
        # 'IFDEF IDENTIFIER'
        children_queue = list(ctx.getChildren())

        # First child is '@ifdef'
        children_queue.pop(0)

        # Second child is identifier:
        identifier = str(children_queue.pop(0))

        return ParsedLine.IfDefDirective(identifier)

    # Visit a parse tree produced by psASMParser#preproc_ifndef.
    def visitPreproc_ifndef(self, ctx: psASMParser.Preproc_ifndefContext):
        # 'IFNDEF IDENTIFIER'
        children_queue = list(ctx.getChildren())

        # First child is '@ifndef'
        children_queue.pop(0)

        # Second child is identifier:
        identifier = str(children_queue.pop(0))

        return ParsedLine.IfnDefDirective(identifier)

    # Visit a parse tree produced by psASMParser#preproc_elif.
    def visitPreproc_elif(self, ctx: psASMParser.Preproc_elifContext):
        # 'ELIF expr'
        children_queue = list(ctx.getChildren())

        # First child is '@elif'
        children_queue.pop(0)

        # Second child is condition expression:
        condition = self.visit(children_queue.pop(0))

        return ParsedLine.ElIfDirective(condition)

    # Visit a parse tree produced by psASMParser#preproc_else.
    def visitPreproc_else(self, ctx: psASMParser.Preproc_elseContext):
        # 'ELSE'
        return ParsedLine.ElseDirective()

    # Visit a parse tree produced by psASMParser#preproc_endif.
    def visitPreproc_endif(self, ctx: psASMParser.Preproc_endifContext):
        # 'ENDIF'
        return ParsedLine.EndIfDirective()

    # Visit a parse tree produced by psASMParser#preproc_print.
    def visitPreproc_print(self, ctx: psASMParser.Preproc_printContext):
        # 'PRINT STRING_LITERAL (expr (COMMA expr)*)?'
        children_queue = list(ctx.getChildren())

        # First child is '@print'
        children_queue.pop(0)

        # Second child is string literal
        string = str(children_queue.pop(0))

        # If not finished, next must be a comma:
        if children_queue:
            children_queue.pop(0)

        # Comma-seperated args:
        args = []
        while children_queue:
            args.append(self.visit(children_queue.pop(0)))

            # If the stack is not empty, the argument must be followed by a comma:
            if children_queue:
                children_queue.pop(0)

        return ParsedLine.PrintDirective(string, args)

    # Visit a parse tree produced by psASMParser#preproc_error.
    def visitPreproc_error(self, ctx: psASMParser.Preproc_errorContext):
        # 'ERROR STRING_LITERAL'
        children_queue = list(ctx.getChildren())

        # First child is '@error'
        children_queue.pop(0)

        # Second child is STRING_LITERAL message:
        msg = str(children_queue.pop(0))

        return ParsedLine.ErrorDirective(msg)

    # Visit a parse tree produced by psASMParser#preproc_ascii_heap.
    def visitPreproc_ascii_heap(self, ctx: psASMParser.Preproc_ascii_heapContext):
        # 'ASCII_HEAP STRING_LITERAL COMMA expr'
        children_queue = list(ctx.getChildren())

        # First child is '@ascii_heap'
        children_queue.pop(0)

        # Second child is STRING_LITERAL:
        string = str(children_queue.pop(0))

        # Third child is comma:
        children_queue.pop(0)

        # Fourth child is adr expression
        adr = self.visit(children_queue.pop(0))

        return ParsedLine.AsciiHeapDirective(string, adr)

    # Visit a parse tree produced by psASMParser#preproc_ascii_stack.
    def visitPreproc_ascii_stack(self, ctx: psASMParser.Preproc_ascii_stackContext):
        # 'ASCII_STACK STRING_LITERAL'
        children_queue = list(ctx.getChildren())

        # First child is '@ascii_stack'
        children_queue.pop(0)

        # Second child is STRING_LITERAL:
        string = str(children_queue.pop(0))

        return ParsedLine.AsciiStackDirective(string)

    # Visit a parse tree produced by psASMParser#preproc_macro.
    def visitPreproc_macro(self, ctx: psASMParser.Preproc_macroContext):
        # 'MACRO IDENTIFIER (IDENTIFIER (COMMA IDENTIFIER)*)?
        children_queue = list(ctx.getChildren())

        # First child is '@macro'
        children_queue.pop(0)

        # Second child is the macro-name identifier
        name = str(children_queue.pop(0))

        args = []
        # Comma-seperated args-identifiers:
        while children_queue:
            child = children_queue.pop(0)
            if not str(child) == ',':
                args.append(str(child))

        return ParsedLine.MacroDirective(name, args)

    # Visit a parse tree produced by psASMParser#preproc_endmacro.
    def visitPreproc_endmacro(self, ctx: psASMParser.Preproc_endmacroContext):
        # 'ENDMACRO'
        return ParsedLine.EndMacroDirective()

    # Visit a parse tree produced by psASMParser#preproc_macro_expansion.
    def visitPreproc_macro_expansion(self, ctx: psASMParser.Preproc_macro_expansionContext):
        # '(labels)? IDENTIFIER (expr (COMMA expr)*)?'
        children_queue = list(ctx.getChildren())

        # Optional labels:
        if isinstance(peek(children_queue), psASMParser.LabelsContext):
            # This instruction-line is labeled:
            labels = self.visit(children_queue.pop(0))
        else:
            # This instruction is not labeled.
            labels = []

        # Macro-name identifier:
        macro_name = str(children_queue.pop(0))

        # Optional, comma-seperated list of argument expressions:
        args = []
        while children_queue:
            args.append(self.visit(children_queue.pop(0)))

            # If the stack is not empty, the argument must be followed by a comma:
            if children_queue:
                children_queue.pop(0)

        return ParsedLine.MacroExpansionDirective(labels, macro_name, args)

    # Visit a parse tree produced by psASMParser#compare_expr.
    def visitCompare_expr(self, ctx: psASMParser.Compare_exprContext):
        # 'expr (LESS | LESS_EQ | GREATER | GREATER_EQ) expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        operator = str(children_queue.pop(0))

        # third child is second expression
        expr2 = self.visit(children_queue.pop(0))

        if operator == '<':
            return ExpressionTree.LessExpression(expr1, expr2)
        elif operator == '<=':
            return ExpressionTree.LessEqExpression(expr1, expr2)
        elif operator == '>':
            return ExpressionTree.GreaterExpression(expr1, expr2)
        elif operator == '>=':
            return ExpressionTree.GreaterEqExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#add_expr.
    def visitAdd_expr(self, ctx: psASMParser.Add_exprContext):
        # 'expr (PLUS | MINUS) expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        operator = str(children_queue.pop(0))

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        if operator == '+':
            return ExpressionTree.AddExpression(expr1, expr2)
        elif operator == '-':
            return ExpressionTree.SubExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#bitxor_expr.
    def visitBitxor_expr(self, ctx: psASMParser.Bitxor_exprContext):
        # 'expr BIT_XOR expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        children_queue.pop(0)

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        return ExpressionTree.BitXORExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#shift_expr.
    def visitShift_expr(self, ctx: psASMParser.Shift_exprContext):
        # 'expr (LSHIFT | RSHIFT) expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        operator = str(children_queue.pop(0))

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        if operator == '<<':
            return ExpressionTree.LShiftExpression(expr1, expr2)
        elif operator == '>>':
            return ExpressionTree.RShiftExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#mult_expr.
    def visitMult_expr(self, ctx: psASMParser.Mult_exprContext):
        # 'expr (DIV | MUL | MOD) expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        operator = str(children_queue.pop(0))

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        if operator == '*':
            return ExpressionTree.MulExpression(expr1, expr2)
        elif operator == '/':
            return ExpressionTree.DivExpression(expr1, expr2)
        elif operator == '%':
            return ExpressionTree.ModExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#unary_expr.
    def visitUnary_expr(self, ctx: psASMParser.Unary_exprContext):
        # '(PLUS | MINUS | NOT | BIT_NOT) expr'
        children_queue = list(ctx.getChildren())

        # first child is operator:
        operator = str(children_queue.pop(0))

        # second child is second expression:
        expr = self.visit(children_queue.pop(0))

        if operator == '+':
            return ExpressionTree.PosExpression(expr)
        elif operator == '-':
            return ExpressionTree.NegExpression(expr)
        elif operator == '!':
            return ExpressionTree.NotExpression(expr)
        elif operator == '~':
            return ExpressionTree.BitNotExpression(expr)

    # Visit a parse tree produced by psASMParser#and_expr.
    def visitAnd_expr(self, ctx: psASMParser.And_exprContext):
        # 'expr AND expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        children_queue.pop(0)

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        return ExpressionTree.AndExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#bitand_expr.
    def visitBitand_expr(self, ctx: psASMParser.Bitand_exprContext):
        # 'expr BIT_AND expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        children_queue.pop(0)

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        return ExpressionTree.BitAndExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#condit_expr.
    def visitCondit_expr(self, ctx: psASMParser.Condit_exprContext):
        # 'expr QUEST expr COLON expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is '?' operator:
        children_queue.pop(0)

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        # fourth child is second expression:
        children_queue.pop(0)

        # fifth child is second expression:
        expr3 = self.visit(children_queue.pop(0))

        return ExpressionTree.ConditionalExpression(expr1, expr2, expr3)

    # Visit a parse tree produced by psASMParser#atom_expr.
    def visitAtom_expr(self, ctx: psASMParser.Atom_exprContext):
        # 'atom'
        return self.visit(ctx.getChild(0))

    # Visit a parse tree produced by psASMParser#or_expr.
    def visitOr_expr(self, ctx: psASMParser.Or_exprContext):
        # 'expr OR expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        children_queue.pop(0)

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        return ExpressionTree.OrExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#bitor_expr.
    def visitBitor_expr(self, ctx: psASMParser.Bitor_exprContext):
        # 'expr BIT_OR expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        children_queue.pop(0)

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        return ExpressionTree.BitOrExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#equate_expr.
    def visitEquate_expr(self, ctx: psASMParser.Equate_exprContext):
        # 'expr (EQ | NEQ) expr'
        children_queue = list(ctx.getChildren())

        # first child is first expression:
        expr1 = self.visit(children_queue.pop(0))

        # second child is operator:
        operator = str(children_queue.pop(0))

        # third child is second expression:
        expr2 = self.visit(children_queue.pop(0))

        if operator == '==':
            return ExpressionTree.EqExpression(expr1, expr2)
        elif operator == '!=':
            return ExpressionTree.NEqExpression(expr1, expr2)

    # Visit a parse tree produced by psASMParser#expr_atom.
    def visitExpr_atom(self, ctx: psASMParser.Expr_atomContext):
        # 'LPAREN expr RPAREN'
        return self.visit(ctx.getChild(1))

    # Visit a parse tree produced by psASMParser#numerical_atom.
    def visitNumerical_atom(self, ctx: psASMParser.Numerical_atomContext):
        # 'numerical_literal'
        return self.visit(ctx.getChild(0))

    # Visit a parse tree produced by psASMParser#defined_atom.
    def visitDefined_atom(self, ctx: psASMParser.Defined_atomContext):
        # 'DEFINED LPAREN IDENTIFIER RPAREN'
        identifier = str(ctx.getChild(2))
        return ExpressionTree.isDefinedExpression(identifier)

    # Visit a parse tree produced by psASMParser#identifier_atom.
    def visitIdentifier_atom(self, ctx: psASMParser.Identifier_atomContext):
        # 'IDENTIFIER'
        identifier = str(ctx.getChild(0))
        return ExpressionTree.IdentifierExpression(identifier)

    # Visit a parse tree produced by psASMParser#numerical_literal.
    def visitNumerical_literal(self, ctx: psASMParser.Numerical_literalContext):
        # (BINARY_LITERAL | HEX_LITERAL | DEC_LITERAL | CHAR_LITERAL)
        literal = str(ctx.getChild(0))
        return ExpressionTree.NumLiteralExpression(literal)
