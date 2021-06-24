#!/usr/bin/env python3
import sys
from Util.args import parse_args
from Util.Errors import psASMException, LocatedException
from Input.SourceFile import SourceFiles
import Parsing.Parser as Parser
from Output import OutputGenerator


def main(args):

    # Get settings from cmdline arguments
    settings = parse_args(args)

    try:
        if settings['input_type'] == 'psASM':
            try:
                # If the input is a source file, parse, process, and assemble a psOBJ:
                source_files = None

                # Discover all needed source files:
                source_files = SourceFiles.from_root_file(settings['input_file'], settings)

                # Parse all source files:
                parsed_files = Parser.parse_source_files(source_files)

                psOBJ = None
            except LocatedException as e:
                e.decorate_source_files(source_files)
                raise e
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
    OutputGenerator.generate(settings, psOBJ)


if __name__ == '__main__':
    main(sys.argv)
