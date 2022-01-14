"""Representation of an expression tree."""
# TODO: Can-eval system: Remove and replace with a eval-then-check-if-result-expected system?

import re
from typing import List

from Util.Errors import EvalException
import Util.Formatting as Formatting
from abc import ABCMeta, abstractmethod


def _get_ctx_start(token):
    result = token.start
    while hasattr(result, 'start'):
        result = result.start
    return result


def _get_ctx_stop(token):
    result = token.stop
    while hasattr(result, 'stop'):
        result = result.stop
    return result


def assert_int(var, arg_description, error_col, error_col_alt=None):
    """Assert that the variable is an integer, otherwise raise an excpetion.
    error_col_alt will act as a fall-back error column if error_col is None.
    """
    if not isinstance(var, int):
        _type_error(arg_description + " must be an int.", error_col, error_col_alt)


def assert_str(var, arg_description, error_col, error_col_alt=None):
    """Assert that the variable is a string, otherwise raise an excpetion.
    error_col_alt will act as a fall-back error column if error_col is None.
    """
    if not isinstance(var, str):
        _type_error(arg_description + " must be a string.", error_col, error_col_alt)


def _type_error(msg, error_col, error_col_alt=None):
    """Raise a EvalException with given message and error_col, falling back on
    error_col_alt if error_col is None"""
    exc = EvalException(msg)
    exc.decorate_error_col(error_col)
    exc.decorate_error_col(error_col_alt)
    raise exc


def _type_combination_str(args: List):
    result = ""
    for index, arg in enumerate(args):
        if index != 0:
            result += ', '
        if isinstance(arg, int):
            result += 'int'
        elif isinstance(arg, str):
            result += 'str'
        else:  # pragma: no cover
            raise Exception()
    return result

class Expression(metaclass=ABCMeta):
    """Base-class for an expression-tree component that can be evaluated as string or int."""

    def __init__(self, name, parse_ctx=None, error_col=None, children=None):
        if children is None:
            self.children = []
        else:
            self.children = children
        self.name = name
        self.error_col = error_col

        if parse_ctx is not None and error_col is None:
            self.error_col = (_get_ctx_start(parse_ctx), _get_ctx_stop(parse_ctx))

    def remove_error_col_info(self):
        """Recursively remove error_col information from this and children.
        Used when error_col information is no longer valid due t macro_arg_replacement
        """

        self.error_col = None
        for child in self.children:
            child.remove_error_col_info()

    @abstractmethod
    def eval(self, context):
        """Evaluate this expression."""
        _ = self, context  # pragma: no cover
        raise Exception('Base expression instantiated or eval function not overwritten')  # pragma: no cover

    def macro_arg_replacement(self, find: str, replace):
        """Replace macro arguments within this and all children."""
        for child in self.children:
            child.macro_arg_replacement(find, replace)


# ########## Atomic Expression: ##########

class NumLiteralExpression(Expression):
    """A single numerical literals."""

    def __init__(self, parse_ctx, text: str):
        super().__init__('Numerical Literal', parse_ctx=parse_ctx)
        self.text = text

    def eval(self, context):
        _ = context
        try:
            return int(self.text, 0)
        except ValueError as exp:
            # If this fires the language grammar should probably be adjusted.
            raise EvalException("Malformed integer: %s." % self.text) from exp

    def __str__(self):
        return self.text


class CharLiteralExpression(Expression):
    """A single-character numerical literal."""

    def __init__(self, parse_ctx, char: str):
        super().__init__('Char Literal', parse_ctx=parse_ctx)
        self.char = char

    def eval(self, context):
        _ = context
        # TODO escaping
        if len(self.char) != 1:
            raise Exception("Character escape not yet implemented")
        return ord(self.char)

    def __str__(self):
        return "'" + self.char + "'" 


