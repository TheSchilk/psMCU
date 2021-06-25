from Util.Errors import InstructionException, ParsingException
from Instructions.InstructionSet import instruction_set


def bit_mask(width):
    return (1 << width) - 1


class Instruction:
    op_code = None  # Overwritten by all sub-classes
    binary_literal = 0x0  # Overwritten by all sub-classes
    arg_count = 0  # Overwritten by all sub-classes
    arg_setups = []

    def __init__(self, inst, args, file_id, line_id):
        self.args = []
        self.file_id = file_id
        self.line_id = line_id

        # Convert this into the correct sub-class:
        try:
            self.__class__ = instruction_set[inst]
        except KeyError:
            # Should never happen - the parser now tokenizes instructions. But let's at least
            # fail nicely..
            raise ParsingException("Unrecognised instruction '%s' - how did this get past the parser?"
                                   % inst, file_id=file_id, line_id=line_id)

        # Make sure the correct number of arguments was supplied
        self.check_arg_count()
        # Make sure all args will fit.
        self.check_arg_value()
        # Generate binary instruction
        self.binary = self.generate_binary()

    def __str__(self):
        return "(Inst: " + self.op_code + " " + str(self.args) + " = " + str(self.binary) + ")"

    def check_arg_count(self):
        if not len(self.args) == self.arg_count:
            error = "Instruction %s expected %i arguments, but got %i." % (self.op_code, self.arg_count, len(self.args))
            raise InstructionException(error, file_id=self.file_id, line_id=self.line_id)

    def check_arg_value(self):
        for index, arg in enumerate(self.args):
            arg_setup = self.arg_setups[index]

            # Make sure that the number is in the correct range:
            if arg > arg_setup['max'] or arg < arg_setup['min']:
                raise

            self.args.append(arg)

    def generate_binary(self):
        # Start with literal and insert all arguments
        out = self.binary_literal
        for index, arg in enumerate(self.args):
            # First, mask arg (Needed for negative args)
            arg = arg & bit_mask(self.arg_setups[index]['bit width'])
            # Then insert it into the instruction
            out = out | (arg << self.arg_setups[index]['bit shift'])
        return out.to_bytes(2, byteorder='big')
