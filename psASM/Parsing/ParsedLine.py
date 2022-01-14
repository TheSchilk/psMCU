from typing import List
import copy
from PreProc.ExpressionTree import Expression, isDefinedExpression, NotExpression, IdentifierExpression
from PreProc.ExpressionTree import NumLiteralExpression
from PreProc.ExpressionTree import assert_int, assert_str
from Util.Formatting import comma_seperated_list, prefix_every_line
from Util.Errors import ParsingException, EvalException, LocatedException
from abc import ABCMeta

class ParsedLine(metaclass=ABCMeta):
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
        _ = find
        _ = replace
        return False

    def instruction_tree(self, include_empty=False):
        _ = include_empty;
        return str(self)


class EmptyLine(ParsedLine):
    type_name = "empty line"

    def __init__(self):
        super().__init__()
        pass

    def __str__(self):
        return "#empty"

    def instruction_tree(self, include_empty=False):
        if include_empty:
            return str(self)
        else:
            return ''


class LabelsLine(ParsedLine):
    type_name = "Labels"

    def __init__(self, labels: List[IdentifierExpression]):
        super().__init__()
        self.labels = labels

    def __str__(self):
        return comma_seperated_list(self.labels) + ': '

    def register_labels(self, adr):
        try:
            for label in self.labels:
                if not self.context: # pragma: no cover
                    raise Exception("Don't have a context yet!")
                self.context[label.eval_identifier()] = adr
        except LocatedException as exc:
            exc.decorate_line_id(self.line_id)
            exc.decorate_file_id(self.file_id)
            raise exc

    def macro_arg_replacement(self, find, replace):
        # Replace in labels:
        for label in self.labels:
            label.macro_arg_replacement(find, replace, must_be_identifier=True)


class InstructionLine(ParsedLine):
    type_name = "Instruction"

    def __init__(self, labels: List[IdentifierExpression], instruction: str, args: List[Expression],
                 labels_lines: list = None):
        super().__init__()
        self.labels = labels
        self.instruction = instruction
        self.args = args
        self.evaluated_args = []
        self.have_evaluated_args = False

        self.labels_lines = []
        if labels_lines is not None:
            self.labels_lines = labels_lines

    def add_labels_line(self, labels_line):
        self.labels_lines.append(labels_line)

    def register_labels(self, adr):
        for label in self.labels:
            if not self.context: # pragma: no cover
                raise Exception("Don't have a context yet!")
            self.context[label.eval_identifier()] = adr
        for label_line in self.labels_lines:
            label_line.register_labels(adr)

    def __str__(self):
        # Gather all labels to print from all labels and label_lines:
        labels_to_print = []
        for l in self.labels:
            labels_to_print.append(str(l))
        for ll in self.labels_lines:
            for l in ll.labels:
                labels_to_print.append(str(l))

        result = ""
        if len(labels_to_print) != 0:
            result += comma_seperated_list(labels_to_print) + ': '
        result += self.instruction

        if self.args:
            if self.have_evaluated_args:
                evaluate_args_str = [str(f) for f in self.evaluated_args]
                result += ' ' + comma_seperated_list(evaluate_args_str)
            else:
                result += ' ' + comma_seperated_list(self.args)
        return result

    def macro_arg_replacement(self, find, replace):
        # Replace in labels:
        for label in self.labels:
            label.macro_arg_replacement(find, replace, must_be_identifier=True)

        # Replace in label_lines:
        for line in self.labels_lines:
            line.macro_arg_replacement(find, replace)

        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)

    def evaluate_args(self):
        if self.have_evaluated_args:  # pragma: no cover
            raise Exception("Re-evaluating args that already have been evaluated!!!")
        for arg in self.args:
            value = arg.eval(self.context)
            assert_int(value, "Argument of Instruction", arg.error_col)
            self.evaluated_args.append(value)
        self.have_evaluated_args = True


class PreProcDirective(ParsedLine):
    def __init__(self):
        super().__init__()


class DefineDirective(PreProcDirective):
    type_name = "@define"

    def __init__(self, name: IdentifierExpression, value: Expression):
        super().__init__()
        self.name = name
        self.value = value

    def eval_value(self):
        return self.value.eval(self.context)

    def __str__(self):
        if self.value is not None:
            result = ('@define %s %s' % (str(self.name), str(self.value)))
        else:
            result = ('@define %s' % str(self.name))

        return result

    def macro_arg_replacement(self, find, replace):
        # Replace in name:
        self.name.macro_arg_replacement(find, replace, must_be_identifier=True)

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
        return '@include %s' % self.file_name


class IncludeOnceDirective(PreProcDirective):
    type_name = "@include_once"

    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@include_once'


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
        return '@if %s' % self.condition

    def macro_arg_replacement(self, find, replace):
        self.condition.macro_arg_replacement(find, replace)
        for line in self.true_block:
            line.macro_arg_replacement(find, replace)
        for line in self.elif_instructions:
            line.macro_arg_replacement(find, replace)
        for line in self.else_block:
            line.macro_arg_replacement(find, replace)

    def is_block_delimiter(self):
        return True

    def instruction_tree(self, include_empty=False):
        result = str(self)
        for line in self.true_block:
            result += '\n' + prefix_every_line(line.instruction_tree(include_empty), '  ')
        for elif_inst in self.elif_instructions:
            result += '\n' + str(elif_inst)
            for line in elif_inst.block:
                result += '\n' + prefix_every_line(line.instruction_tree(include_empty), '  ')
        if self.else_block:
            result += '\n' + '@else'
            for line in self.else_block:
                result += '\n' + prefix_every_line(line.instruction_tree(include_empty), '  ')
        result += '\n' + '@end'
        return result

    def set_context(self, context):
        self.context = context
        for elif_instruciton in self.elif_instructions:
            elif_instruciton.set_context(context)


