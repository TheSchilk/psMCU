from BaseInstruction import BaseInstruction
from BaseInstruction import RANGE_8BIT
from BaseInstruction import RANGE_9BIT
from BaseInstruction import RANGE_3BIT
from BaseInstruction import RANGE_14BIT
from Errors import ParsingException


class JMPInstruction(BaseInstruction):
    op_code = "JMP"
    binary_literal = 0xc000
    arg_count = 1
    arg_ranges = [RANGE_14BIT]
    arg_bit_widths = [14]
    arg_bit_shift = [0]


class CALLInstruction(BaseInstruction):
    op_code = "CALL"
    binary_literal = 0x8000
    arg_count = 1
    arg_ranges = [RANGE_14BIT]
    arg_bit_widths = [14]
    arg_bit_shift = [0]


class IFRMInstruction(BaseInstruction):
    op_code = "IFRM"
    binary_literal = 0x7000
    arg_count = 2
    arg_ranges = [RANGE_9BIT, RANGE_3BIT]
    arg_bit_widths = [9, 3]
    arg_bit_shift = [0, 9]


class IFSMInstruction(BaseInstruction):
    op_code = "IFSM"
    binary_literal = 0x6000
    arg_count = 2
    arg_ranges = [RANGE_9BIT, RANGE_3BIT]
    arg_bit_widths = [3, 9]
    arg_bit_shift = [0, 9]


class IFRAInstruction(BaseInstruction):
    op_code = "IFRA"
    binary_literal = 0x5000
    arg_count = 1
    arg_ranges = [RANGE_3BIT]
    arg_bit_widths = [3]
    arg_bit_shift = [9]


class IFSAInstruction(BaseInstruction):
    op_code = "IFSA"
    binary_literal = 0x4000
    arg_count = 1
    arg_ranges = [RANGE_3BIT]
    arg_bit_widths = [3]
    arg_bit_shift = [9]


class RTRNIInstruction(BaseInstruction):
    op_code = "RTRNI"
    binary_literal = 0x3000
    arg_count = 0


class ANDInstruction(BaseInstruction):
    op_code = "AND"
    binary_literal = 0x2800
    arg_count = 0


class ANDLInstruction(BaseInstruction):
    op_code = "ANDL"
    binary_literal = 0x2900
    arg_count = 1
    arg_ranges = [RANGE_8BIT]
    arg_bit_widths = [8]
    arg_bit_shift = [0]


class ORInstruction(BaseInstruction):
    op_code = "OR"
    binary_literal = 0x2A00
    arg_count = 0


class ORLInstruction(BaseInstruction):
    op_code = "ORL"
    binary_literal = 0x2B00
    arg_count = 1
    arg_ranges = [RANGE_8BIT]
    arg_bit_widths = [8]
    arg_bit_shift = [0]


class XORInstruction(BaseInstruction):
    op_code = "XOR"
    binary_literal = 0x2c00
    arg_count = 0


class XORLInstruction(BaseInstruction):
    op_code = "XORL"
    binary_literal = 0x2d00
    arg_count = 1
    arg_ranges = [RANGE_8BIT]
    arg_bit_widths = [8]
    arg_bit_shift = [0]


class SVAInstruction(BaseInstruction):
    op_code = "SVA"
    binary_literal = 0x2400
    arg_count = 1
    arg_ranges = [RANGE_9BIT]
    arg_bit_widths = [9]
    arg_bit_shift = [0]


class SVBInstruction(BaseInstruction):
    op_code = "SVB"
    binary_literal = 0x2600
    arg_count = 1
    arg_ranges = [RANGE_9BIT]
    arg_bit_widths = [9]
    arg_bit_shift = [0]


class LDAInstruction(BaseInstruction):
    op_code = "LDA"
    binary_literal = 0x2000
    arg_count = 1
    arg_ranges = [RANGE_9BIT]
    arg_bit_widths = [9]
    arg_bit_shift = [0]


class LDBInstruction(BaseInstruction):
    op_code = "LDB"
    binary_literal = 0x2200
    arg_count = 1
    arg_ranges = [RANGE_9BIT]
    arg_bit_widths = [9]
    arg_bit_shift = [0]


class LITAInstruction(BaseInstruction):
    op_code = "LITA"
    binary_literal = 0x1c00
    arg_count = 1
    arg_ranges = [RANGE_8BIT]
    arg_bit_widths = [8]
    arg_bit_shift = [0]


class LITBInstruction(BaseInstruction):
    op_code = "LITB"
    binary_literal = 0x1e00
    arg_count = 1
    arg_ranges = [RANGE_8BIT]
    arg_bit_widths = [8]
    arg_bit_shift = [0]


