class psASMException(Exception):
    def __init__(self, text):
        self.text = text

    def __str__(self):
        return "Error: " + self.text


class ParsingException(psASMException):
    def __init__(self, text, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text)
        self.file_id = file_id
        self.line_id = line_id
        self.source_files = source_files
        self.error_col = error_col

    def decorate_location(self, file_id, line_id):
        self.file_id = file_id
        self.line_id = line_id

    def decorate_source_files(self, source_files):
        self.source_files = source_files

    def decorate_error_col(self, error_col):
        self.error_col = error_col

    def _location_defined(self):
        have_location = self.file_id is not None and self.line_id is not None
        have_source_files = self.source_files is not None
        return have_source_files and have_location

    def __str__(self):
        # Construct error message with as much information as possible

        if self._location_defined():
            # Generate error message with location information:

            result = "Parsing Error: " + self.text + '\n'

            line_text_prefix = self.source_files.location_str(self.file_id, self.line_id, self.error_col) + ": "

            result += line_text_prefix + self.source_files.line_text(self.file_id, self.line_id).rstrip()

            # If the column is known, add a small arrow to indicate from below
            if self.error_col is not None:
                result += (" " * (self.error_col+len(line_text_prefix))) + "^\n"

        else:
            # No location information available:
            result = "Parsing Error: " + self.text

        return result
