class psASMException(Exception):
    def __init__(self, text):
        self.text = text

    def __str__(self):
        return "Error: " + self.text

class psASMFileException(psASMException):
    pass

class LocatedException(psASMException):
    def __init__(self, text, exception_name, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text)
        self.exception_name = exception_name
        self.file_id = file_id
        self.line_id = line_id
        self.source_files = source_files
        self.error_col = error_col

    # Note: Decorations do not override, as information is usually more precise, the deeper it was
    # decorated. Overrides can still be forced

    def decorate_file_id(self, file_id, replace=False):
        if self.file_id is None or replace:
            self.file_id = file_id

    def decorate_line_id(self, line_id, replace=False):
        if self.line_id is None or replace:
            self.line_id = line_id

    def decorate_location(self, file_id, line_id, replace=False):
        self.decorate_file_id(file_id, replace)
        self.decorate_line_id(line_id, replace)

    def decorate_source_files(self, source_files, replace=False):
        if self.source_files is None or replace:
            self.source_files = source_files

    def decorate_error_col(self, error_col, replace=False):
        if self.error_col is None or replace:
            self.error_col = error_col

    def _file_defined(self):
        have_location = self.file_id is not None or self.line_id is not None
        have_source_files = self.source_files is not None
        return have_source_files and have_location

    def _location_defined(self):
        return self._file_defined and self.line_id is not None

    def __str__(self):
        # Construct error message with as much information as possible

        if self._location_defined():
            # Generate error message with location information:

            result = '\n' + self.exception_name + ": " + self.text + '\n\n'

            if type(self.error_col) == tuple:
                line_text_prefix = self.source_files.location_str(self.file_id, self.line_id, self.error_col[0]) + " "
            else:
                line_text_prefix = self.source_files.location_str(self.file_id, self.line_id, self.error_col) + " "

            result += line_text_prefix + self.source_files.get_line_text(self.file_id, self.line_id).rstrip()

            # If the column is known, add a small arrow to indicate from below
            prefix_len = len(line_text_prefix)
            if isinstance(self.error_col, int):
                result += "\n"
                result += (" " * (self.error_col + prefix_len)) + "^" + "\n"
            elif isinstance(self.error_col, tuple):
                if len(self.error_col) != 2:  # pragma: no cover
                    raise Exception("Error-col tuple is not of length 2.")
                result += "\n"
                mark_length = self.error_col[1] - self.error_col[0] + 1
                result += (" " * (self.error_col[0] + len(line_text_prefix)))
                if mark_length > 4:
                    result += "^" + ("~" * (mark_length - 2)) + "^"
                else:
                    result += "^" * mark_length
        elif self._file_defined():
            file_name = self.source_files.get_file_path(self.file_id)
            result = self.exception_name + " in "+file_name+": " + self.text
        else:
            # No location information available:
            result = self.exception_name + ": " + self.text

        return result


class ParsingException(LocatedException):
    def __init__(self, text, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text, "Parsing Error", file_id, line_id, source_files, error_col)


class ContextException(LocatedException):
    def __init__(self, text, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text, "Context Error", file_id, line_id, source_files, error_col)


class EvalException(LocatedException):
    def __init__(self, text, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text, "Evaluation Error", file_id, line_id, source_files, error_col)


class InstructionException(LocatedException):
    def __init__(self, text, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text, "Instruction Error", file_id, line_id, source_files, error_col)


class ErrorDirectiveException(LocatedException):
    def __init__(self, text, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text, "Error Directive", file_id, line_id, source_files, error_col)

    def __str__(self):
        # Construct error message with as much information as possible

        if self._location_defined():
            # Generate error message with location information:

            location = self.source_files.location_str(self.file_id, self.line_id).rstrip()
            result = location + " " + self.exception_name
            if self.text is not None and self.text != "":
                result += ": " + self.text

        elif self._file_defined():
            file_name = self.source_files.get_file_path(self.file_id)
            result = file_name + ": " + self.exception_name
            if self.text is not None and self.text != "":
                result += ": " + self.text
        else:
            # No location information available:
            result = "Encountered " + self.exception_name
            if self.text is not None and self.text != "":
                result += ": " + self.text

        return result


class psOBJException(psASMException):
    def __str__(self):
        return "psOBJ import Error: " + self.text
