class ParsedFile:
    def __init__(self, file_id, content):
        self.file_id = file_id
        self.content = content
        self.has_been_included = False
        self.include_once = False

    def __getitem__(self, position):
        return self.content[position]

    def set_include_once(self):
        self.include_once = True

    def mark_inclusion(self):
        self.has_been_included = True

    def should_include(self):
        return not (self.include_once and self.has_been_included)


class ParsedFiles:
    def __init__(self):
        self.files = []

    def add_parsed_file(self, file):
        self.files.append(file)

    def __getitem__(self, position):
        return self.files[position]
