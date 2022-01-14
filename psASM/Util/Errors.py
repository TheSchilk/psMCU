from abc import ABCMeta, abstractmethod


class psASMException(Exception, metaclass=ABCMeta):
    def __init__(self, text):
        self.text = text

    @ abstractmethod
    def __str__(self):  # pragma: no cover
        raise Exception()


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

    def file_defined(self):
        have_location = self.file_id is not None
        have_source_files = self.source_files is not None
        return have_source_files and have_location

    def line_defined(self):
        have_line = self.line_id is not None
        return self.file_defined() and have_line

    def col_defined(self):
        have_col = self.error_col is not None
        return self.line_defined() and have_col

    def has_location_information(self):
        return self.file_defined() or self.line_defined() or self.col_defined()

    def location_str(self):
        if not self.has_location_information():  # pragma: no cover
            raise Exception()

        return self.source_files.location_str(self.file_id, self.line_id, self.error_col)

    def __str__(self):
        # Construct error message with as much information as possible

        if self.has_location_information():
            # Generate error message with location information:

            result = '\n' + self.exception_name + ": " + self.text + '\n\n'

            location_str = self.location_str() + "  "
            result += location_str

            if self.line_defined():
                line_text = self.source_files.get_line_text(self.file_id, self.line_id).rstrip()
                original_text_length = len(line_text)

                line_text = line_text.lstrip(' ')
                removed_whitespace_length = original_text_length - len(line_text)

                result += line_text.rstrip()

                # If the column is known, add a small arrow to indicate from below
                if self.col_defined():

                    if isinstance(self.error_col, tuple):
                        if len(self.error_col) != 2:  # pragma: no cover
                            raise Exception("Error-col tuple is not of length 2.")
                        error_col_start = self.error_col[0]
                        error_col_stop = self.error_col[1]
                    else:
                        error_col_start = self.error_col
                        error_col_stop = self.error_col

                    prefix_len = len(location_str)
                    result += "\n"
                    result += col_error_indicator(prefix_len, removed_whitespace_length,
                                                  error_col_start, error_col_stop)
        else:
            # No location information available:
            result = self.exception_name + ": " + self.text

        return result


def col_error_indicator(prefix_length, removed_whitespace_length, err_col_start, err_col_stop):
    mark_length = err_col_stop - err_col_start + 1
    start = err_col_start + prefix_length - removed_whitespace_length

    result = " " * start
    if mark_length > 4:
        result += "^" + ("~" * (mark_length - 2)) + "^"
    else:
        result += "^" * mark_length

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

        if self.has_location_information():
            # Generate error message with location information:
            location = self.source_files.location_str(self.file_id, self.line_id).rstrip()
            result = location + " " + self.exception_name
            if self.text is not None and self.text != "":
                result += ": " + self.text
        else:
            # No location information available:
            result = "Encountered " + self.exception_name
            if self.text is not None and self.text != "":
                result += ": " + self.text

        return result


class psASMFileException(LocatedException):
    def __init__(self, text, file_id=None, line_id=None, source_files=None, error_col=None):
        super().__init__(text, "File Error", file_id, line_id, source_files, error_col)


class psOBJException(psASMException):
    def __str__(self):
        return "psOBJ import Error: " + self.text


class ArgException(psASMException):
    def __str__(self):
        return "Argument Error:" + self.text
