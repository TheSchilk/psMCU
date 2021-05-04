from Instruction import *
from Errors import ParsingException
import sys


class JMPInstruction(Instruction):
    op_code = "JMP"
    binary_literal = 0xc000
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 14, 'bit shift': 0, 'min': MIN_14b_UNSIGNED, 'max': MAX_14b_UNSIGNED},
    ]


class CALLInstruction(Instruction):
    op_code = "CALL"
    binary_literal = 0x8000
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 14, 'bit shift': 0, 'min': MIN_14b_UNSIGNED, 'max': MAX_14b_UNSIGNED},
    ]


class IFRMInstruction(Instruction):
    op_code = "IFRM"
    binary_literal = 0x7000
    arg_count = 2
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
        {'name': 'bit', 'bit width': 3, 'bit shift': 9, 'min': MIN_3b_UNSIGNED, 'max': MAX_3b_UNSIGNED},
    ]


class IFSMInstruction(Instruction):
    op_code = "IFSM"
    binary_literal = 0x6000
    arg_count = 2
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
        {'name': 'bit', 'bit width': 3, 'bit shift': 9, 'min': MIN_3b_UNSIGNED, 'max': MAX_3b_UNSIGNED},
    ]


class IFRAInstruction(Instruction):
    op_code = "IFRA"
    binary_literal = 0x5100
    arg_count = 1
    arg_setups = [
        {'name': 'bit', 'bit width': 3, 'bit shift': 9, 'min': MIN_3b_UNSIGNED, 'max': MAX_3b_UNSIGNED},
    ]


class IFSAInstruction(Instruction):
    op_code = "IFSA"
    binary_literal = 0x4100
    arg_count = 1
    arg_setups = [
        {'name': 'bit', 'bit width': 3, 'bit shift': 9, 'min': MIN_3b_UNSIGNED, 'max': MAX_3b_UNSIGNED},
    ]


class RTRNInstruction(Instruction):
    op_code = "RTRN"
    binary_literal = 0x3700
    arg_count = 0


class RTRNIInstruction(Instruction):
    op_code = "RTRNI"
    binary_literal = 0x3600
    arg_count = 0


class POPAInstruction(Instruction):
    op_code = "POPA"
    binary_literal = 0x3900
    arg_count = 0


class POPBInstruction(Instruction):
    op_code = "POPB"
    binary_literal = 0x3B00
    arg_count = 0


class PUSHAInstruction(Instruction):
    op_code = "PUSHA"
    binary_literal = 0x3800
    arg_count = 0


class PUSHBInstruction(Instruction):
    op_code = "PUSHB"
    binary_literal = 0x3A00
    arg_count = 0


class GROWInstruction(Instruction):
    op_code = "GROW"
    binary_literal = 0x3500
    arg_count = 1
    arg_setups = [
        {'name': 'offset', 'bit width': 8, 'bit shift': 0, 'min': 0, 'max': MAX_8b_UNSIGNED},
    ]


class SHRINKInstruction(Instruction):
    op_code = "SHRINK"
    binary_literal = 0x3400
    arg_count = 1
    arg_setups = [
        {'name': 'offset', 'bit width': 8, 'bit shift': 0, 'min': MIN_9b_SIGNED, 'max': -1},
    ]


class STLAInstruction(Instruction):
    op_code = "STLA"
    binary_literal = 0x3100
    arg_count = 1
    arg_setups = [
        {'name': 'offset', 'bit width': 8, 'bit shift': 0, 'min': MIN_9b_SIGNED, 'max': -1},
    ]


class STLBInstruction(Instruction):
    op_code = "STLB"
    binary_literal = 0x3300
    arg_count = 1
    arg_setups = [
        {'name': 'offset', 'bit width': 8, 'bit shift': 0, 'min': MIN_9b_SIGNED, 'max': -1},
    ]


class STSAInstruction(Instruction):
    op_code = "STSA"
    binary_literal = 0x3000
    arg_count = 1
    arg_setups = [
        {'name': 'size', 'bit width': 8, 'bit shift': 0, 'min': MIN_9b_SIGNED, 'max': -1},
    ]


class STSBInstruction(Instruction):
    op_code = "STSB"
    binary_literal = 0x3200
    arg_count = 1
    arg_setups = [
        {'name': 'size', 'bit width': 8, 'bit shift': 0, 'min': MIN_9b_SIGNED, 'max': -1},
    ]


class POPMInstruction(Instruction):
    op_code = "POPM"
    binary_literal = 0x2E00
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
    ]


class PUSHMInstruction(Instruction):
    op_code = "PUSHM"
    binary_literal = 0x2600
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
    ]


class COMPBInstruction(Instruction):
    op_code = "COMPB"
    binary_literal = 0x2400
    arg_count = 0


class COMPBCInstruction(Instruction):
    op_code = "COMPBC"
    binary_literal = 0x2C00
    arg_count = 0


class ADDLBInstruction(Instruction):
    op_code = "ADDLB"
    binary_literal = 0x2500
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class ADDLBCInstruction(Instruction):
    op_code = "ADDLBC"
    binary_literal = 0x2D00
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class ADDInstruction(Instruction):
    op_code = "ADD"
    binary_literal = 0x2200
    arg_count = 0


class ADDCInstruction(Instruction):
    op_code = "ADDC"
    binary_literal = 0x2A00
    arg_count = 0


