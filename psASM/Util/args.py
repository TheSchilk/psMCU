import argparse
import sys
import re
import os
import Util.Log
from Util.Log import log


def parse_args(args):

    parser = argparse.ArgumentParser(prog="psASM.py", description="psASM Assembler for psMCU.")

    parser.add_argument('input_file', help='input psASM/psOBJ file')
    parser.add_argument('-o', '--out', required=False, metavar='NAME', help='output name')

    output_format = parser.add_argument_group("output format selection")

    output_format.add_argument('-B', '--gen_bin', required=False, action="store_true", help='generate binary file (Default if no other output is enabled)')
    output_format.add_argument('-O', '--gen_psOBJ', required=False, action="store_true", help='generate psOBJ file')
    output_format.add_argument('-L', '--gen_logisim', required=False, action="store_true", help='generate logisim file')
    output_format.add_argument('-S', '--gen_split', required=False, action="store_true", help='generate split binary files')
    output_format.add_argument('-M', '--gen_map', required=False, action="store_true", help='generate map file')
    output_format.add_argument('-U', '--gen_usage', required=False, action="store_true", help='report memory usage')
    output_format.add_argument('-A', '--gen_annotated', required=False, action="store_true", help='generate an annotated assembly program')
    # parser.add_argument('-?', '--gen_defs', required=False, action="store_true", help='generate definitions file.')

    parser.add_argument('-D', '--define', required=False, action="append", type=str, metavar='DEF',
                        help='add a global definition, can be either just a name (-D one) or name and value (-D one=1)')

    parser.add_argument('-v', '--verbose', action='count', default=0, help='increase logging verbosity level')

    parser.add_argument('-w', '--no_ws', required=False, action="store_true", help='strip line whitespace/indents in information files')
    parser.add_argument('-c', '--no_comments', required=False, action="store_true", help='strip line comments in information files')

    parser.add_argument('-s', '--no_startup', required=False, action="store_true", help="do not add program startup section")
    parser.add_argument('-f', '--no_footer', required=False, action="store_true", help="do not add program footer")

    parsed_args = vars(parser.parse_args(args))

    # Setup logger
    Util.Log.setup(parsed_args)

    # Check what kind of input file was given:
    if parsed_args['input_file'].endswith('.psOBJ'):
        log(1, "Args: Got a .psOBJ file")
        parsed_args['input_type'] = 'psOBJ'
    elif parsed_args['input_file'].endswith('.psASM'):
        log(1, "Args: Got a .psASM file")
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
        log(1, "Args: No argument defines given")
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
            log(1, "Args: Defined (via argument) '%s' as %i" % (name, value))
        else:
            name = define
            value = None
            log(1, "Args: Defined (via argument) '%s'" % name)

        defines.append((name, value))

    # Replace defines with formatted name/value lists
    parsed_args['define'] = defines

    # If no output name was given, use same as input:
    if parsed_args['out'] is None:
        parsed_args['out'] = os.path.splitext(parsed_args['input_file'])[0]
        log(1, "Args: No output name specified, using input name '%s'" % parsed_args['out'])

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
        log(1, "Args: No output format selecting, defaulting to binary (-B)")
        parsed_args[default_output] = True

    return parsed_args
