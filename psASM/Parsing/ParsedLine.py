from Parsing.ExpressionTree import Expression, isDefinedExpression, NotExpression
from Util.Formatting import comma_seperated_list


class ParsedLine():
    def __init__(self):
        self.file_id = None
        self.line_id = None


class EmptyLine(ParsedLine):
    def __init__(self):
        super().__init__()
        pass

    def __str__(self):
        return "#empty"


class InstructionLine(ParsedLine):
    def __init__(self, labels: [str], instruction: str, args: [Expression]):
        super().__init__()
        self.labels = labels
        self.instruction = instruction
        self.args = args

    def __str__(self):
        result = ""
        if self.labels:
            result += comma_seperated_list(self.labels) + ': '
        result += self.instruction
        if self.args:
            result += ' ' + comma_seperated_list(self.args)
        return result


class LabelsLine(ParsedLine):
    def __init__(self, labels: [str]):
        super().__init__()
        self.labels = labels

    def __str__(self):
        return comma_seperated_list(self.labels) + ': '


class PreProcDirective(ParsedLine):
    def __init__(self):
        super().__init__()


class DefineDirective(PreProcDirective):
    def __init__(self, name: str, value: Expression):
        super().__init__()
        self.name = name
        self.value = value

    def __str__(self):
        return ('@define %s %s' % (self.name, str(self.value)))


class IncludeDirective(PreProcDirective):
    def __init__(self, file_name: str):
        super().__init__()
        self.file_name = file_name

    def __str__(self):
        return ('@include %s' % (self.file_name))


class IfDirective(PreProcDirective):
    def __init__(self, condition: Expression):
        super().__init__()
        self.condition = condition

    def condition(self, context):
        return self.condition.eval(context) != 0

    def __str__(self):
        return ('@if %s' % (self.condition))


class IfDefDirective(IfDirective):
    def __init__(self, identifier: str):
        is_defined = isDefinedExpression(identifier)
        super().__init__(is_defined)


class IfnDefDirective(IfDirective):
    def __init__(self, identifier: str):
        is_defined = isDefinedExpression(identifier)
        is_not_defined = NotExpression(is_defined)
        super().__init__(is_not_defined)


class ElIfDirective(PreProcDirective):
    def __init__(self, condition: Expression):
        super().__init__()
        self.condition = condition

    def condition(self, context):
        return self.condition.eval(context) != 0

    def __str__(self):
        return ('@elif %s' % (self.condition))


class ElseDirective(PreProcDirective):
    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@else'


class EndIfDirective(PreProcDirective):
    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@endif'


class WarningDirective(PreProcDirective):
    def __init__(self, msg: str):
        super().__init__()
        self.msg = msg

    def __str__(self):
        return ('@warning %s' % self.msg)


class ErrorDirective(PreProcDirective):
    def __init__(self, msg: str):
        super().__init__()
        self.msg = msg

    def __str__(self):
        return ('@error %s' % self.msg)


class AsciiHeapDirective(PreProcDirective):
    def __init__(self, string: str, adr: Expression):
        super().__init__()
        self.string = string
        self.adr = adr

    def __str__(self):
        return ('@ascii_heap %s, %s' % (self.string, str(self.adr)))


class AsciiStackDirective(PreProcDirective):
    def __init__(self, string: str):
        super().__init__()
        self.string = string

    def __str__(self):
        return ('@ascii_stack %s' % (self.string))


class MacroDirective(PreProcDirective):
    def __init__(self, name: str, args: [str]):
        super().__init__()
        self.name = name
        self.args = args

    def __str__(self):
        result = self.name
        if self.args:
            result += ' ' + comma_seperated_list(self.args)
        return result


class MacroExpansionDirective(PreProcDirective):
    def __init__(self, labels: [str], macro_name: str, args: [Expression]):
        super().__init__()
        self.labels = labels
        self.macro_name = macro_name
        self.args = args

    def __str__(self):
        result = ""
        if self.labels:
            result += comma_seperated_list(self.labels) + ': '
        result += self.macro_name
        if self.args:
            result += comma_seperated_list(self.args) + ': '
        return result


class EndMacroDirective(PreProcDirective):
    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@endmacro'
