from Parsing.ExpressionTree import Expression, isDefinedExpression, NotExpression
from Util.Formatting import comma_seperated_list
from Util.Errors import ParsingException


def _replace_in_list(list, find, replace):
    for i, item in enumerate(list):
        if item == find:
            list[i] == replace


class ParsedLine():
    def __init__(self):
        self.file_id = None
        self.line_id = None

    def macro_arg_replacement(self, find, replace):
        pass


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

    def macro_arg_replacement(self, find, replace):
        # Replace in labels:
        _replace_in_list(self.labels, find, replace)

        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)


class LabelsLine(ParsedLine):
    def __init__(self, labels: [str]):
        super().__init__()
        self.labels = labels

    def __str__(self):
        return comma_seperated_list(self.labels) + ': '

    def macro_arg_replacement(self, find, replace):
        # Replace in labels:
        _replace_in_list(self.labels, find, replace)


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

    def macro_arg_replacement(self, find, replace):
        # Replace in name
        if self.name == find:
            self.name = replace

        # Replace in value:
        self.value.macro_arg_replacement(find, replace)


class IncludeDirective(PreProcDirective):
    def __init__(self, file_name: str):
        super().__init__()
        self.file_name = file_name

    def __str__(self):
        return ('@include %s' % (self.file_name))


class IncludeOnceDirective(PreProcDirective):
    def __init__(self):
        super().__init__()

    def __str__(self):
        return ('@include_once')


class IfDirective(PreProcDirective):
    def __init__(self, condition: Expression):
        super().__init__()
        self.condition = condition

    def condition(self, context):
        return self.condition.eval(context) != 0

    def __str__(self):
        return ('@if %s' % (self.condition))

    def macro_arg_replacement(self, find, replace):
        self.condition.macro_arg_replacement(find, replace)


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

    def macro_arg_replacement(self, find, replace):
        self.condition.macro_arg_replacement(find, replace)


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


class PrintDirective(PreProcDirective):
    def __init__(self, msg: str, args: [Expression]):
        super().__init__()
        self.msg = msg
        self.args = args
        print(self.text(None))

    def __str__(self):
        result = ('@print %s' % self.msg)
        if self.args:
            result += ', ' + comma_seperated_list(self.args)

        return result

    def macro_arg_replacement(self, find, replace):
        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)

    def text(self, context):
        text = self.msg

        # Remove ":
        text = text[1:-1]

        arg_index = 0
        while "%i" in text:
            # Ensure there is an argument left
            if arg_index >= len(self.args):
                # No more arguments left.
                # Determine error_col:

                # TODO this does not work -> need context.
                original_text = self.msg
                if arg_index != 0:
                    original_text = original_text.replace("%i", "__", arg_index)
                error_col_start = original_text.find("%i")
                error_col = (error_col_start, error_col_start+1)
                raise ParsingException("Print string contains format specifier but there are no more arguments!", error_col=error_col)

            # Insert argumet
            text = text.replace("%i", str(self.args[arg_index].eval(context)), 1)
            arg_index += 1
        return text


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
        self.pseudo_source_file_id = None
        self.macro_name = None

    def __str__(self):
        return ('@ascii_heap %s, %s' % (self.string, str(self.adr)))

    def macro_arg_replacement(self, find, replace):
        # Replace in adr:
        self.adr.macro_arg_replacement(find, replace)


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

        for arg in args:
            if not arg.startswith('$'):
                raise ParsingException("Macro expansion argument identifiers must start with '$'")

    def __str__(self):
        result = self.name
        if self.args:
            result += ' ' + comma_seperated_list(self.args)
        return result

    def macro_arg_replacement(self, find, replace):
        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)


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

    def macro_arg_replacement(self, find, replace):
        # Replace in labels:
        _replace_in_list(self.labels, find, replace)

        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)


class EndMacroDirective(PreProcDirective):
    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@endmacro'