class IdentifierExpression(Expression, metaclass=ABCMeta):
    """An Identifier (Defined value, label, etc)."""

    def __init__(self, name: str, parse_ctx, children: List):
        super().__init__(name, parse_ctx=parse_ctx, children=children)

    def eval(self, context):
        return context[self.eval_identifier()]

    @abstractmethod
    def eval_identifier(self) -> str:  # pragma: no cover
        _ = self
        raise Exception('Base expression instantiated or eval function not overwritten')
    
    @abstractmethod
    def macro_arg_replacement(self, find: str, replace: Expression, must_be_identifier=False): # pragma: no cover 
        _ = self
        _ = find
        _ = replace
        _ = must_be_identifier
        raise Exception('Base expression instantiated or eval function not overwritten')


class IdentifierLiteral(IdentifierExpression):
    def __init__(self, parse_ctx, identifier_name: str):
        super().__init__('Identifier Literal', parse_ctx=parse_ctx, children=[])
        self.identifier_name = identifier_name

    def __str__(self):
        return self.identifier_name

    def eval_identifier(self):
        return self.identifier_name

    def macro_arg_replacement(self, find: str, replace: Expression, must_be_identifier=False):
        if self.eval_identifier() == find:
            # This IdentifierExpression must be replaced with the replace Expression

            # Check if there is a type requirement:
            if must_be_identifier:
                if not issubclass(replace.__class__, IdentifierExpression):
                    raise EvalException('Can only replace with an identifer, but got a %s' % replace.name)

            # In-place mutate this object into the replacement:

            # Make it the correct class:
            self.__class__ = replace.__class__

            # Give it all the right properties:
            for attr in replace.__dict__:
                self.__setattr__(attr, getattr(replace, attr))

            # It now no longer makes sense to talk about error_cols for this expression:
            self.error_col = None


class CatIdentifierOperator(IdentifierExpression):
    def __init__(self, parse_ctx, args: List[IdentifierExpression]):
        super().__init__('cat_id() operator.', parse_ctx=parse_ctx, children=args)
        self.args = args

    def __str__(self):
        result = "cat_id("
        result += Formatting.comma_seperated_list(self.args)
        result += ")"
        return result

    def eval_identifier(self):
        result = ""
        for arg in self.args:
            result = result + arg.eval_identifier()
        return result
    
    def macro_arg_replacement(self, find: str, replace: Expression, must_be_identifier=False):
        for arg in self.args: 
            arg.macro_arg_replacement(find, replace, must_be_identifier)
    

class StringLiteralExpression(Expression):
    """A String literal."""

    def __init__(self, parse_ctx, text: str):
        super().__init__('String Literal', parse_ctx=parse_ctx)
        self.text = text

    def eval(self, context):
        # TODO: Escaping
        # TODO: Zero-termination
        _ = context
        return self.text

    def __str__(self):
        return '"' + self.text + '"'


# noinspection PyPep8Naming
class isDefinedExpression(Expression):
    """defined(identifer) operator."""

    def __init__(self, parse_ctx, identifier: IdentifierExpression):
        super().__init__("defined Operator", parse_ctx=parse_ctx)
        self.identifier = identifier

    def eval(self, context):
        return self.identifier.eval_identifier() in context

    def __str__(self):
        return "defined(" + str(self.identifier) + ")"

    def macro_arg_replacement(self, find: str, replace: Expression):
        self.identifier.macro_arg_replacement(find, replace, must_be_identifier=True)

