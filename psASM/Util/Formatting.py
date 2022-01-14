import re


def comma_seperated_list(text_list: list):
    result = ""

    for i, text in enumerate(text_list):
        if i != 0:
            result += ", "
        result += str(text)

    return result


def prefix_every_line(txt: str, prefix: str):
    if txt.endswith('\n'):
        txt = re.sub(r'\n$', "", txt)
        suffix = '\n'
    else:
        suffix = ''

    # Split into lines:
    lines = txt.split('\n')

    # Indent and re-assemble:
    result = ""
    for index, line in enumerate(lines):
        if not len(line) == 0:
            if index != 0:
                result += '\n'
            result += prefix + line

    return result + suffix


def table_string(headers, cols):
    # TODO this seems very messy
    if len(headers) != len(cols):  # pragma: no cover
        raise Exception("headers/columns don't match")

    col_height = len(cols[0])
    for col in cols:
        if len(col) != col_height:  # pragma: no cover
            raise Exception("cols don't have the same length")

    # Find the width of each column
    cols_width = []
    for col_index, col in enumerate(cols):
        col_width = 0
        col_width = max(col_width, len(headers[col_index]))
        for item in col:
            col_width = max(col_width, len(item))
        cols_width.append(col_width)

    # Pad each header to the correct width
    for header_index, header in enumerate(headers):
        headers[header_index] = header.ljust(cols_width[header_index])

    # Pad each col to the correct width
    for col_index, col in enumerate(cols):
        for item_index, item in enumerate(col):
            col[item_index] = item.ljust(cols_width[col_index])

    # Generate output
    output = ""

    # Header
    for header_index, header in enumerate(headers):
        if header_index != 0:
            output += " | "
        output += header
    output += "\n"

    # Separator
    sep_length = 0
    for width in cols_width:
        sep_length += width
    sep_length += (len(cols) - 1) * 3
    sep = ""
    for i in range(sep_length):
        sep += "-"
    output += sep + '\n'

    # Table
    for row_index in range(col_height):
        for col_index, col in enumerate(cols):
            if col_index != 0:
                output += " | "
            output += col[row_index]
        output += '\n'

    return output
