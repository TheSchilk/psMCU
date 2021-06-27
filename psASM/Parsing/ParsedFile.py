import Parsing.Parser as Parser


class ParsedFile():
    def __init__(self, file_id, content):
        self.file_id = file_id
        self.content = content
        self.blocks = []

    def __len__(self):
        return len(self.content)

    def __getitem__(self, position):
        return self.content[position]


class ParsedFiles:
    def __init__(self):
        self.files = []

    def add_source_file(self, file):
        self.files.append((Parser.parse_file(file)))

    def add_parsed_file(self, file):
        self.files.append(file)

    def __len__(self):
        return len(self.files)

    def __getitem__(self, position):
        return self.files[position]
