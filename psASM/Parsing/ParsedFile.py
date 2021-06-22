class ParsedFile():
    def __init__(self, file_id, content):
        self.file_id = file_id
        self.content = content

    def __len__(self):
        return len(self.content)

    def __getitem__(self, position):
        return self.content[position]
