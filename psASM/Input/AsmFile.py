import re
from Util.Errors import ParsingException
import Input.StdLib


def _is_include(text) -> bool:
    """Check if this file is a preprocessor include statement."""
    return bool(re.match(r'^\s*@include', text))


def _extract_include(text) -> str:
    """Extract the included file path from an include preproc directive."""
    # Get rid of any whitespace at the front or end
    text = text.strip()

    # Remove any comment at the end of the line, if there is any
    text = text.split('#', 1)[0]

    # Replace multiple spaces with single space, split on spaces
    text = re.sub(r'\s+', ' ', text)
    parts = text.strip().split(' ')

    # Reduce to string literal
    if len(parts) != 2:
        raise ParsingException("Malformed @include.")

    file_string = parts[1]

    # Validate file_string
    if not re.match(r'^\"\w+\.psASM\"$', file_string):
        raise ParsingException("Malformed @include file name.")

    file_name = file_string.replace('"', '')

    return file_name


class AsmFile:
    """A .psASM file."""

    def __init__(self, file_id, path, content=[], stdlib_file=False):
        self.file_id = file_id
        self.path = path
        self.content = content
        self.stdlib_file = stdlib_file

    @classmethod
    def from_file(cls, file_id, file_path):
        """Generate a AsmFile from a given path."""
        if Input.StdLib.is_stdlib_file(file_path):
            return cls.from_stdlib_file(file_id, file_path)
        else:
            asm_file = cls(file_id, file_path)
            with open(file_path, 'r') as file:
                for line_text in file:
                    asm_file.content.append(line_text)
            return asm_file

    @classmethod
    def from_stdlib_file(cls, file_id, stdlib_file):
        content = Input.StdLib.get_stdlib_file(stdlib_file)
        asm_file = cls(file_id, stdlib_file, stdlib_file=True, content=content)
        return asm_file

    def __len__(self):
        return len(self.content)

    def __getitem__(self, position):
        return self.content[position]

    def get_included_paths(self):
        included_paths = []

        for line_id, line in enumerate(self):
            try:
                if _is_include(line):
                    included_paths.append(_extract_include(line))

            except ParsingException as e:
                e.decorate_location(self.file_id, line_id)
                raise e

        return included_paths

    def append(self, text):
        self.content.append(text)