class IfDefDirective(IfDirective):
    type_name = "@ifdef"

    def __init__(self, identifier: IdentifierExpression):
        is_defined = isDefinedExpression(None, identifier)
        super().__init__(is_defined)


class IfnDefDirective(IfDirective):
    type_name = "@ifndef"

    def __init__(self, identifier: IdentifierExpression):
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
        for line in self.block:
            line.macro_arg_replacement(find, replace)

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


class MacroDirective(PreProcDirective):
    type_name = "@macro"

    def __init__(self, name: IdentifierExpression, args: List[IdentifierExpression]):
        super().__init__()
        self.name = name
        self.args = args
        self.block = []

    def __str__(self):
        result = "@macro " + str(self.name)
        if self.args:
            result += ' ' + comma_seperated_list(self.args)

        return result

    def macro_arg_replacement(self, find, replace):
        # Replace in name:
        self.name.macro_arg_replacement(find, replace, must_be_identifier=True)

        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace, must_be_identifier=True)

    def expand(self, expansion_args):

        for arg in self.args:
            if not arg.eval_identifier().startswith('$'):
                raise ParsingException("Macro expansion argument identifiers must start with '$'")

        want_args = len(self.args)
        have_args = len(expansion_args)
        if want_args != have_args:
            msg = "Expansion of macro %s expected %i arguments, got %i." % (self.name, want_args, have_args)
            raise EvalException(msg, file_id=self.file_id, line_id=self.line_id)

        # Generate block
        block = copy.deepcopy(self.block)

        for arg_identifier, arg_value in zip(self.args, expansion_args):
            for line in block:
                line.macro_arg_replacement(arg_identifier.eval_identifier(), arg_value)

        return block

    def instruction_tree(self, include_empty=False):
        result = str(self)
        for line in self.block:
            result += '\n' + prefix_every_line(line.instruction_tree(include_empty), '  ')
        result += '\n' + '@end'
        return result

    def is_block_delimiter(self):
        return True


class MacroExpansionDirective(PreProcDirective):
    type_name = "Macro expansion"

    def __init__(self, labels: List[IdentifierExpression], macro_name: IdentifierExpression, args: List[Expression]):
        super().__init__()
        self.labels = labels
        self.macro_name = macro_name
        self.args = args

    def __str__(self):
        result = ""
        if self.labels:
            result += comma_seperated_list(self.labels) + ': '
        result += str(self.macro_name)
        if self.args:
            result += ' ' + comma_seperated_list(self.args)
        return result

    def macro_arg_replacement(self, find, replace):
        # Replace in labels:
        for label in self.labels:
            label.macro_arg_replacement(find, replace, must_be_identifier=True)

        # Replace in arguments:
        for arg in self.args:
            arg.macro_arg_replacement(find, replace)

    def retrieve_macro(self, context):
        try:
            return context.get_macro(self.macro_name.eval_identifier())
        except LocatedException as exc:
            exc.decorate_error_col(self.macro_name.error_col)
            raise exc

class ForLoopDirective(PreProcDirective):
    type_name = "@for"

    def __init__(self, index_name: IdentifierExpression, start_val: Expression, condition: Expression,
                 update: Expression):
        super().__init__()
        self.index_name = index_name
        self.start_val = start_val
        self.condition = condition
        self.update = update
        self.block = []

    def __str__(self):
        result = "@for %s, %s, %s, %s " % (
        str(self.index_name), str(self.start_val), str(self.condition), str(self.update))
        return result

    def macro_arg_replacement(self, find, replace):
        self.index_name.macro_arg_replacement(find, replace, must_be_identifier=True)
        self.start_val.macro_arg_replacement(find, replace)
        self.condition.macro_arg_replacement(find, replace)
        self.update.macro_arg_replacement(find, replace)
        for line in self.block:
            line.macro_arg_replacement(find, replace)

    def expand(self):
        result = []

        current_index = self.start_val.eval(self.context)

        max_iteration_count = 2 ** 14 + 1
        iteration_count = 0
        while True:
            # Prevent runaway loops
            iteration_count += 1
            if iteration_count > max_iteration_count:
                raise EvalException("Runaway for loop!", line_id=self.line_id, file_id=self.file_id)

            # Generate a numerical literal from current index
            current_index_literal = NumLiteralExpression(None, str(current_index))

            # Check that condition still holds:
            condition_copy = copy.deepcopy(self.condition)
            condition_copy.macro_arg_replacement(self.index_name.eval_identifier(), current_index_literal)
            if not condition_copy.eval(self.context):
                break

            # Create block with current index
            block_copy = copy.deepcopy(self.block)
            for line in block_copy:
                line.macro_arg_replacement(self.index_name.eval_identifier(), current_index_literal)
                result.append(line)

            # Update index
            update_copy = copy.deepcopy(self.update)
            update_copy.macro_arg_replacement(self.index_name.eval_identifier(), current_index_literal)
            current_index = update_copy.eval(self.context)

        return result

    def instruction_tree(self, include_empty=False):
        result = str(self)
        for line in self.block:
            result += '\n' + prefix_every_line(line.instruction_tree(include_empty), '  ')
        result += '\n' + '@end'
        return result

    def is_block_delimiter(self):
        return True


class EndDirective(PreProcDirective):
    type_name = "@end"

    def __init__(self):
        super().__init__()

    def __str__(self):
        return '@end'

    def is_block_delimiter(self):
        return True
