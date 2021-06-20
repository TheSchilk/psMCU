#!/usr/bin/env python3
import sys
from Util.args import parse_args
from Output import OutputGenerator
from Input.SourceFiles import SourceFiles
from Util.Errors import psASMException, ParsingException


def main(args):

    args = parse_args(args)
    try:
        if args.input_type == 'psASM':
            # If the input is a source file, parse, process, and assemble a psOBJ:
            source_files = SourceFiles.from_root_file(args.input_file)

            psOBJ = None

        else:
            # If the input is already a psOBJ, import it:
            psOBJ = None
    except FileNotFoundError as e:
        print("Error: File %s not found!" % e.filename)
        sys.exit(-1)
    except psASMException as e:
        print(e)
        sys.exit(-1)

    # Now, using this psOBJ, generate the requested output
    OutputGenerator.generate(args, psOBJ)


if __name__ == '__main__':
    main(sys.argv)
