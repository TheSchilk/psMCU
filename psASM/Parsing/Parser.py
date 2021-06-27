from Input.SourceFile import SourceFile, SourceFiles

from Parsing.ParsedFile import ParsedFile, ParsedFiles
from Parsing.AntlrInterface import parse_line
import Parsing.Blocks as Blocks

from Util.Errors import LocatedException


def parse_source_files(source_files: SourceFiles):
    parsed_files = ParsedFiles()

    # Parse every file:
    for file in source_files:
        parsed_file = _parse_source_file(file)
        parsed_files.add_parsed_file(parsed_file)

    return parsed_files


def _parse_source_file(source_file: SourceFile):
    parsed_lines = []
    try:

        # First, parse every line:
        for line_id, source_line in enumerate(source_file):
            try:
                parsed_line = parse_line(source_line, source_file.file_id, line_id)
                parsed_lines.append(parsed_line)
            except LocatedException as e:
                e.decorate_line_id(line_id)
                raise e
        # Now, associate related lines:
        parsed_lines = Blocks.associate_lines(parsed_lines)

        # DEBUG
        for line in parsed_lines:
            print(line.instruction_tree())

    except LocatedException as e:
        e.decorate_file_id(source_file.file_id)
        raise e

    return ParsedFile(source_file.file_id, parsed_lines)
