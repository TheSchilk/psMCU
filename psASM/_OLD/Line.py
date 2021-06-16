import re
from Errors import ParsingException
from InstructionSet import generate_instruction


class Line:
    def __init__(self, text, file_name, line_num):
        self.text = text.rstrip("\n")
        self.file_name = file_name
        self.line_num = line_num
        self.labels = []
        self.op_code = None
        self.args = []
        self.instruction = None

    def is_comment(self):
        if re.match(r'^\s*#', self.text):
            return True
        else:
            return False

    def is_definition(self):
        if re.match(r'^\s*@define', self.text):
            return True
        else:
            return False

    def is_include(self):
        if re.match(r'^\s*@include', self.text):
            return True
        else:
            return False

    def is_empty(self):
        if re.match(r'^\s*$', self.text):
            return True
        else:
            return False

    def is_label(self):
        if re.match(r'^\s*(?P<Label>\w+)\s*:\s*($|#)', self.text):
            return True
        else:
            return False

    def parse_include(self):
        # Get rid of any whitespace at the front or end
        text = self.text.strip()

        # Remove any comment at the end of the line, if there is any
        text = text.split('#', 1)[0]

        # Replace multiple spaces with single space, split on spaces
        text = re.sub(r'\s+', ' ', text)
        parts = text.strip().split(' ')

        # Extract file name
        if len(parts) != 2:
            raise ParsingException(self, "Malformed @include")
        return parts[1]

    def parse_definition(self):
        # Get rid of any whitespace at the front or end
        text = self.text.strip()

        # Remove any comment at the end of the line, if there is any
        text = text.split('#', 1)[0]

        # Replace multiple spaces with single space, split on spaces
        text = re.sub(r'\s+', ' ', text)
        parts = text.strip().split(' ')

        if len(parts) != 3:
            raise ParsingException(self, "Malformed @define")

        name = parts[1]
        value = parts[2]

        # Ensure name is valid
        if not re.fullmatch(r'^\w+$', name):
            raise ParsingException(self, "Malformed Definition Name: \'" + name + "\'")

        # Ensure value is valid
        if not re.fullmatch(r'^\w+$', value):
            raise ParsingException(self, "Malformed Definition Value: \'" + value + "\'")

        return name, value

    def parse_instruction(self, cascading_labels, allow_system_label=False):
        text = self.text

        # Remove any comment at the end of the line, if there is any
        text = text.split('#', 1)[0]

        # Remove any whitespace at the beginning or end
        text = text.strip()

        # See if there is a label
        if len(text.split(':', 1)) != 1:
            # Label
            # Extract it
            label = text.split(':', 1)[0].strip()

            # Ensure the label name is legal, unless this is a system label:
            if not allow_system_label:
                if not re.fullmatch(r'^[a-zA-z]\w*$', label):  # Ensures only letters/digits/_ and starts with letter
                    raise ParsingException(self, "Malformed Label: \'" + label + "\'")

            # Remove Label
            text = text.split(':', 1)[1].strip()

            self.labels.append(label)

        for label in cascading_labels:
            self.labels.append(label)

        # Get Operation
        self.op_code = text.split(' ', 1)[0]

        # Ensure the operation name is legal:
        if not re.fullmatch(r'^\w+$', self.op_code):
            raise ParsingException(self, "Malformed Instruction Name: \'" + self.op_code + "\'")

        # Figure out if there is anything left
        if not len(text.split(' ', 1)) == 2:
            # we are done
            return

        # Arguments present
        text = text.split(' ', 1)[1].strip()

        for arg in text.split(','):
            arg = arg.strip()

            # Ensure argument is legal, unless we are allowing system lables:
            if not allow_system_label:
                if not (re.fullmatch(r'^\w+$', arg) or re.fullmatch(r'^[+-]?\d+$', arg)):
                    raise ParsingException(self, "Malformed Argument: \'" + arg + "\'")

            self.args.append(arg)

    def parse_label(self):
        label = re.search(r'^\s*(?P<Label>\w+)\s*:\s*($|#)', self.text).group('Label')

        # Ensure the label name is legal:
        if not re.fullmatch(r'^[a-zA-z]\w*$', label):  # Ensures only letters/digits/_ and starts with letter
            raise ParsingException(self, "Malformed Label: \'" + label + "\'")

        return label

    def insert_alias(self, alias):
        for arg in enumerate(self.args):
            if arg[1] == alias.name:
                self.args.pop(arg[0])
                self.args.insert(arg[0], alias.definition)

    def generate_instruction(self):
        self.instruction = generate_instruction(self)

    def str_location(self):
        return self.file_name + ":" + str(self.line_num)

    def str_labels(self):
        labels = ""
        for label in self.labels:
            labels += (label + " ")
        labels = labels.rstrip(" ")
        return labels

    def str_data(self):
        return str([self.str_labels(), self.op_code, self.args])

    def __str__(self):
        return self.str_location() + " [" + self.str_labels() + "] = " + self.text
