#!/usr/bin/env python3
import sys
from Util.args import parse_args
from Util.Errors import psASMException, LocatedException

from Input.SourceFile import SourceFiles

from Parsing import Parser

from PreProc.PreProc import PreProc

from Output import OutputGenerator
from Output.psOBJ import psOBJ


def main(args):
    """Run the psASM Assembler."""
    # Get settings from cmdline arguments
    settings = parse_args(args)

    try:
        if settings['input_type'] == 'psASM':
            source_files = None
            try:
                # If the input is a source file, parse, process, and assemble a psOBJ:

                # Discover all needed source files:
                source_files = SourceFiles()
                source_files.add_from_root_file(settings['input_file'], settings)

                # Parse all source files:
                parsed_files = Parser.parse_source_files(source_files)

                # Run Pre-Processor:
                preproc = PreProc(source_files, parsed_files, settings)
                instruction_listing = preproc.process()

                # Package into a psOBJ
                obj = psOBJ(source_files, instruction_listing)

            except LocatedException as exc:
                exc.decorate_source_files(source_files)
                raise exc
        else:
            # If the input is already a psOBJ, import it:
            obj = psOBJ.from_file(settings)

        # Now, using this psOBJ, generate the requested output
        OutputGenerator.generate(settings, obj)

    except FileNotFoundError as exc:
        print("Error: File %s not found!" % exc.filename)
        return -1
    except psASMException as exc:
        print(exc)
        return -1

    return 0


if __name__ == '__main__':  # pragma: no cover
    console_args = sys.argv.copy()
    console_args.pop(0)  # Get rid of path
    sys.exit(main(console_args))
