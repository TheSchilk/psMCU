from typing import List
import copy
from PreProc.ExpressionTree import Expression, isDefinedExpression, NotExpression, IdentifierExpression
from PreProc.ExpressionTree import assert_int, assert_str
from Util.Formatting import comma_seperated_list, prefix_every_line
from Util.Errors import ParsingException, EvalException, LocatedException


class ParsedLine:
    type_name = "undefined"

    def __init__(self):
        self.file_id = None
        self.line_id = None
        self.context = None

    def is_block_delimiter(self):
        return False

    def set_location(self, file_id, line_id):
        self.file_id = file_id
        self.line_id = line_id

    def set_context(self, context):
        self.context = context

    def macro_arg_replacement(self, find, replace):
        pass

    def instruction_tree(self):
        return str(self)


class EmptyLine(ParsedLine):
    type_name = "empty line"

    def __init__(self):
        super().__init__()
        pass

    def __str__(self):
        return "#empty"


class LabelsLine(ParsedLine):
    type_name = "Labels"

    def __init__(self, labels: List[str]):
        super().__init__()
        self.labels = labels

    def __str__(self):
        return comma_seperated_list(self.labels) + ': '

    def register_labels(self, adr):
        try:
            for label in self.labels:
                self.context[label] = adr
        except LocatedException as exc:
            exc.decorate_line_id(self.line_id)
            exc.decorate_file_id(self.file_id)
            raise exc

    def macro_arg_replacement(self, find, replace):
        # Replace in labels:
        for index, label in enumerate(self.labels):
            if label == find:
                # Found a label that should be replaced
                # Ensure that replacement is an IdentifierExpression
                if not isinstance(replace, IdentifierExpression):
                    raise EvalException('Can only replace label during macro expansion if the replacement is an identifier.')

                # Replace label:
                self.labels[index] = replace.text


class InstructionLine(ParsedLine):
    type_name = "Instruction"

    def __init__(self, labels: List[str], instruction: str, args: List[Expression], labels_lines: LabelsLine = None):
        super().__init__()
        self.labels = labels
        self.instruction = instruction
        self.args = args
        self.evaluated_args = []
        if labels_lines is None:
            self.labels_lines = []
        else:
            self.labels_lines = labels_lines

    def add_labels_line(self, labels_line):
        self.labels_lines.append(labels_line)

    def register_labels(self, adr):
        for label in self.labels:
            self.context[label] = adr
        for label_line in self.labels_lines:
            label_line.register_labels(adr)

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
        for index, label in enumerate(self.labels):
            if label == find:
                # Found a label that should be replaced
                # Ensure that replacement is an IdentifierExpression
                if not isinstance(replace, IdentifierExpression):
                    raise EvalException('Can only replace label during macro expansion if the replacement is an identifier.')

                # Replace label:
                self.labels[index] = replace.text

        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)

    def evaluate_args(self):
        for arg in self.args:
            value = arg.eval(self.context)
            assert_int(value, "Argument of Instruction", arg.error_col)
            self.evaluated_args.append(value)


class PreProcDirective(ParsedLine):
    def __init__(self):
        super().__init__()


class DefineDirective(PreProcDirective):
    type_name = "@define"

    def __init__(self, name: str, value: Expression):
        super().__init__()
        self.name = name
        self.value = value

    def eval_value(self):
        return self.value.eval(self.context)

    def __str__(self):
        if self.value is not None:
            result = ('@define %s %s' % (self.name, str(self.value)))
        else:
            result = ('@define %s' % self.name)

        return result

    def macro_arg_replacement(self, find, replace):
        if self.name == find:
            # Ensure that replacement is an IdentifierExpression
            if not isinstance(replace, IdentifierExpression):
                raise EvalException('Can only replace definition name during macro expansion if the replacement is an identifier.')

            # Replace name
            self.name = replace.text

        # Replace in value:
        self.value.macro_arg_replacement(find, replace)


