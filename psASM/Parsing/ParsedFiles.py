import Parsing.Parser as Parser


class ParsedFiles:
    def __init__(self):
        self.files = []

    @classmethod
    def from_source_files(cls, source_files):
        parsed_files = cls()
        for file in source_files:
            parsed_file = Parser.parse_file(file)
            parsed_files.files.append(parsed_file)
        return parsed_files

    def __len__(self):
        return len(self.files)

    def __getitem__(self, position):
        return self.files[position]
