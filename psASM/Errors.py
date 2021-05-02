class ArgumentRangeException(Exception):
    def __init__(self, line, num, valid_range):
        self.line = line
        self.num = num
        self.range = valid_range

    def __str__(self):
        msg = "Argument Range Error at " + str(self.line) + "\n"
        msg += "The number " + str(self.num) + " is not within the valid range of that argument:\'"
        msg += "[" + str(self.range.start) + "," + str(self.range.stop) + "["
        return msg


class DefinitionException(Exception):
    def __init__(self, msg, alias):
        self.msg = msg
        self.alias = alias

    def __str__(self):
        return self.msg + " (" + str(self.alias) + ")"


class ParsingException(Exception):
    def __init__(self, line, error_text):
        self.line = line
        self.error_text = error_text

    def __str__(self):
        msg = "Parsing error at " + str(self.line) + "\n"
        msg += self.error_text
        return msg
