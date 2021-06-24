import re
from Util.Errors import ParsingException, LocatedException
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
    if not re.match(r'^\"[\w\/\\]+\.psASM\"$', file_string):
        raise ParsingException("Malformed @include file name.")

    file_name = file_string.replace('"', '')

    return file_name


class SourceFile:
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

            except LocatedException as e:
                e.decorate_location(self.file_id, line_id)
                raise e

        return included_paths

    def append(self, text):
        self.content.append(text)


class SourceFiles:
    """The collection of all .psASM files that make up a program."""

    def __init__(self, files=[]):
        self.files = files

    @classmethod
    def from_root_file(cls, root_file_path, settings):
        """generate from a root file and all included files."""
        file_space = cls()
        paths_to_add = [root_file_path]

        # Unless no startup/footer is selected, ensure that the files are included:
        if not settings['no_startup']:
            paths_to_add.append(Input.StdLib.stdlib_startup_name)
        if not settings['no_footer']:
            paths_to_add.append(Input.StdLib.stdlib_footer_name)

        for path in paths_to_add:
            # Open this file and add it to the filespace:
            file = SourceFile.from_file(file_space.next_id(), path)
            file_space.add_file(file)

            # Look for any includes in this new file and include any
            # files that have not yet been included:
            try:
                include_paths = file.get_included_paths()
            except LocatedException as e:
                e.decorate_source_files(file_space)
                raise e

            for included_path in include_paths:
                if not file_space.contains_path(included_path):
                    paths_to_add.append(included_path)

        return file_space

    @classmethod
    def from_obj(cls, root_file_path):
        # TODO
        pass

    def __len__(self):
        return len(self.files)

    def __getitem__(self, position):
        return self.files[position]

    def contains_path(self, path):
        for file in self.files:
            # TODO improve path comparison: ./thisfile.psASM and thisfile.psASM would be classified as different
            if path == file.path:
                return True
        return False

    def next_id(self):
        return len(self.files)

    def add_file(self, file):
        self.files.append(file)

    def get_file_path(self, file_id):
        for file in self.files:
            if file.file_id == file_id:
                return file.path
        raise KeyError('File ID not found.')

    def location_str(self, file_id, line_id, col=None):
        file_path = self.get_file_path(file_id)
        result = ("%s:%i" % (file_path, line_id + 1))
        if col is not None:
            result += (":%i" % (col + 1))

        return result

    def line_text(self, file_id, line_id):
        file = self[file_id]
        return file.content[line_id]
