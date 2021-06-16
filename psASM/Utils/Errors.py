class psASMException(Exception):
    def __init__(self, error_text):
        self.error_text = error_text

    def __str__(self):
        return self.error_text


class ArgumentRangeException(psASMException):
    def __init__(self, line, num, arg_setup):
        self.line = line
        self.num = num
        self.arg_setup = arg_setup

    def __str__(self):
        msg = "Argument Range Error at " + str(self.line) + "\n"
        msg += "The number " + str(self.num) + " is not within the valid range for the argument \'"
        msg += self.arg_setup['name'] + "\' ("
        msg += "[" + str(self.arg_setup['min']) + "," + str(self.arg_setup['max']) + "]" + ")"
        return msg


class DefinitionException(psASMException):
    def __init__(self, msg, alias):
        self.msg = msg
        self.alias = alias

    def __str__(self):
        return self.msg + " (" + str(self.alias) + ")"


class ParsingException(psASMException):
    def __init__(self, line, error_text):
        self.line = line
        self.error_text = error_text

    def __str__(self):
        msg = "Parsing error at " + str(self.line) + "\n"
        msg += self.error_text
        return msg
