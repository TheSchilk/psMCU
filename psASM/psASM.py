#!/usr/bin/env python3
import sys
import argparse
import Output
from Namespace import Namespace
from Listing import Listing
from Errors import ParsingException
from Errors import DefinitionException
from Errors import ArgumentRangeException


def main(args):
    # arg-parse:
    parser = argparse.ArgumentParser(prog="psASM.py", description="psASM Assembler for psMCU.")
    parser.add_argument('input_file', help='Input main psASM file.')
    parser.add_argument('-o', required=False, help='Output name.')
    parser.add_argument('-B', required=False, action="store_true", help='Generate binary file. (Default if no other output '
                                                                        'is enaled)')
    parser.add_argument('-L', required=False, action="store_true", help='Generate logisim file.')
    parser.add_argument('-S', required=False, action="store_true", help='Generate split binary files.')
    parser.add_argument('-M', required=False, action="store_true", help='Generate map file.')
    parser.add_argument('-D', required=False, action="store_true", help='Generate definitions file.')
    parser.add_argument('-U', required=False, action="store_true", help='Report memory usage.')
    parser.add_argument('-w', required=False, action="store_true", help='Strip line whitespace/indents in map file.')
    parser.add_argument('-c', required=False, action="store_true", help='Strip line comments in map file.')

    parser.add_argument('-f', required=False, action="store_true", help="Do not add program footer")

    cmdline_args = parser.parse_args(args)

    # Parse and assemble program:
    namespace = Namespace()
    try:
        # Recursively parse files into a listing of lines and populate the Namespace
        listing = Listing(cmdline_args.input_file, namespace)

        # Add the program header
        listing.add_header(namespace)

        # Add the program footer
        if not cmdline_args.f:
            listing.add_footer(namespace)

        # Now that the addresses of all instructions are fixed,
        # we can define all Labels in the namespace
        listing.define_labels(namespace)

        # Now we can recursively define all definitions
        namespace.recurse_definitions()

        # Now that everything in the namespace is defined,
        # We can insert everything in the Namespace into the program
        listing.insert_aliases(namespace)

        # We can now generate the binary instruction listing
        listing.generate_instructions()

    except ParsingException as e:
        print(e)
        sys.exit(1)
    except DefinitionException as e:
        print(e)
        sys.exit(1)
    except ArgumentRangeException as e:
        print(e)
        sys.exit(1)
    except FileNotFoundError as e:
        print("File not found!")
        sys.exit(1)

    # Generate Output Files
    if cmdline_args.o is None:
        output_name = cmdline_args.input_file.rstrip('.psASM')
    else:
        output_name = cmdline_args.o

    # Report memory usage:
    if cmdline_args.U:
        program_len = len(listing.Lines)
        usage = (program_len*100)/(2**14)
        print("Instruction ROM usage: %.2f%% (%i/%i)" % (usage, program_len, 2**14))

    # Generate binary (if selected or nothing else selected)
    if cmdline_args.B or not (cmdline_args.S or cmdline_args.L or cmdline_args.L or cmdline_args.M or cmdline_args.D or cmdline_args.U):
        Output.generate_bin(listing, output_name)

    # Generate split binary
    if cmdline_args.S:
        Output.generate_split_bin(listing, output_name)

    # Generate logisim file
    if cmdline_args.L:
        Output.generate_logisim(listing, output_name)

    # Generate map file:
    if cmdline_args.M:
        Output.generate_map(listing, output_name, cmdline_args.w, cmdline_args.c)

    # Generate definitions file
    if cmdline_args.D:
        Output.generate_definitions(namespace, output_name)


if __name__ == '__main__':
    args = sys.argv.copy()
    args.pop(0)  # Get rid of path
    main(args)
