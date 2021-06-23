# Generated from psASM.g4 by ANTLR 4.7.2
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .psASMParser import psASMParser
else:
    from psASMParser import psASMParser

# This class defines a complete generic visitor for a parse tree produced by psASMParser.


class psASMVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by psASMParser#line.
    def visitLine(self, ctx: psASMParser.LineContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_line.
    def visitPreproc_line(self, ctx: psASMParser.Preproc_lineContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#instruction_line.
    def visitInstruction_line(self, ctx: psASMParser.Instruction_lineContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#labels_line.
    def visitLabels_line(self, ctx: psASMParser.Labels_lineContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#empty_line.
    def visitEmpty_line(self, ctx: psASMParser.Empty_lineContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#instruction.
    def visitInstruction(self, ctx: psASMParser.InstructionContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#labels.
    def visitLabels(self, ctx: psASMParser.LabelsContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_directive.
    def visitPreproc_directive(self, ctx: psASMParser.Preproc_directiveContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_define.
    def visitPreproc_define(self, ctx: psASMParser.Preproc_defineContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_include.
    def visitPreproc_include(self, ctx: psASMParser.Preproc_includeContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_include_once.
    def visitPreproc_include_once(self, ctx: psASMParser.Preproc_include_onceContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_if.
    def visitPreproc_if(self, ctx: psASMParser.Preproc_ifContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_ifdef.
    def visitPreproc_ifdef(self, ctx: psASMParser.Preproc_ifdefContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_ifndef.
    def visitPreproc_ifndef(self, ctx: psASMParser.Preproc_ifndefContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_elif.
    def visitPreproc_elif(self, ctx: psASMParser.Preproc_elifContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_else.
    def visitPreproc_else(self, ctx: psASMParser.Preproc_elseContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_endif.
    def visitPreproc_endif(self, ctx: psASMParser.Preproc_endifContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_print.
    def visitPreproc_print(self, ctx: psASMParser.Preproc_printContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_error.
    def visitPreproc_error(self, ctx: psASMParser.Preproc_errorContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_ascii_heap.
    def visitPreproc_ascii_heap(self, ctx: psASMParser.Preproc_ascii_heapContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_ascii_stack.
    def visitPreproc_ascii_stack(self, ctx: psASMParser.Preproc_ascii_stackContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_macro.
    def visitPreproc_macro(self, ctx: psASMParser.Preproc_macroContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_endmacro.
    def visitPreproc_endmacro(self, ctx: psASMParser.Preproc_endmacroContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#preproc_macro_expansion.
    def visitPreproc_macro_expansion(self, ctx: psASMParser.Preproc_macro_expansionContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#compare_expr.
    def visitCompare_expr(self, ctx: psASMParser.Compare_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#add_expr.
    def visitAdd_expr(self, ctx: psASMParser.Add_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#bitxor_expr.
    def visitBitxor_expr(self, ctx: psASMParser.Bitxor_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#shift_expr.
    def visitShift_expr(self, ctx: psASMParser.Shift_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#mult_expr.
    def visitMult_expr(self, ctx: psASMParser.Mult_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#unary_expr.
    def visitUnary_expr(self, ctx: psASMParser.Unary_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#and_expr.
    def visitAnd_expr(self, ctx: psASMParser.And_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#bitand_expr.
    def visitBitand_expr(self, ctx: psASMParser.Bitand_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#condit_expr.
    def visitCondit_expr(self, ctx: psASMParser.Condit_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#atom_expr.
    def visitAtom_expr(self, ctx: psASMParser.Atom_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#or_expr.
    def visitOr_expr(self, ctx: psASMParser.Or_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#bitor_expr.
    def visitBitor_expr(self, ctx: psASMParser.Bitor_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#equate_expr.
    def visitEquate_expr(self, ctx: psASMParser.Equate_exprContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#expr_atom.
    def visitExpr_atom(self, ctx: psASMParser.Expr_atomContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#numerical_atom.
    def visitNumerical_atom(self, ctx: psASMParser.Numerical_atomContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#defined_atom.
    def visitDefined_atom(self, ctx: psASMParser.Defined_atomContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#identifier_atom.
    def visitIdentifier_atom(self, ctx: psASMParser.Identifier_atomContext):
        return self.visitChildren(ctx)

    # Visit a parse tree produced by psASMParser#numerical_literal.
    def visitNumerical_literal(self, ctx: psASMParser.Numerical_literalContext):
        return self.visitChildren(ctx)


del psASMParser
