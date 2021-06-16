import argparse
import sys


def parse_args(args):
    parser = argparse.ArgumentParser(prog="psASM.py", description="psASM Assembler for psMCU.")

    parser.add_argument('input_file', help='Input psASM/psOBJ file.')
    parser.add_argument('-o', required=False, help='Output name.')

    parser.add_argument('-B', required=False, action="store_true", help='Generate binary file. (Default if no other output is enabled)')
    parser.add_argument('-O', required=False, action="store_true", help='Generate psOBJ file.')
    parser.add_argument('-L', required=False, action="store_true", help='Generate logisim file.')
    parser.add_argument('-S', required=False, action="store_true", help='Generate split binary files.')
    parser.add_argument('-M', required=False, action="store_true", help='Generate map file.')
    parser.add_argument('-D', required=False, action="store_true", help='Generate definitions file.')

    parser.add_argument('-U', required=False, action="store_true", help='Report memory usage.')

    parser.add_argument('-w', required=False, action="store_true", help='Strip line whitespace/indents in information files.')
    parser.add_argument('-c', required=False, action="store_true", help='Strip line comments in information files.')

    parser.add_argument('-f', required=False, action="store_true", help="Do not add program footer")

    parsed_args = parser.parse_args(args)

    # Sanity check input file extension
    if parsed_args.input_file.endswith('.psOBJ'):
        # If this is already a .psOBJ file, it makes no sense to generate another .psOBJ file:
        if parsed_args.O:
            print('Error: Cannot generate a .psOBJ file from a .psOBJ file!')
            sys.exit(-1)
    elif not parsed_args.input_file.endswith('.psASM'):
        print('Error: Input file is neither .psASM or .psOBJ file!')
        sys.exit(-1)

    # If no output file is selected, select binary output
    if not (parsed_args.B or parsed_args.O or parsed_args.L or parsed_args.S or parsed_args.M or
            parsed_args.D or parsed_args.U):
        parsed_args.B = True

    return parsed_args