class IncludeDirective(PreProcDirective):
    type_name = "@include"

    def __init__(self, file_name: Expression):
        super().__init__()
        self.file_name = file_name

    def get_file_name(self):
        file_name = self.file_name.eval(self.context)
        assert_str(file_name, "File name", self.file_name.error_col)
        return file_name

    def __str__(self):
        return ('@include %s' % (self.file_name))


class IncludeOnceDirective(PreProcDirective):
    type_name = "@include_once"

    def __init__(self):
        super().__init__()

    def __str__(self):
        return ('@include_once')


class IfDirective(PreProcDirective):
    type_name = "@if"

    def __init__(self, condition: Expression):
        super().__init__()
        self.condition = condition
        self.true_block = []
        self.elif_instructions = []
        self.else_block = []

    def get_block(self):
        """Get the correct block of instructions to be inserted. """
        if self.eval_condition():
            return self.true_block
        else:
            for elif_inst in self.elif_instructions:
                if elif_inst.eval_condition():
                    return elif_inst.block
            return self.else_block

    def eval_condition(self):
        condition = self.condition.eval(self.context)
        assert_int(condition, "Condition of if directive", self.condition.error_col)
        return condition != 0

    def __str__(self):
        return ('@if %s' % (self.condition))

    def macro_arg_replacement(self, find, replace):
        self.condition.macro_arg_replacement(find, replace)

    def is_block_delimiter(self):
        return True

    def instruction_tree(self):
        result = str(self)
        for line in self.true_block:
            result += '\n' + prefix_every_line(line.instruction_tree(), '  ')
        for elif_inst in self.elif_instructions:
            result += '\n' + str(elif_inst)
            for line in elif_inst.block:
                result += '\n' + prefix_every_line(line.instruction_tree(), '  ')
        if self.else_block:
            result += '\n' + '@else'
            for line in self.else_block:
                result += '\n' + prefix_every_line(line.instruction_tree(), '  ')
        return result

    def set_context(self, context):
        self.context = context
        for elif_instruciton in self.elif_instructions:
            elif_instruciton.set_context(context)


class IfDefDirective(IfDirective):
    type_name = "@ifdef"

    def __init__(self, identifier: str):
        is_defined = isDefinedExpression(None, identifier)
        super().__init__(is_defined)


class IfnDefDirective(IfDirective):
    type_name = "@ifndef"

    def __init__(self, identifier: str):
        is_defined = isDefinedExpression(None, identifier)
        is_not_defined = NotExpression(None, is_defined)
        super().__init__(is_not_defined)


class ElIfDirective(PreProcDirective):
    type_name = "@elif"

    def __init__(self, condition: Expression):
        super().__init__()
        self.condition = condition
        self.block = []

    def eval_condition(self):
        condition = self.condition.eval(self.context)
        assert_int(condition, "Condition of elif directive", self.condition.error_col)
        return condition != 0

    def __str__(self):
        return '@elif %s' % self.condition

    def macro_arg_replacement(self, find, replace):
        self.condition.macro_arg_replacement(find, replace)

    def is_block_delimiter(self):
        return True


class ElseDirective(PreProcDirective):
    type_name = "@else"

    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@else'

    def is_block_delimiter(self):
        return True


class EndIfDirective(PreProcDirective):
    type_name = "@endif"

    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@endif'

    def is_block_delimiter(self):
        return True


class PrintDirective(PreProcDirective):
    type_name = "@print"

    def __init__(self, msg: Expression):
        super().__init__()
        self.msg = msg

    def __str__(self):
        return '@print %s' % str(self.msg)

    def macro_arg_replacement(self, find, replace):
        self.msg.macro_arg_replacement(find, replace)

    def text(self):
        msg = self.msg.eval(self.context)
        assert_str(msg, "Error directive message", self.msg.error_col)
        return msg


