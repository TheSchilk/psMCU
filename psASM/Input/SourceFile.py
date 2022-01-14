import re
from Util.Errors import ParsingException, LocatedException, psOBJException, psASMFileException
from Util.Log import log
import Input.StdLib
import Output.internal_state


def _is_include(text) -> bool:
    """Check if this file is a preprocessor include statement."""
    return bool(re.match(r'^\s*@include\s', text))


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
    if not re.match(r'^\"[\w/\\]+\.psASM\"$', file_string):
        raise ParsingException("Malformed @include file name.")

    file_name = file_string.replace('"', '')

    return file_name


class SourceFile:
    """A .psASM file."""

    def __init__(self, file_id, path, content=None, stdlib_file=False):
        self.file_id = file_id
        self.path = path
        if content is None:
            self.content = []
        else:
            self.content = content
        self.stdlib_file = stdlib_file

    @classmethod
    def from_file(cls, file_id, file_path):
        """Generate a SourceFile from a given path."""
        if Input.StdLib.is_stdlib_file(file_path):
            result = cls.from_stdlib_file(file_id, file_path)
        else:
            result = cls(file_id, file_path)
            with open(file_path, 'r') as file:
                for line_text in file:
                    result.content.append(line_text)
        return result

    @ classmethod
    def from_stdlib_file(cls, file_id, stdlib_file):
        """Generate a SourceFile from an included stdlib file."""
        content = Input.StdLib.get_stdlib_file(stdlib_file)
        asm_file = cls(file_id, stdlib_file, stdlib_file=True, content=content)
        return asm_file

    @ classmethod
    def from_psOBJ_data(cls, data):
        file_id = data['file_id']
        path = data['path']
        stdlib_file = data['is_stdlib_file']
        content = []

        for line in data['content']:
            content.append(line)

        return cls(file_id, path, content, stdlib_file)

    def to_psOBJ_data(self):
        data = {}
        data['file_id'] = self.file_id
        data['path'] = self.path
        data['is_stdlib_file'] = self.stdlib_file
        data['content'] = self.content
        return data

    def __getitem__(self, index):
        return self.content[index]

    def __setitem__(self, key, value):
        self.content[key] = value

    def get_included_paths(self):
        """Return list of paths of files directly included in this file."""
        included_paths = []

        for line_id, line in enumerate(self.content):
            try:
                if _is_include(line):
                    result = (_extract_include(line), self.file_id, line_id)
                    included_paths.append(result)

            except LocatedException as exc:
                exc.decorate_location(self.file_id, line_id)
                raise exc

        return included_paths


class SourceFiles:
    """The collection of all .psASM files that make up a program."""

    def __init__(self, files=None):
        if files is None:
            self.files = []
        else:
            self.files = files

    def add_from_root_file(self, root_file_path, settings):
        """Add a root file and all included files."""
        paths_to_add = [(root_file_path, None, None)]

        # Unless no startup/footer is selected, ensure that the files are included:
        if not settings['no_startup']:
            paths_to_add.append((Input.StdLib.STDLIB_STARTUP_NAME, None, None))
        if not settings['no_footer']:
            paths_to_add.append((Input.StdLib.STDLIB_FOOTER_NAME, None, None))

        for path, from_file_id, from_line_id in paths_to_add:

            # Do not re-add a path multiple times
            if self.contains_path(path):
                log(1, "Input: Did not include %s, already included." % path)
                continue

            # Open this file and add it to the filespace:
            try:
                file = SourceFile.from_file(self.next_id(), path)
            except FileNotFoundError:
                exc = psASMFileException("Failed to open file '%s'!" % path)
                exc.decorate_location(from_file_id, from_line_id)
                raise exc

            self.add_file(file)

            # Look for any includes in this new file and include any
            # files that have not yet been included:
            include_paths = file.get_included_paths()

            for included_path in include_paths:
                paths_to_add.append(included_path)

        Output.internal_state.generate_sourcefiles(self, settings)

    def __getitem__(self, position):
        return self.files[position]

    def contains_path(self, path):
        """Check if a given path is already present."""
        for file in self.files:
            # TODO improve path comparison: ./thisfile.psASM and thisfile.psASM would probably be classified as
            #  different
            if path == file.path:
                return True
        return False

    def next_id(self):
        """Get the next unused fil id."""
        return len(self.files)

    def add_file(self, file):
        """Add a new file."""
        log(1, "Input: Added %s" % file.path)
        self.files.append(file)

    def get_line_text(self, file_id, line_id):
        """Get the text of a source line given file and line id."""
        file = self[file_id]
        return file.content[line_id]

    def get_file_path(self, file_id):
        """Get the path associated with a file id."""
        for file in self.files:
            if file.file_id == file_id:
                return file.path
        raise Exception('File ID not found.')  # pragma: no cover

    def get_file_id(self, path):
        for file in self.files:
            if file.path == path:
                return file.file_id
        raise Exception("Unknown file path")  # pragma: no cover

    def location_str(self, file_id, line_id=None, col=None):
        """Generate typical location string (ie: file.psASM:43:10)
        Requires at least a file_id.
        """
        file_path = self.get_file_path(file_id)
        result = file_path + ":"
        if line_id is not None:
            result += str(line_id+1) + ":"
            if col is not None:
                if type(col) == tuple:
                    result += str(col[0]+1) + "-" + str(col[1]+1) + ":"
                else:
                    result += str(col+1) + ":"
        return result

    @ classmethod
    def from_psOBJ_data(cls, data):
        files = []
        for file_data in data:
            files.append(SourceFile.from_psOBJ_data(file_data))

        return cls(files=files)

    def to_psOBJ_data(self):
        data = []
        for file in self.files:
            data.append(file.to_psOBJ_data())
        return data