class ADDLAInstruction(Instruction):
    op_code = "ADDLA"
    binary_literal = 0x2300
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class ADDLACInstruction(Instruction):
    op_code = "ADDLAC"
    binary_literal = 0x2B00
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class SUBInstruction(Instruction):
    op_code = "SUB"
    binary_literal = 0x2000
    arg_count = 0


class SUBCInstruction(Instruction):
    op_code = "SUBC"
    binary_literal = 0x2800
    arg_count = 0


class SUBLInstruction(Instruction):
    op_code = "SUBL"
    binary_literal = 0x2100
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class SUBLCInstruction(Instruction):
    op_code = "SUBLC"
    binary_literal = 0x2900
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class ANDInstruction(Instruction):
    op_code = "AND"
    binary_literal = 0x1800
    arg_count = 0


class ANDLInstruction(Instruction):
    op_code = "ANDL"
    binary_literal = 0x1900
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class ORInstruction(Instruction):
    op_code = "OR"
    binary_literal = 0x1A00
    arg_count = 0


class ORLInstruction(Instruction):
    op_code = "ORL"
    binary_literal = 0x1B00
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class XORInstruction(Instruction):
    op_code = "XOR"
    binary_literal = 0x1c00
    arg_count = 0


class XORLInstruction(Instruction):
    op_code = "XORL"
    binary_literal = 0x1d00
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class SHFTRInstruction(Instruction):
    op_code = "SHFTR"
    binary_literal = 0x1680
    arg_count = 0


class SHFTRLInstruction(Instruction):
    op_code = "SHFTRL"
    binary_literal = 0x1780
    arg_count = 1
    arg_setups = [
        {'name': 'shift', 'bit width': 3, 'bit shift': 0, 'min': MIN_3b_UNSIGNED, 'max': MAX_3b_UNSIGNED},
    ]


class SHFTLInstruction(Instruction):
    op_code = "SHFTL"
    binary_literal = 0x1600
    arg_count = 0


class SHFTLLInstruction(Instruction):
    op_code = "SHFTLL"
    binary_literal = 0x1700
    arg_count = 1
    arg_setups = [
        {'name': 'shift', 'bit width': 3, 'bit shift': 0, 'min': MIN_3b_UNSIGNED, 'max': MAX_3b_UNSIGNED},
    ]


class NOTAInstruction(Instruction):
    op_code = "NOTA"
    binary_literal = 0x1500
    arg_count = 0


class SVAInstruction(Instruction):
    op_code = "SVA"
    binary_literal = 0x1000
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
    ]


class SVBInstruction(Instruction):
    op_code = "SVB"
    binary_literal = 0x1200
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
    ]


class LDAInstruction(Instruction):
    op_code = "LDA"
    binary_literal = 0x0C00
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
    ]


class LDBInstruction(Instruction):
    op_code = "LDB"
    binary_literal = 0x0E00
    arg_count = 1
    arg_setups = [
        {'name': 'adr', 'bit width': 9, 'bit shift': 0, 'min': MIN_9b_UNSIGNED, 'max': MAX_9b_UNSIGNED},
    ]


class SVDRInstruction(Instruction):
    op_code = "SVDR"
    binary_literal = 0x0A00
    arg_count = 0


class SVDPInstruction(Instruction):
    op_code = "SVDP"
    binary_literal = 0x0B00
    arg_count = 0


class LDDRInstruction(Instruction):
    op_code = "LDDR"
    binary_literal = 0x0800
    arg_count = 0


class LDDPInstruction(Instruction):
    op_code = "LDDP"
    binary_literal = 0x0900
    arg_count = 0


class LITAInstruction(Instruction):
    op_code = "LITA"
    binary_literal = 0x0400
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class LITBInstruction(Instruction):
    op_code = "LITB"
    binary_literal = 0x0600
    arg_count = 1
    arg_setups = [
        {'name': 'literal', 'bit width': 8, 'bit shift': 0, 'min': MIN_8b_SIGNED, 'max': MAX_8b_UNSIGNED},
    ]


class CPYInstruction(Instruction):
    op_code = "CPY"
    binary_literal = 0x0300
    arg_count = 0


class SWPInstruction(Instruction):
    op_code = "SWP"
    binary_literal = 0x0200
    arg_count = 0


class HALTInstruction(Instruction):
    op_code = "HALT"
    binary_literal = 0x0100
    arg_count = 0


class NOPInstruction(Instruction):
    op_code = "NOP"
    binary_literal = 0x0000
    arg_count = 0


# Generate a Dict of all instructions by listing the sub-classes of the BaseInstruction Class:
instruction_set = {}

for instruction_class in Instruction.__subclasses__():
    # Sanity check that there are no duplicate op-codes:
    if instruction_class.op_code in instruction_set.keys():
        print("Duplicate op-code @ "+str(instruction_class.op_code)+"!")
        sys.exit(1)

    # # Sanity check that there are no duplicate binary literals:
    # for comparison in instruction_set.values():
    #     if comparison.binary_literal == instruction_class.binary_literal:
    #         print("Duplicate binary-literal @ " + str(instruction_class.op_code) + "!")
    #         sys.exit(1)

    instruction_set[instruction_class.op_code] = instruction_class


def generate_instruction(line):
    try:
        return instruction_set[line.op_code](line)
    except KeyError:
        raise ParsingException(line, "Unknown Instruction \'" + line.op_code + "\'")