class ErrorDirective(PreProcDirective):
    type_name = "@error"

    def __init__(self, msg: Expression):
        super().__init__()
        self.msg = msg

    def __str__(self):
        return '@error %s' % str(self.msg)

    def macro_arg_replacement(self, find, replace):
        self.msg.macro_arg_replacement(find, replace)

    def text(self):
        msg = self.msg.eval(self.context)
        assert_str(msg, "Error directive message", self.msg.error_col)
        return msg


class AsciiHeapDirective(PreProcDirective):
    type_name = "@ascii_heap"

    def __init__(self, string: Expression, adr: Expression):
        super().__init__()
        self.string = string
        self.adr = adr

    def __str__(self):
        return '@ascii_heap %s, %s' % (str(self.string), str(self.adr))

    def get_string(self):
        string = self.string.eval(self.context)
        assert_str(string, "First argument of @ascii_heap directive", self.string.error_col)
        return string

    def get_adr(self):
        adr = self.adr.eval(self.context)
        assert_int(adr, "Address of @ascii_heap directive", self.adr.error_col)
        return adr

    def macro_arg_replacement(self, find, replace):
        # Replace in adr:
        self.adr.macro_arg_replacement(find, replace)


class AsciiStackDirective(PreProcDirective):
    type_name = "@ascii_stack"

    def __init__(self, string: Expression):
        super().__init__()
        self.string = string

    def get_string(self):
        string = self.string.eval(self.context)
        assert_str(string, "First argument of @ascii_heap directive", self.string.error_col)
        return string

    def __str__(self):
        return '@ascii_stack %s' % str(self.string)


class MacroDirective(PreProcDirective):
    type_name = "@macro"

    def __init__(self, name: str, args: List[str]):
        super().__init__()
        self.name = name
        self.args = args
        self.block = []

        for arg in self.args:
            if not arg.startswith('$'):
                raise ParsingException("Macro expansion argument identifiers must start with '$'")

    def __str__(self):
        result = "@macro " + self.name
        if self.args:
            result += ' ' + comma_seperated_list(self.args)

        return result

    def macro_arg_replacement(self, find, replace):
        # Replace in arguments:
        for index, arg in enumerate(self.args):
            if arg == find:
                # Found an arg that should be replaced
                # Ensure that replacement is an IdentifierExpression
                if not isinstance(replace, IdentifierExpression):
                    raise EvalException('Can only replace macro definition argument identifier with another identifer.')
                else:
                    self.args[index] = replace.text

    def expand(self, expansion_args):
        want_args = len(self.args)
        have_args = len(expansion_args)
        if want_args != have_args:
            msg = "Expansion of macro %s expected %i arguments, got %i." % (self.macro_name, want_args, have_args)
            raise EvalException(msg, file_id=self.file_id, line_id=self.line_id)

        # Generate block
        block = copy.deepcopy(self.block)

        for arg_name, arg_value in zip(self.args, expansion_args):
            for line in block:
                line.macro_arg_replacement(arg_name, arg_value)

        return block

    def instruction_tree(self):
        result = str(self)
        for line in self.block:
            result += '\n' + prefix_every_line(line.finstruction_tree(), '  ')
        return result

    def is_block_delimiter(self):
        return True


class MacroExpansionDirective(PreProcDirective):
    type_name = "Macro expansion"

    def __init__(self, labels: List[str], macro_name: str, args: List[Expression]):
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
        for index, label in enumerate(self.labels):
            if label == find:
                # Found a label that should be replaced
                # Ensure that replacement is an IdentifierExpression
                if not isinstance(replace, IdentifierExpression):
                    raise EvalException('Can only replace label during macro expansion if the replacement is an identifier.')
                else:
                    self.labels[index] = replace.text

        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)


class EndMacroDirective(PreProcDirective):
    type_name = "@endmacro"

    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@endmacro'

    def is_block_delimiter(self):
        return True
