import argparse
import sys
import re
import os


def parse_args(args):
    args = args.copy()
    args.pop(0)  # Get rid of path

    parser = argparse.ArgumentParser(prog="psASM.py", description="psASM Assembler for psMCU.")

    parser.add_argument('input_file', help='Input psASM/psOBJ file.')
    parser.add_argument('-o', '--output_name', required=False, help='Output name.')

    output_format = parser.add_argument_group("Output format.")

    output_format.add_argument('-B', '--gen_bin', required=False, action="store_true", help='Generate binary file. (Default if no other output is enabled)')
    output_format.add_argument('-O', '--gen_psOBJ', required=False, action="store_true", help='Generate psOBJ file.')
    output_format.add_argument('-L', '--gen_logisim', required=False, action="store_true", help='Generate logisim file.')
    output_format.add_argument('-S', '--gen_split', required=False, action="store_true", help='Generate split binary files.')
    output_format.add_argument('-M', '--gen_map', required=False, action="store_true", help='Generate map file.')
    output_format.add_argument('-U', '--gen_usage', required=False, action="store_true", help='Report memory usage.')
    output_format.add_argument('-A', '--gen_annotated', required=False, action="store_true", help='Generate an annotated assembly program.')
    # parser.add_argument('-?', '--gen_defs', required=False, action="store_true", help='Generate definitions file.')

    parser.add_argument('-D', '--define', required=False, action="append", type=str,
                        help='Add a global definition. Can be either just a name, or name and value (-D One=1)')

    parser.add_argument('-w', '--no_ws', required=False, action="store_true", help='Strip line whitespace/indents in information files.')
    parser.add_argument('-c', '--no_comments', required=False, action="store_true", help='Strip line comments in information files.')

    parser.add_argument('-s', '--no_startup', required=False, action="store_true", help="Do not add program startup section.")
    parser.add_argument('-f', '--no_footer', required=False, action="store_true", help="Do not add program footer")

    parsed_args = vars(parser.parse_args(args))

    # Check what kind of input file was given:
    if parsed_args['input_file'].endswith('.psOBJ'):
        parsed_args['input_type'] = 'psOBJ'
    elif parsed_args['input_file'].endswith('.psASM'):
        parsed_args['input_type'] = 'psASM'
    else:
        print('Error: Input file is neither .psASM nor .psOBJ file!')
        sys.exit(-1)

    # Sanity check input file extension
    if parsed_args['input_type'] == 'psOBJ':
        # If this is already a .psOBJ file, it makes no sense to generate another .psOBJ file:
        if parsed_args['gen_psOBJ']:
            print('Error: Cannot generate a .psOBJ file from a .psOBJ file!')
            sys.exit(-1)

    # Ensure 'define' is an empty list if no defines were passed.
    if not parsed_args['define']:
        parsed_args['define'] = []

    # Validate and reformat defines:
    defines = []
    for define in parsed_args['define']:
        if not re.match(r"^[a-zA-Z][a-zA-Z0-9_\-]*(=((0b[01]+)|(0x[0-9a-fA-F]+)|([0-9]+)))?$", define):
            print("Error: Malformed definition %s passed via -D flag.")
            sys.exit()

        if '=' in define:
            define = define.split('=')
            name = define[0]
            value = int(define[1], 0)
        else:
            name = define
            value = None

        defines.append((name, value))

    # Replace defines with formatted name/value lists
    parsed_args['define'] = defines

    # If no output name was given, use same as input:
    if parsed_args['output_name'] is None:
        parsed_args['output_name'] = os.path.splitext(parsed_args['input_file'])[0]

    # If no output file is selected, select binary output.
    default_output = 'gen_bin'
    # First, find all 'generate_output' flags:
    output_flags = [k for k in list(parsed_args.keys()) if k.startswith('gen_')]
    # See if any are set:
    output_selected = False
    for f in output_flags:
        output_selected = output_selected or parsed_args[f]
    # Otherwise, select default output:
    if not output_selected:
        parsed_args[default_output] = True

    return parsed_args