class SprintfExpression(Expression):
    """sprintf("string %i", val) operator."""

    def __init__(self, parse_ctx, text: Expression, args: List[Expression]):
        super().__init__('sprintf Operator', parse_ctx=parse_ctx)
        self.text = text
        self.args = args

        self.string_start_col = None
        if text.error_col:
            if len(text.error_col) > 1:
                self.string_start_col = text.error_col[0]

    def eval(self, context):
        # Get format string and assert it is a string:
        original_text = self.text.eval(context)
        assert_str(original_text, "First argument of sprintf operator", self.text.error_col, self.error_col)
        text = original_text

        arg_index = 0

        while "%v" in text:
            # Ensure there is an argument left
            if arg_index >= len(self.args):
                # No more arguments left.

                if isinstance(self.text, StringLiteralExpression) and self.string_start_col is not None:
                    # If the string is provided directly, we can determine the error_col:
                    specifiers = list(re.finditer(r'%v', original_text))
                    specifier_index = specifiers[arg_index].start()
                    error_col = self.string_start_col + specifier_index + 1
                    error_col = (error_col, error_col + 1)  # Specifier is two chars long

                else:
                    error_col = None

                raise EvalException("Format string contains format specifier but there are no more arguments!",
                                    error_col=error_col)

            # Insert argument:
            text = text.replace('%v', str(self.args[arg_index].eval(context)), 1)
            arg_index += 1

        return text

    def __str__(self):
        result = "sprintf(" + str(self.text)
        if self.args:
            result += ", "
            result += Formatting.comma_seperated_list(self.args)
        result += ")"
        return result

    def remove_error_col_info(self):
        self.text.remove_error_col_info()
        self.string_start_col = None
        for arg in self.args:
            arg.remove_error_col_info()

    def macro_arg_replacement(self, find: str, replace: Expression):
        self.text.macro_arg_replacement(find, replace)
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)


class StrlenExpression(Expression):
    """strlen() operator."""

    def __init__(self, parse_ctx, arg: Expression):
        super().__init__('strlen Operator', parse_ctx=parse_ctx, children=[arg])

    def eval(self, context):
        child = self.children[0].eval(context)
        assert_str(child, "Argument of strlen operator", self.children[0].error_col, self.error_col)
        return len(child)

    def __str__(self):
        return "strlen(" + str(self.children[0]) + ")"


class StringIndexExpression(Expression):
    """String Index Operator"""
    
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Modulo Operator', parse_ctx=parse_ctx, children=[child1, child2])
    
    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_str(child0, "Left operand of string index operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Index of string index operator", self.children[1].error_col, self.error_col)
        return ord(child0[child1])

    def __str__(self):
        return "(%s[%s])" % (str(self.children[0]), str(self.children[1]))


# ########## Unary Expression: ##########


class PosExpression(Expression):
    """Unary-plus operator."""

    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Unary-Plus Operator', parse_ctx=parse_ctx, children=[child1])

    def eval(self, context):
        child = self.children[0].eval(context)
        assert_int(child, "Operand of unary-plus operator", self.children[0].error_col, self.error_col)
        return child

    def __str__(self):
        return "(+%s)" % (str(self.children[0]))


class NegExpression(Expression):
    """Unary-minus operator."""

    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Unary-Minus Operator', parse_ctx=parse_ctx, children=[child1])

    def eval(self, context) -> int:
        child = self.children[0].eval(context)
        assert_int(child, "Operand of unary-minus operator", self.children[0].error_col, self.error_col)
        return child * -1

    def __str__(self):
        return "(-%s)" % (str(self.children[0]))


class NotExpression(Expression):
    """Unary-not operator."""

    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Not Operator', parse_ctx=parse_ctx, children=[child1])

    def eval(self, context) -> int:
        child = self.children[0].eval(context)
        assert_int(child, "Operand of not operator", self.children[0].error_col, self.error_col)
        if child == 0:
            result = 1
        else:
            result = 0
        return result

    def __str__(self):
        return "(!%s)" % (str(self.children[0]))


class BitNotExpression(Expression):
    """Unary-bitwise-not operator."""

    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Bitwise-Not Operator', parse_ctx=parse_ctx, children=[child1])

    def eval(self, context):
        child = self.children[0].eval(context)
        assert_int(child, "Operand of bitwise-not operator", self.children[0].error_col, self.error_col)
        return (~child) & 0xff

    def __str__(self):
        return "(~%s)" % (str(self.children[0]))


# ########## Binary Expression: ##########


