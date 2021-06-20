import os
from Util.Errors import ParsingException
from Input.AsmFile import AsmFile


class SourceFiles:
    """The collection of all .psASM files that make up a program."""

    def __init__(self, files=[]):
        self.files = files

    @classmethod
    def from_root_file(cls, root_file_path):
        """Generate from a root file and all included files."""
        file_space = cls()
        paths_to_add = [root_file_path]

        for path in paths_to_add:
            # Open this file and add it to the filespace:
            file = AsmFile.from_file(file_space.next_id(), path)
            file_space.add_file(file)

            # Look for any includes in this new file and include any
            # files that have not yet been included:
            try:
                include_paths = file.get_included_paths()
            except ParsingException as e:
                e.decorate_source_files(file_space)
                raise e

            for included_path in include_paths:
                if not file_space.contains_path(included_path):
                    paths_to_add.append(included_path)

        return file_space

    @classmethod
    def from_psOBJ(cls, root_file_path):
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
