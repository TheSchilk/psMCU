import re
from Errors import ParsingException


class FileLine:
    """A single line from a .psASM source file."""

    def __init__(self, file_id, line_index, text):
        self.file_id = file_id
        self.line_index = line_index
        self.text = text

    def is_ignorable(self) -> bool:
        """Check if this file is either a comment or empty and can be ignored."""
        return self.is_comment() or self.is_empty()

    def is_comment(self) -> bool:
        """Check if this file is a comment."""
        return bool(re.match(r'^\s*#', self.text))

    def is_empty(self) -> bool:
        """Check if this file is empty."""
        return bool(re.match(r'^\s*$', self.text))

    def is_definition(self) -> bool:
        """Check if this file is a preprocessor definition."""
        return bool(re.match(r'^\s*@define', self.text))

    def is_include(self) -> bool:
        """Check if this file is a preprocessor include statement."""
        return bool(re.match(r'^\s*@include', self.text))

    def is_label(self) -> bool:
        """Check if this file is a sole label."""
        # TODO Enable multiple lables + allow _ . prefix
        return bool(re.match(r'^\s*(?P<Label>\w+)\s*:\s*($|#)', self.text))

    def extract_include(self):
        """Extract the included file path.
        Line must be an include statement.
        """
        # Get rid of any whitespace at the front or end
        text = self.text.strip()

        # Remove any comment at the end of the line, if there is any
        text = text.split('#', 1)[0]

        # Replace multiple spaces with single space, split on spaces
        text = re.sub(r'\s+', ' ', text)
        parts = text.strip().split(' ')

        # Extract path
        if len(parts) != 2:
            raise ParsingException(self, "Malformed @include")

        return parts[1]

    def extract_definition(self):
        """Extract the definition name and value.
        Line must be a definition.
        :returns: (name, value)
        """
        # TODO: allow expressions

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

#    def parse_instruction(self, cascading_labels, allow_system_label=False):
#        # TODO: allow multiple labels
#        text = self.text
#
#        # Remove any comment at the end of the line, if there is any
#        text = text.split('#', 1)[0]
#
#        # Remove any whitespace at the beginning or end
#        text = text.strip()
#
#        # See if there is a label
#        if len(text.split(':', 1)) != 1:
#            # Label
#            # Extract it
#            label = text.split(':', 1)[0].strip()
#
#            # Ensure the label name is legal, unless this is a system label:
#            if not allow_system_label:
#                if not re.fullmatch(r'^[a-zA-z]\w*$', label):  # Ensures only letters/digits/_ and starts with letter
#                    raise ParsingException(self, "Malformed Label: \'" + label + "\'")
#
#            # Remove Label
#            text = text.split(':', 1)[1].strip()
#
#            self.labels.append(label)
#
#        for label in cascading_labels:
#            self.labels.append(label)
#
#        # Get Operation
#        self.op_code = text.split(' ', 1)[0]
#
#        # Ensure the operation name is legal:
#        if not re.fullmatch(r'^\w+$', self.op_code):
#            raise ParsingException(self, "Malformed Instruction Name: \'" + self.op_code + "\'")
#
#        # Figure out if there is anything left
#        if not len(text.split(' ', 1)) == 2:
#            # we are done
#            return
#
#        # Arguments present
#        text = text.split(' ', 1)[1].strip()
#
#        for arg in text.split(','):
#            arg = arg.strip()
#
#            # Ensure argument is legal, unless we are allowing system lables:
#            if not allow_system_label:
#                if not (re.fullmatch(r'^\w+$', arg) or re.fullmatch(r'^[+-]?\d+$', arg)):
#                    raise ParsingException(self, "Malformed Argument: \'" + arg + "\'")
#
#            self.args.append(arg)

    def extract_labels(self):
        # TODO Enable multiple lables + allow _ . prefix
        label = re.search(r'^\s*(?P<Label>\w+)\s*:\s*($|#)', self.text).group('Label')

        # Ensure the label name is legal:
        if not re.fullmatch(r'^[a-zA-z]\w*$', label):  # Ensures only letters/digits/_ and starts with letter
            raise ParsingException(self, "Malformed Label: \'" + label + "\'")

        return label

    def line_num(self):
        return self.line_index + 1