class DivExpression(Expression):
    """Division operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Division Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of division operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of division operator", self.children[1].error_col, self.error_col)
        return child0 // child1

    def __str__(self):
        return "(%s / %s)" % (str(self.children[0]), str(self.children[1]))


class MulExpression(Expression):
    """Multiplication operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Multiplication Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of multiplication operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of multiplication operator", self.children[1].error_col, self.error_col)
        return child0 * child1

    def __str__(self):
        return "(%s * %s)" % (str(self.children[0]), str(self.children[1]))


class ModExpression(Expression):
    """Modulo operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Modulo Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of modulo operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of modulo operator", self.children[1].error_col, self.error_col)
        return child0 % child1

    def __str__(self):
        return "(%s %% %s)" % (str(self.children[0]), str(self.children[1]))


class AddExpression(Expression):
    """Plus operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Addition Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        child1 = self.children[1].eval(context)
        if isinstance(child0, int) and isinstance(child1, int):
            result = child0 + child1
        elif isinstance(child0, str) and isinstance(child1, str):
            result = child0 + child1
        else:
            msg = "Addition is not defined for types: " + _type_combination_str([child0, child1])
            raise EvalException(msg, error_col=self.error_col)
        return result

    def __str__(self):
        return "(%s + %s)" % (str(self.children[0]), str(self.children[1]))


class SubExpression(Expression):
    """Minus operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Subtraction Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of subtraction operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of subtraction operator", self.children[1].error_col, self.error_col)
        return child0 - child1

    def __str__(self):
        return "(%s - %s)" % (str(self.children[0]), str(self.children[1]))


class LShiftExpression(Expression):
    """Left-shift operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Left-Shift Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of left-shift operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of left-shift operator", self.children[1].error_col, self.error_col)
        return child0 << child1

    def __str__(self):
        return "(%s << %s)" % (str(self.children[0]), str(self.children[1]))


class RShiftExpression(Expression):
    """Right-shift operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Right-Shift Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of right-shift operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of right-shift operator", self.children[1].error_col, self.error_col)
        return child0 >> child1

    def __str__(self):
        return "(%s >> %s)" % (str(self.children[0]), str(self.children[1]))


class LessExpression(Expression):
    """Less-than comparison operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Less Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of comparison operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of comparison operator", self.children[1].error_col, self.error_col)
        if child0 < child1:
            result = 1
        else:
            result = 0
        return result

    def __str__(self):
        return "(%s < %s)" % (str(self.children[0]), str(self.children[1]))


class LessEqExpression(Expression):
    """Less-than-or-equals comparison operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Less-Or-Equals Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of comparison operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of comparison operator", self.children[1].error_col, self.error_col)
        if child0 <= child1:
            result = 1
        else:
            result = 0
        return result

    def __str__(self):
        return "(%s <= %s)" % (str(self.children[0]), str(self.children[1]))


class GreaterExpression(Expression):
    """Greater-than comparison operator"""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Greater Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of comparison operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of comparison operator", self.children[1].error_col, self.error_col)
        if child0 > child1:
            result = 1
        else:
            result = 0
        return result

    def __str__(self):
        return "(%s > %s)" % (str(self.children[0]), str(self.children[1]))


class GreaterEqExpression(Expression):
    """Greater-than-or-equals comparison operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Greater-Or-Equals Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of comparison operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of comparison operator", self.children[1].error_col, self.error_col)
        if child0 >= child1:
            result = 1
        else:
            result = 0
        return result

    def __str__(self):
        return "(%s >= %s)" % (str(self.children[0]), str(self.children[1]))