class SHFTRInstruction(BaseInstruction):
    op_code = "SHFTR"
    binary_literal = 0x1A80
    arg_count = 0


class SHFTRLInstruction(BaseInstruction):
    op_code = "SHFTRL"
    binary_literal = 0x1B80
    arg_count = 1
    arg_ranges = [RANGE_3BIT]
    arg_bit_widths = [3]
    arg_bit_shift = [0]


class SHFTLInstruction(BaseInstruction):
    op_code = "SHFTL"
    binary_literal = 0x1a00
    arg_count = 0


class SHFTLLInstruction(BaseInstruction):
    op_code = "SHFTLL"
    binary_literal = 0x1b00
    arg_count = 1
    arg_ranges = [RANGE_3BIT]
    arg_bit_widths = [3]
    arg_bit_shift = [0]


class ADDInstruction(BaseInstruction):
    op_code = "ADD"
    binary_literal = 0x1800
    arg_count = 0


class ADDLAInstruction(BaseInstruction):
    op_code = "ADDLA"
    binary_literal = 0x1900
    arg_count = 1
    arg_ranges = [RANGE_8BIT]
    arg_bit_widths = [8]
    arg_bit_shift = [0]


class ADDLBInstruction(BaseInstruction):
    op_code = "ADDLB"
    binary_literal = 0x3B00
    arg_count = 1
    arg_ranges = [RANGE_8BIT]
    arg_bit_widths = [8]
    arg_bit_shift = [0]


class SVDPInstruction(BaseInstruction):
    op_code = "SVDP"
    binary_literal = 0x1700
    arg_count = 0


class SVDRInstruction(BaseInstruction):
    op_code = "SVDR"
    binary_literal = 0x1600
    arg_count = 0


class LDDPInstruction(BaseInstruction):
    op_code = "LDDP"
    binary_literal = 0x1500
    arg_count = 0


class LDDRInstruction(BaseInstruction):
    op_code = "LDDR"
    binary_literal = 0x1400
    arg_count = 0


class CPYInstruction(BaseInstruction):
    op_code = "CPY"
    binary_literal = 0x1200
    arg_count = 0


class NOTAInstruction(BaseInstruction):
    op_code = "NOTA"
    binary_literal = 0x1000
    arg_count = 0


class COMPBInstruction(BaseInstruction):
    op_code = "COMPB"
    binary_literal = 0x0e00
    arg_count = 0


class SUBInstruction(BaseInstruction):
    op_code = "SUB"
    binary_literal = 0x0c00
    arg_count = 0


class RTRNInstruction(BaseInstruction):
    op_code = "RTRN"
    binary_literal = 0x0a00
    arg_count = 0


class POPAInstruction(BaseInstruction):
    op_code = "POPA"
    binary_literal = 0x0800
    arg_count = 0


class PUSHAInstruction(BaseInstruction):
    op_code = "PUSHA"
    binary_literal = 0x0600
    arg_count = 0

class POPBInstruction(BaseInstruction):
    op_code = "POPB"
    binary_literal = 0x3400
    arg_count = 0


class PUSHBInstruction(BaseInstruction):
    op_code = "PUSHB"
    binary_literal = 0x3200
    arg_count = 0

class POPMInstruction(BaseInstruction):
    op_code = "POPM"
    binary_literal = 0x3800
    arg_count = 1
    arg_ranges = [RANGE_9BIT]
    arg_bit_widths = [9]
    arg_bit_shift = [0]


class PUSHMInstruction(BaseInstruction):
    op_code = "PUSHM"
    binary_literal = 0x3600
    arg_count = 1
    arg_ranges = [RANGE_9BIT]
    arg_bit_widths = [9]
    arg_bit_shift = [0]


class SWPInstruction(BaseInstruction):
    op_code = "SWP"
    binary_literal = 0x0400
    arg_count = 0


class HALTInstruction(BaseInstruction):
    op_code = "HALT"
    binary_literal = 0x0200
    arg_count = 0


class NOPInstruction(BaseInstruction):
    op_code = "NOP"
    binary_literal = 0x0000
    arg_count = 0


# Generate a Dict of all instructions by listing the sub-classes of the BaseInstruction Class:
instruction_set = {}

for instruction_class in BaseInstruction.__subclasses__():
    instruction_set[instruction_class.op_code] = instruction_class


def generate_instruction(line):
    try:
        return instruction_set[line.op_code](line)
    except KeyError:
        raise ParsingException(line, "Unknown Instruction \'" + line.op_code + "\'")
