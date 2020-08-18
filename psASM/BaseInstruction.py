from Errors import ParsingException
from Errors import ArgumentRangeException
import re


RANGE_14BIT = range(0, 1 << 14)
RANGE_9BIT = range(0, 1 << 9)
RANGE_8BIT = range(0, 1 << 8)
RANGE_3BIT = range(0, 1 << 3)


class BaseInstruction:
    op_code = None  # Overwritten by all sub-classes
    binary_literal = 0x0
    arg_count = 0  # TODO don't need to define here? Stop ide warnings?
    arg_ranges = []
    arg_bit_widths = []
    arg_bit_shift = []

    def __init__(self, line):
        self.args = []

        # Double Check OpCode, should never fail as it is checked when the instruction is selected
        if not self.op_code == line.op_code:
            raise Exception()

        self.check_arg_count(line)  # Make sure the correct number of arguments was supplied

        self.parse_args(line)  # Parse arguments into number, check if they are in the correct range

        self.binary = self.generate_binary()

    def __str__(self):
        return "(Inst: " + self.op_code + " " + str(self.args) + " = " + str(self.binary) + ")"

    def check_arg_count(self, line):
        if not len(line.args) == self.arg_count:
            raise ParsingException(line, "Instruction " + line.op_code +
                                   " excepted " + str(self.arg_count) + " arguments, but got "
                                   + str(len(line.args)))

    def generate_binary(self):
        num = self.binary_literal
        for i in range(0, len(self.args)):
            num = num | (self.args[i] << self.arg_bit_shift[i])
        return num.to_bytes(2, byteorder='big')

    def parse_args(self, line):
        for arge in enumerate(line.args):
            index, arg = arge

            # Check if this is a hex value:
            if re.fullmatch(r'^0[xX][0-9a-fA-F]+$', arg):
                # Convert to number
                num = int(arg, 16)

                # Confirm that number is in the valid range:
                if num not in self.arg_ranges[index]:
                    raise ArgumentRangeException(line, num, self.arg_ranges[index])

                self.args.append(num)
                continue

            # Check if this is a binary value:
            if re.fullmatch(r'^0[bB][01]+$', arg):
                # Convert to number
                num = int(arg, 2)

                # Confirm that number is in the valid range:
                if num not in self.arg_ranges[index]:
                    raise ArgumentRangeException(line, num, self.arg_ranges[index])

                self.args.append(num)
                continue

            # Check if this is a unsigned int:
            if re.fullmatch(r'^[0-9]+$', arg):
                # Convert to number
                num = int(arg, 10)

                # Confirm that number is in the valid range:
                if num not in self.arg_ranges[index]:
                    raise ArgumentRangeException(line, num, self.arg_ranges[index])

                self.args.append(num)
                continue

            # Check if this is a signed int:
            if re.fullmatch(r'^[+-][0-9]+$', arg):
                raise Exception(" Signed numbers not Yet implemented :(")

            raise ParsingException(line, "Could not decode argument \'" + str(arg) + "\'. If it is a constant, " +
                                   "ensure it is defined.")