class EqExpression(Expression):
    """Equals comparison operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Equals Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        child1 = self.children[1].eval(context)
        if isinstance(child0, int) and isinstance(child1, int):
            result = bool(child0 == child1)
        elif isinstance(child0, str) and isinstance(child1, str):
            result = bool(child0 == child1)
        else:
            msg = "Equality is not defined for types: " + _type_combination_str([child0, child1])
            raise EvalException(msg, error_col=self.error_col)

        if result:
            return 1
        else:
            return 0

    def __str__(self):
        return "(%s == %s)" % (str(self.children[0]), str(self.children[1]))


class NEqExpression(Expression):
    """Not-equals comparison operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Not-Equals Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        child1 = self.children[1].eval(context)
        if isinstance(child0, int) and isinstance(child1, int):
            result = bool(child0 != child1)
        elif isinstance(child0, str) and isinstance(child1, str):
            result = bool(child0 != child1)
        else:
            msg = "Equality is not defined for types: " + _type_combination_str([child0, child1])
            raise EvalException(msg, error_col=self.error_col)

        if result:
            return 1
        else:
            return 0

    def __str__(self):
        return "(%s != %s)" % (str(self.children[0]), str(self.children[1]))


class BitAndExpression(Expression):
    """Bitwise-and operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Bitwise-And Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of bitwise-and operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of bitwise-and operator", self.children[1].error_col, self.error_col)
        return child0 & child1

    def __str__(self):
        return "(%s & %s)" % (str(self.children[0]), str(self.children[1]))


class BitOrExpression(Expression):
    """Bitwise-or operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Bitwise-Or Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of bitwise-or operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of bitwise-or operator", self.children[1].error_col, self.error_col)
        return child0 | child1

    def __str__(self):
        return "(%s | %s)" % (str(self.children[0]), str(self.children[1]))


class BitXORExpression(Expression):
    """Bitwise-exclusive-or operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Bitwise-Xor Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of bitwise-xor operator", self.children[0].error_col, self.error_col)
        child1 = self.children[1].eval(context)
        assert_int(child1, "Right operand of bitwise-xor operator", self.children[1].error_col, self.error_col)
        return child0 ^ child1

    def __str__(self):
        return "(%s ^ %s)" % (str(self.children[0]), str(self.children[1]))


class AndExpression(Expression):
    """Bitwise-and operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('And Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        # Short-circuit eval:
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of and operator", self.children[0].error_col, self.error_col)

        if child0 == 0:
            result = 0
        else:
            child1 = self.children[1].eval(context)
            assert_int(child1, "Right operand of and operator", self.children[1].error_col, self.error_col)
            if child1 == 0:
                result = 0
            else:
                result = 1
        return result

    def __str__(self):
        return "(%s && %s)" % (str(self.children[0]), str(self.children[1]))


class OrExpression(Expression):
    """Bitwise-or operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Or Operator', parse_ctx=parse_ctx, children=[child1, child2])

    def eval(self, context):
        # Short-circuit eval:
        child0 = self.children[0].eval(context)
        assert_int(child0, "Left operand of or operator", self.children[0].error_col, self.error_col)

        if child0 == 1:
            result = 1
        else:
            child1 = self.children[1].eval(context)
            assert_int(child1, "Right operand of or operator", self.children[1].error_col, self.error_col)
            if child1 == 0:
                result = 0
            else:
                result = 1
        return result

    def __str__(self):
        return "(%s || %s)" % (str(self.children[0]), str(self.children[1]))


# ########## Ternary Expression: ##########

class ConditionalExpression(Expression):
    """Conditional operator."""

    def __init__(self, parse_ctx, child1: Expression, child2: Expression, child3: Expression):
        super().__init__('Multiplication Operator', parse_ctx=parse_ctx, children=[child1, child2, child3])

    def eval(self, context):
        child0 = self.children[0].eval(context)
        assert_int(child0, "Conidition of conditional operator", self.children[0].error_col, self.error_col)
        if child0 == 0:
            result = self.children[2].eval(context)
        else:
            result = self.children[1].eval(context)
        return result

    def __str__(self):
        return "(%s ? %s : %s)" % (str(self.children[0]), str(self.children[1]), str(self.children[2]))
