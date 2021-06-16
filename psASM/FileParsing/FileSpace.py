from FileLine import FileLine
import os
import StdLib


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
        if StdLib.is_stdlib_file(file_path):
            return cls.from_stdlib_file(file_id, file_path)
        else:
            asm_file = cls(file_id, file_path)
            with open(file_path, 'r') as file:
                for line_index, line_text in enumerate(file):
                    asm_file.content.append(FileLine(file_id, line_index, line_text))
            return asm_file

    @classmethod
    def from_stdlib_file(cls, file_id, stdlib_file):
        content = StdLib.get_stdlib_file(stdlib_file)
        asm_file = cls(file_id, stdlib_file, stdlib_file=True, content=content)
        return asm_file

    @classmethod
    def generate_startup(cls, file_id, main_label_exits=False, int_label_exists=False):

        # Pull-in beginning of file
        startup = cls.from_stdlib_file(file_id, StdLib.stdlib_startup_name)

        if main_label_exits:
            # There is a MAIN label. Start there.
            # Set instruction at 0x0 to "Jump to MAIN"
            startup.append_line("JMP MAIN # Jump to entry point (AUTO GENERATED)\n")
        else:
            # There is no MAIN label. Start execution in the first file
            # Set instruction at 0x0 to "Jump to 0x2"
            startup.append_line("JMP 0x2 # No MAIN label, jump to first file (AUTO GENERATED)\n")

        if int_label_exists:
            # There is an INTERRUPT label. Jump there on interrupt
            # Set instruction at 0x1 to "Jump to Interrupt"
            startup.append_line("JMP INTERRUPT # Jump to INTERRUPT handler (AUTO GENERATED)\n")
        else:
            # There is no INTERRUPT label.
            # Insert a "RTRNI" instruction to safely handle interrupts if one should
            # still occur
            startup.append_line("RTRNI # No INTERRUPT label (AUTO GENERATED)\n")

    @classmethod
    def generate_footer(cls, file_id):
        return cls.from_stdlib_file(file_id, StdLib.stdlib_footer_name)

    def __len__(self):
        return len(self.content)

    def __getitem__(self, position):
        return self.content[position]

    def get_included_paths(self):
        included_paths = []
        for line in self:
            if line.is_include:
                included_paths.append(line.extract_include())
        return included_paths

    def append_line(self, text):
        line = FileLine(self.file_id, len(self.content), text)
        self.content.append(line)


class FileSpace:
    """The collection of all .psASM files that make up a program."""

    def __init__(self, files=[]):
        self.files = files

    @classmethod
    def from_root_file(cls, root_file_path):
        """Generate a FileSpace from a root file and all included files."""
        file_space = cls()
        paths_to_add = [root_file_path]

        for path in paths_to_add:
            # Open this file and add it to the filespace:
            file = AsmFile(file_space.next_id(), path)
            file_space.append_asm_file(file)

            # Look for any includes in this new file and include any
            # files that have not yet been included:
            for included_path in file.get_included_paths():
                if not file_space.contains_path(included_path):
                    paths_to_add.append(included_path)

        return file_space

    def __len__(self):
        return len(self.files)

    def __getitem__(self, position):
        return self.files[position]

    def contains_path(self, path):
        for file in self.files:
            if os.path.samefile(path, file.path):
                return True
        return False

    def next_id(self):
        return len(self.files)

    def append_asm_file(self, file):
        self.files.append(file)

    def prepend_asm_file(self, file):
        self.files.insert(file, 0)

    def get_file_path(self, file_id):
        for file in self.files:
            if file.file_id == file_id:
                return file.path
        raise KeyError('File ID not found.')
