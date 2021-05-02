from Errors import ParsingException
from Errors import ArgumentRangeException
import re

MIN_14b_UNSIGNED = 0
MAX_14b_UNSIGNED = (1 << 14) - 1
MIN_14b_SIGNED = -(1 << 14 - 1)
MAX_14b_SIGNED = (1 << 14 - 1) - 1

MIN_9b_UNSIGNED = 0
MAX_9b_UNSIGNED = (1 << 9) - 1
MIN_9b_SIGNED = -(1 << 9 - 1)
MAX_9b_SIGNED = (1 << 9 - 1) - 1

MIN_8b_UNSIGNED = 0
MAX_8b_UNSIGNED = (1 << 8) - 1
MIN_8b_SIGNED = -(1 << 8 - 1)
MAX_8b_SIGNED = (1 << 8 - 1) - 1

MIN_3b_UNSIGNED = 0
MAX_3b_UNSIGNED = (1 << 3) - 1
MIN_3b_SIGNED = -(1 << 3 - 1)
MAX_3b_SIGNED = (1 << 3 - 1) - 1


def bit_mask(width):
    return (1 << width) - 1


class Instruction:
    op_code = None  # Overwritten by all sub-classes
    binary_literal = 0x0  # Overwritten by all sub-classes
    arg_count = 0  # Overwritten by all sub-classes
    arg_setups = []

    def __init__(self, line):
        self.args = []

        self.line = line

        # Double Check OpCode, should never fail as it is checked when the instruction is selected
        if not self.op_code == line.op_code:
            raise Exception()

        self.check_arg_count()  # Make sure the correct number of arguments was supplied

        self.parse_args()  # Parse & verify that arguments are numbers in the correct range

        self.binary = self.generate_binary()

    def __str__(self):
        return "(Inst: " + self.op_code + " " + str(self.args) + " = " + str(self.binary) + ")"

    def check_arg_count(self):
        if not len(self.line.args) == self.arg_count:
            raise ParsingException(self.line, "Instruction " + self.line.op_code +
                                   " excepted " + str(len(self.line.args)) + " arguments, but got "
                                   + str(len(self.line.args)))

    def generate_binary(self):
        # Start with literal and insert all arguments
        out = self.binary_literal
        for index, arg in enumerate(self.args):
            # First, mask arg (Needed for negative args)
            arg = arg & bit_mask(self.arg_setups[index]['bit width'])
            # Then insert it into the instruction
            out = out | (arg << self.arg_setups[index]['bit shift'])
        return out.to_bytes(2, byteorder='big')

    def parse_args(self):
        for index, arg in enumerate(self.line.args):
            arg_setup = self.arg_setups[index]

            # Attempt to convert string to integer:
            try:
                arg = int(arg, 0)
            except ValueError:
                raise ParsingException(self.line, "Could not decode argument \'" + str(arg) + "\'. If it is a "
                                                                                              "constant, ensure it is"
                                                                                              " defined.")
            # Make sure that the number is in the correct range:
            if arg > arg_setup['max'] or arg < arg_setup['min']:
                raise ArgumentRangeException(self.line, arg, arg_setup)

            self.args.append(arg)
