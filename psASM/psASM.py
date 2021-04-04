#!/usr/bin/env python3
import sys
import argparse
import Output
from Namespace import Namespace
from Listing import Listing
from Errors import ParsingException
from Errors import DefinitionException
from Errors import ArgumentRangeException

# arg-parse:
parser = argparse.ArgumentParser(prog="psASM.py", description="psASM Assembler for psMCU.")
parser.add_argument('input_file', help='Input psASM file.')
parser.add_argument('-o', required=False, help='Output name.')
parser.add_argument('-L', required=False, action="store_true", help='Also generate Logisim file.')
parser.add_argument('-S', required=False, action="store_true", help='Also generate split binary files.')
parser.add_argument('-M', required=False, action="store_true", help='Also generate Map file.')
parser.add_argument('-w', required=False, action="store_true", help='Strip line whitespace/indents in map file.')
parser.add_argument('-c', required=False, action="store_true", help='Strip line comments in map file.')
cmdline_args = parser.parse_args()

# Parse and assemble program:
namespace = Namespace()
try:
    # Recursively parse files into a listing of lines and populate the Namespace
    listing = Listing(sys.argv[1], namespace)

    # Add the program header
    listing.add_header(namespace)

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
    sys.exit()
except DefinitionException as e:
    print(e)
    sys.exit()
except ArgumentRangeException as e:
    print(e)
    sys.exit()
except FileNotFoundError as e:
    print("File not found!")
    sys.exit()

# Generate Output Files

if cmdline_args.o is None:
    output_name = cmdline_args.input_file.rstrip('.psASM')
else:
    output_name = cmdline_args.o

# Generate Output Binary
Output.generate_bin(listing,output_name)

# Generate Split Binary
if cmdline_args.S:
    Output.generate_split_bin(listing, output_name)

# Generate LOGISIM file
if cmdline_args.L:
    Output.generate_logisim(listing, output_name)

# Generate Map file:
if cmdline_args.M:
    Output.generate_map(listing, output_name, cmdline_args.w, cmdline_args.c)

