class psOBJ:
    def __init__(self, source_files, instruction_listing):
        self.source_files = source_files
        self.instruction_listing = instruction_listing

    @classmethod
    def from_file(cls, file):
        # TODO
        return cls(None, None) 

    def write_to_file(self, settings):
        pass
