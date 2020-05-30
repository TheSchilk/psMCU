class ArgumentRangeException(Exception):
    def __init__(self, context, num, valid_range):
        self.context = context
        self.num = num
        self.range = valid_range

    def __str__(self):
        msg = "Argument Range Error at " + self.context.location() + "\n"
        msg += ("Line Content: \'" + self.context.line_text + "\'\n")
        msg += "The number "+str(self.num)+" is not within the valid range of that argument:\'"
        msg += "["+str(self.range.start)+","+str(self.range.stop)+"["
        return msg


class ParsingException(Exception):
    def __init__(self, context, error_text):
        self.context = context
        self.error_text = error_text

    def __str__(self):
        msg = "Parsing error at "+self.context.location()+"\n"
        msg += ("Line Content: \'" + self.context.line_text + "\'\n")
        msg += self.error_text
        return msg
