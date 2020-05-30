from Errors import ParsingException
import TextParsing

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


    def __init__(self, instruction_line):
        self.args = []

        # Double Check OpCode, should never fail as it is checked when the instruction is selected
        if not self.op_code == instruction_line.op:
            raise Exception()

        self.instruction_line = instruction_line

        self.check_arg_count()  # Make sure the correct number of arguments was supplied

        self.parse_args()  # Parse arguments into number, check if they are in the correct range

        self.binary = self.generate_binary()

    def __str__(self):
        return "(Inst: " + self.op_code + " " + str(self.instruction_line.args) + " = " + str(self.binary) \
               + " )"

    def check_arg_count(self):
        if not len(self.instruction_line.args) == self.arg_count:
            raise ParsingException(self.instruction_line.context, "Instruction " + self.instruction_line.op +
                                   " excepted " + str(self.arg_count) + "arguments, but got "
                                   + str(len(self.instruction_line.args)))

    def generate_binary(self):
        num = self.binary_literal
        for i in range(0,len(self.args)):
            num = num | (self.args[i] << self.arg_bit_shift[i])
        return num.to_bytes(2, byteorder='big')

    def parse_args(self):
        instr_line = self.instruction_line
        for i in range(0, len(instr_line.args)):
            self.args.append(TextParsing.parse_argument(instr_line.context, instr_line.args[i], self.arg_ranges[i],
                                                        self.arg_bit_widths[i]))
