from Util.Errors import EvalException, psASMException


class Expression:
    def __init__(self):
        self.children = []

    def eval(self, context) -> int:
        raise psASMException("Expression eval not implemented")

    def macro_arg_replacement(self, find: str, replace: str):
        for child in self.children:
            child.macro_arg_replacement(find, replace)


# ########## Terminal Expression: ##########


class NumLiteralExpression(Expression):
    def __init__(self, text: str):
        super().__init__()
        self.text = text

    def eval(self, context) -> int:
        try:
            return int(self.text, 0)
        except ValueError:
            raise EvalException("Cannot convert %s to integer." % self.text)

    def __str__(self):
        return self.text


class CharLiteralExpression(Expression):
    def __init__(self, text: str):
        super().__init__()
        self.text = text

    def eval(self, context) -> int:
        # Sanity check:
        if len(self.text) != 3:
            raise EvalException("Malformed char literal %s" % self.text)

        char = self.text[1]

        return ord(char)

    def __str__(self):
        return self.text


class IdentifierExpression(Expression):
    def __init__(self, text: str):
        super().__init__()
        self.text = text

    def eval(self, context) -> int:
        # TODO
        raise Exception()

    def __str__(self):
        return self.text

    def macro_arg_replacement(self, find: str, replace: str):
        if self.text == find:
            self.text = replace


class isDefinedExpression(Expression):
    def __init__(self, text: str):
        super().__init__()
        self.text = text

    def eval(self, context) -> int:
        # TODO:
        raise Exception()

    def __str__(self):
        return "defined(" + self.text + ")"

# ########## Unary Expression: ##########


class UnaryExpression(Expression):
    def __init__(self, child1: Expression):
        super().__init__()
        self.children = [child1]


class PosExpression(UnaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context)

    def __str__(self):
        return ("(+%s)" % (str(self.children[0])))


class NegExpression(UnaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) * -1

    def __str__(self):
        return ("(-%s)" % (str(self.children[0])))


class NotExpression(UnaryExpression):
    def eval(self, context) -> int:
        child1_eval = self.children[0].eval(context)
        if child1_eval == 0:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(!%s)" % (str(self.children[0])))


class BitNotExpression(UnaryExpression):
    def eval(self, context) -> int:
        return ~self.children[0].eval(context)

    def __str__(self):
        return ("(~%s)" % (str(self.children[0])))

# ########## Binary Expression: ##########


class BinaryExpression(Expression):
    def __init__(self, child1: Expression, child2: Expression):
        super().__init__()
        self.children = [child1, child2]


class DivExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) // self.children[1].eval(context)

    def __str__(self):
        return ("(%s / %s)" % (str(self.children[0]), str(self.children[1])))


class MulExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) * self.children[1].eval(context)

    def __str__(self):
        return ("(%s * %s)" % (str(self.children[0]), str(self.children[1])))


class ModExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) % self.children[1].eval(context)

    def __str__(self):
        return ("(%s %% %s)" % (str(self.children[0]), str(self.children[1])))


class AddExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) + self.children[1].eval(context)

    def __str__(self):
        return ("(%s + %s)" % (str(self.children[0]), str(self.children[1])))


class SubExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) - self.children[1].eval(context)

    def __str__(self):
        return ("(%s - %s)" % (str(self.children[0]), str(self.children[1])))


class LShiftExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) << self.children[1].eval(context)

    def __str__(self):
        return ("(%s << %s)" % (str(self.children[0]), str(self.children[1])))


class RShiftExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) >> self.children[1].eval(context)

    def __str__(self):
        return ("(%s >> %s)" % (str(self.children[0]), str(self.children[1])))


class LessExpression(BinaryExpression):
    def eval(self, context) -> int:
        child1_eval = self.children[0].eval(context)
        child2_eval = self.children[1].eval(context)
        if child1_eval < child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s < %s)" % (str(self.children[0]), str(self.children[1])))


class LessEqExpression(BinaryExpression):
    def eval(self, context) -> int:
        child1_eval = self.children[0].eval(context)
        child2_eval = self.children[1].eval(context)
        if child1_eval <= child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s <= %s)" % (str(self.children[0]), str(self.children[1])))


class GreaterExpression(BinaryExpression):
    def eval(self, context) -> int:
        child1_eval = self.children[0].eval(context)
        child2_eval = self.children[1].eval(context)
        if child1_eval > child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s > %s)" % (str(self.children[0]), str(self.children[1])))


class GreaterEqExpression(BinaryExpression):
    def eval(self, context) -> int:
        child1_eval = self.children[0].eval(context)
        child2_eval = self.children[1].eval(context)
        if child1_eval >= child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s >= %s)" % (str(self.children[0]), str(self.children[1])))


class EqExpression(BinaryExpression):
    def eval(self, context) -> int:
        child1_eval = self.children[0].eval(context)
        child2_eval = self.children[1].eval(context)
        if child1_eval == child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s == %s)" % (str(self.children[0]), str(self.children[1])))


class NEqExpression(BinaryExpression):
    def eval(self, context) -> int:
        child1_eval = self.children[0].eval(context)
        child2_eval = self.children[1].eval(context)
        if child1_eval != child2_eval:
            return 1
        else:
            return 0

    def __str__(self):
        return ("(%s != %s)" % (str(self.children[0]), str(self.children[1])))


class BitAndExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) & self.children[1].eval(context)

    def __str__(self):
        return ("(%s & %s)" % (str(self.children[0]), str(self.children[1])))


class BitOrExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) | self.children[1].eval(context)

    def __str__(self):
        return ("(%s | %s)" % (str(self.children[0]), str(self.children[1])))


class BitXORExpression(BinaryExpression):
    def eval(self, context) -> int:
        return self.children[0].eval(context) ^ self.children[1].eval(context)

    def __str__(self):
        return ("(%s ^ %s)" % (str(self.children[0]), str(self.children[1])))


class AndExpression(BinaryExpression):
    def eval(self, context) -> int:
        # Short-circuit eval:
        child1_eval = self.children[0].eval(context)
        if child1_eval == 0:
            return 0
        else:
            if self.children[1].eval(context) == 0:
                return 0
            else:
                return 1

    def __str__(self):
        return ("(%s && %s)" % (str(self.children[0]), str(self.children[1])))


class OrExpression(BinaryExpression):
    def eval(self, context) -> int:
        # Short-circuit eval:
        child1_eval = self.children[0].eval(context)
        if child1_eval != 0:
            return 1
        else:
            if self.children[1].eval(context) == 0:
                return 0
            else:
                return 1

    def __str__(self):
        return ("(%s || %s)" % (str(self.children[0]), str(self.children[1])))


# ########## Ternary Expression: ##########


class TernaryExpression(Expression):
    def __init__(self, child1: Expression, child2: Expression, child3: Expression):
        super().__init__()
        self.children = [child1, child2, child3]


class ConditionalExpression(TernaryExpression):
    def eval(self, context):
        if self.children[0].eval(context) == 0:
            return self.children[2].eval(context)
        else:
            return self.children[1].eval(context)

    def __str__(self):
        return ("(%s ? %s : %s)" % (str(self.children[0]), str(self.children[1]), str(self.children[2])))
