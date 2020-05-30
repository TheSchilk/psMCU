import re
from Errors import ArgumentRangeException
from Errors import ParsingException


def is_comment(context):
    if re.match(r'^\s*#', context.line_text):
        return True
    else:
        return False


def is_definition(context):
    if re.match(r'^\s*@define', context.line_text):
        return True
    else:
        return False


def is_include(context):
    if re.match(r'^\s*@include', context.line_text):
        return True
    else:
        return False


def parse_include(context):

    # Remove any comment at the end of the line, if there is any
    text = context.line_text.split('#', 1)[0]

    # Replace multiple spaces with single space, split on spaces
    text = re.sub(r'\s+', ' ', text)
    parts = text.strip().split(' ')

    # Extract file name
    if len(parts) != 2:
        raise ParsingException(context, "Malformed @include")
    return parts[1]


def parse_definition(context):

    # Remove any comment at the end of the line, if there is any
    text = context.line_text.split('#', 1)[0]

    # Replace multiple spaces with single space, split on spaces
    text = re.sub(r'\s+', ' ', text)
    parts = text.strip().split(' ')

    if len(parts) != 3:
        raise ParsingException(context, "Malformed @define")

    name = parts[1]
    value = parts[2]

    # Ensure name is valid
    if not re.fullmatch(r'^\w+$', name):
        raise ParsingException(context, "Malformed Definition Name: \'" + name + "\'")

    # Ensure value is valid
    if not re.fullmatch(r'^\w+$', value):
        raise ParsingException(context, "Malformed Definition Value: \'" + value + "\'")

    return name, value


def parse_instruction(context):
    text = context.line_text

    # Remove any comment at the end of the line, if there is any
    text = text.split('#', 1)[0]

    # Remove any whitespace at the beginning or end
    text = text.strip()

    # See if there is a label
    if len(text.split(':', 1)) == 1:
        # No label
        label = None

    else:
        # Label
        # Extract it
        label = text.split(':', 1)[0].strip()

        # Ensure the label name is legal:
        if not re.fullmatch(r'^[a-zA-z]\w*$', label):  # Ensures only letters/digits/_ and starts with letter
            raise ParsingException(context, "Malformed Label: \'" + label + "\'")

        # Remove Label
        text = text.split(':', 1)[1].strip()

    # Get Operation
    op = text.split(' ', 1)[0]

    # Ensure the operation name is legal:
    if not re.fullmatch(r'^\w+$', op):
        raise ParsingException(context, "Malformed Instruction Name: \'" + op + "\'")

    args = []

    # Figure out if there is anything left
    if not len(text.split(' ', 1)) == 2:
        # we are done
        return label, op, []

    # Arguments present
    text = text.split(' ', 1)[1].strip()

    for arg in text.split(','):
        arg = arg.strip()

        # Ensure argument is legal
        if not re.fullmatch(r'^\w+$', arg):
            raise ParsingException(context, "Malformed Argument: \'" + arg + "\'")

        args.append(arg)

    return label, op, args


def parse_argument(context, arg, arg_range, bit_width):
    # Check if this is a hex value:
    if re.fullmatch(r'^0[xX][0-9a-fA-F]+$', arg):
        num = int(arg, 16)
        check_arg_range_unsigned(context, num, arg_range)
        return num

    # Check if this is a binary value:
    if re.fullmatch(r'^0[bB][01]+$', arg):
        num = int(arg, 2)
        check_arg_range_unsigned(context, num, arg_range)
        return num

    # Check if this is a unsigned int:
    if re.fullmatch(r'^[0-9]+$', arg):
        num = int(arg, 10)
        check_arg_range_unsigned(context, num, arg_range)
        return num

    # Check if this is a signed int:
    if re.fullmatch(r'^[+-][0-9]+$', arg):
        raise Exception(" Signed numbers not Yet implemented :(")

    # If this is none of the above, flag an error:
    raise ParsingException(context, "Could not decode argument \'" + str(arg) + "\'. If it is a constant, " +
                           "ensure it is defined.")


def check_arg_range_unsigned(context, num, valid_range):
    if num not in valid_range:
        raise ArgumentRangeException(context, num, valid_range)


def check_arg_range_signed(context, num, range):
    pass
