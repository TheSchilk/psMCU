from Util.Errors import EvalException, psASMException
import Util.Formatting as Formatting


class Expression:
    def __init__(self, name, error_col=None, children=[]):
        self.children = children
        self.name = name
        self.error_col = error_col

    def eval_int(self, context) -> int:
        raise psASMException("%s cannot be evaluated as an integer." % self.name, error_col=self.error_col)

    def eval_str(self, context) -> str:
        raise psASMException("%s cannot be evaluated as a string." % self.name, error_col=self.error_col)

    def macro_arg_replacement(self, find: str, replace):
        for child in self.children:
            child.macro_arg_replacement(find, replace)


# ########## Atomic Expression: ##########

class NumLiteralExpression(Expression):
    def __init__(self, parse_ctx, text: str):
        super().__init__('Numerical Literal')
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

        self.text = text

    def eval_int(self, context) -> int:
        try:
            return int(self.text, 0)
        except ValueError:
            raise EvalException("Malformed integer: %s." % self.text)

    def __str__(self):
        return self.text


class CharLiteralExpression(Expression):
    def __init__(self, parse_ctx, char: str):
        super().__init__('Char Literal')
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        char = self.char[1]
        return ord(char)

    def __str__(self):
        return self.char


class IdentifierExpression(Expression):
    def __init__(self, parse_ctx, text: str):
        super().__init__('Identifier')
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

        self.text = text

    def eval_int(self, context) -> int:
        # TODO
        raise Exception()

    def eval_str(self, context) -> str:
        # TODO
        raise Exception()

    def __str__(self):
        return self.text

    def macro_arg_replacement(self, find: str, replace: Expression):
        if self.text == find:
            # This IdentifierExpression must be replaced with the replace Expression

            # In-place mutate this object into the replacement:

            # Make it the correct class:
            self.__class__ = replace.__class__

            # Give it all the right properties:
            for attr in replace.__dict__:
                self.__setattr__(attr, getattr(replace,  attr))

            # Note: Alternatively, macro_arg_replacement could check if each child is an
            # IdentifierExpression with matching text and replace it.
            # But that is boring :)


class StringLiteralExpression(Expression):
    def __init__(self, parse_ctx, text: str):
        super().__init__('String Literal')
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

        self.text = text

    def eval_str(self, context) -> str:
        return self.text

    def __str__(self):
        return '"' + self.text + '"'


class isDefinedExpression(Expression):
    def __init__(self, parse_ctx, text: str):
        super().__init__("defined Operator")
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

        self.text = text

    def eval_int(self, context) -> int:
        # TODO:
        raise Exception()

    def __str__(self):
        return "defined(" + self.text + ")"


class SprintfExpression(Expression):
    def __init__(self, parse_ctx, text: Expression, args: [Expression]):
        super().__init__('sprintf Operator')

        self.text = text
        self.args = args

    def eval_str(self, context) -> str:
        text = self.text

        arg_index = 0
        while "%i" in text or "%s" in text:
            # Ensure there is an argument left
            if arg_index >= len(self.args):
                # No more arguments left.
                # TODO determine error_col
                raise EvalException("Print string contains format specifier but there are no more arguments!")

            # Insert argument:

            # See what kind of specifiers are left:
            have_i = '%i' in text
            have_s = '%s' in text

            if have_i and not have_s:
                text = text.replace('%i', self.args[arg_index].eval_int(context))
            elif have_s and not have_i:
                text = text.replace('%s', self.args[arg_index].eval_str(context))
            else:
                # See what the next specifier is:
                if text.find('%s') < text.find('%i'):
                    text = text.replace('%s', self.args[arg_index].eval_str(context))
                else:
                    text = text.replace('%i', self.args[arg_index].eval_int(context))

            arg_index += 1

        return text

    def __str__(self):
        result = "sprtinf(" + str(self.text)
        if self.args:
            result += ", "
            result += Formatting.comma_seperated_list(self.args)
        result += ")"
        return result

    def macro_arg_replacement(self, find: str, replace: Expression):
        self.text.macro_arg_replacement(find, replace)
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)


class StrlenExpression(Expression):
    def __init__(self, parse_ctx, arg: Expression):
        super().__init__('strlen Operator', children=[arg])

    def eval_int(self, context) -> int:
        return len(self.children[0].eval_str())

    def __str__(self):
        return "strlen("+str(self.children[0])+")"


# ########## Unary Expression: ##########


class PosExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Unary-Plus Operator', children=[child1])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context)

    def __str__(self):
        return ("(+%s)" % (str(self.children[0])))


class NegExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Unary-Minus Operator', children=[child1])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) * -1

    def __str__(self):
        return ("(-%s)" % (str(self.children[0])))


class NotExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Not Operator', children=[child1])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        child1_eval = self.children[0].eval_int(context)
        if child1_eval == 0:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(!%s)" % (str(self.children[0])))


class BitNotExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression):
        super().__init__('Bitwise-Not Operator', children=[child1])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return ~self.children[0].eval_int(context)

    def __str__(self):
        return ("(~%s)" % (str(self.children[0])))

# ########## Binary Expression: ##########


class DivExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Division Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) // self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s / %s)" % (str(self.children[0]), str(self.children[1])))


class MulExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Multiplication Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) * self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s * %s)" % (str(self.children[0]), str(self.children[1])))


class ModExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Modulo Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) % self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s %% %s)" % (str(self.children[0]), str(self.children[1])))


class AddExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Addition Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) + self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s + %s)" % (str(self.children[0]), str(self.children[1])))


class SubExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Subtraction Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) - self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s - %s)" % (str(self.children[0]), str(self.children[1])))


class LShiftExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Left-Shift Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) << self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s << %s)" % (str(self.children[0]), str(self.children[1])))


class RShiftExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Right-Shift Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) >> self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s >> %s)" % (str(self.children[0]), str(self.children[1])))


class LessExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Less Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        child1_eval = self.children[0].eval_int(context)
        child2_eval = self.children[1].eval_int(context)
        if child1_eval < child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s < %s)" % (str(self.children[0]), str(self.children[1])))


class LessEqExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Less-Or-Equals Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        child1_eval = self.children[0].eval_int(context)
        child2_eval = self.children[1].eval_int(context)
        if child1_eval <= child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s <= %s)" % (str(self.children[0]), str(self.children[1])))


class GreaterExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Greater Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        child1_eval = self.children[0].eval_int(context)
        child2_eval = self.children[1].eval_int(context)
        if child1_eval > child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s > %s)" % (str(self.children[0]), str(self.children[1])))


class GreaterEqExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Greater-Or-Equals Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        child1_eval = self.children[0].eval_int(context)
        child2_eval = self.children[1].eval_int(context)
        if child1_eval >= child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s >= %s)" % (str(self.children[0]), str(self.children[1])))


class EqExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Equals Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        child1_eval = self.children[0].eval_int(context)
        child2_eval = self.children[1].eval_int(context)
        if child1_eval == child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s == %s)" % (str(self.children[0]), str(self.children[1])))


class NEqExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Not-Equals Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        child1_eval = self.children[0].eval_int(context)
        child2_eval = self.children[1].eval_int(context)
        if child1_eval != child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s != %s)" % (str(self.children[0]), str(self.children[1])))


class BitAndExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Bitwise-And Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) & self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s & %s)" % (str(self.children[0]), str(self.children[1])))


class BitOrExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Bitwise-Or Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) | self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s | %s)" % (str(self.children[0]), str(self.children[1])))


class BitXORExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Bitwise-Xor Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        return self.children[0].eval_int(context) ^ self.children[1].eval_int(context)

    def __str__(self):
        return ("(%s ^ %s)" % (str(self.children[0]), str(self.children[1])))


class AndExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('And Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        # Short-circuit eval:
        child1_eval = self.children[0].eval_int(context)
        if child1_eval == 0:
            return 0
        else:
            if self.children[1].eval_int(context) == 0:
                return 0
            else:
                return 1

    def __str__(self):
        return ("(%s && %s)" % (str(self.children[0]), str(self.children[1])))


class OrExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression):
        super().__init__('Or Operator', children=[child1, child2])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        # Short-circuit eval:
        child1_eval = self.children[0].eval_int(context)
        if child1_eval != 0:
            return 1
        else:
            if self.children[1].eval_int(context) == 0:
                return 0
            else:
                return 1

    def __str__(self):
        return ("(%s || %s)" % (str(self.children[0]), str(self.children[1])))


# ########## Ternary Expression: ##########

class ConditionalExpression(Expression):
    def __init__(self, parse_ctx, child1: Expression, child2: Expression, child3: Expression):
        super().__init__('Multiplication Operator', children=[child1, child2, child3])
        # self.error_col = TODO
        self.parse_ctx = parse_ctx

    def eval_int(self, context) -> int:
        if self.children[0].eval_int(context) == 0:
            return self.children[2].eval_int(context)
        else:
            return self.children[1].eval_int(context)

    def eval_str(self, context) -> str:
        # TODO
        pass

    def __str__(self):
        return ("(%s ? %s : %s)" % (str(self.children[0]), str(self.children[1]), str(self.children[2])))
