def generate_bin(listing, out_name):
    with open(out_name + ".bin", 'wb') as outfile:
        for line in listing.Lines:
            outfile.write(line.instruction.binary)


def generate_split_bin(listing, out_name):
    with open(out_name + "_H.bin", 'wb') as outfile_H:
        with open(out_name + "_L.bin", 'wb') as outfile_L:
            for line in listing.Lines:
                full_bin = line.instruction.binary
                bin_l = full_bin[1].to_bytes(length=1, byteorder='big')
                outfile_L.write(bin_l)
                bin_h = full_bin[0].to_bytes(length=1, byteorder='big')
                outfile_H.write(bin_h)


def generate_logisim(listing, out_name):
    with open(out_name + "LOGISIM", 'w') as outfile:
        outfile.write("v2.0 raw\n")
        count = 0
        for line in listing.Lines:
            count += 1
            outfile.write(line.instruction.binary.hex())
            if count != 8:
                outfile.write(" ")
            else:
                count = 0
                outfile.write("\n")


def generate_map(listing, out_name, do_strip_whitespace, do_strip_comments):
    cols = {"adr": 0, "labels": 1, "raw_inst": 2, "bin": 3, "source": 4, "line": 5}
    map_file_table_cols = [[], [], [], [], [], []]
    map_file_table_headers = ["Adr", "Labels", "Raw Inst.", "Bin", "Source", "Line"]

    # Populate table
    for adr, line in enumerate(listing.Lines):
        # Address in lower-case hex
        adr_hex = format(adr, '04x')
        map_file_table_cols[cols["adr"]].append(adr_hex)

        # Labels as comma-separated list
        labels_txt = ""
        for label in line.labels:
            if len(labels_txt) != 0:
                labels_txt += ", "
            labels_txt += label
        map_file_table_cols[cols["labels"]].append(labels_txt)

        # Raw instruction
        raw_inst = line.instruction.op_code
        for arg_num, arg in enumerate(line.instruction.args):
            if arg_num == 0:
                raw_inst += " "
            else:
                raw_inst += ", "
            raw_inst += hex(arg)
        map_file_table_cols[cols["raw_inst"]].append(raw_inst)

        # Binary instruction as lower-case hex
        bin_inst = format(int.from_bytes(line.instruction.binary, byteorder='big'), '04x')
        map_file_table_cols[cols["bin"]].append(bin_inst)

        # Line Source
        source = line.file_name + ":" + str(line.line_num)
        map_file_table_cols[cols["source"]].append(source)

        # Line
        line_text = line.text
        if do_strip_comments:
            line_text = line_text.split('#', 1)[0]
        if do_strip_whitespace:
            line_text = line_text.strip()

        map_file_table_cols[cols["line"]].append(line_text)

    with open(out_name + ".map", 'w') as outfile:
        outfile.write(table_string(map_file_table_headers, map_file_table_cols))


def generate_definitions(namespace, out_name):
    cols = {"name": 0, "type": 1, "definition": 2, "source": 3}
    def_file_table_cols = [[], [], [], []]
    def_file_table_headers = ["Name", "Type", "Definition.", "Source"]

    # Populate table
    for alias in namespace.aliases:
        # Name
        def_file_table_cols[cols["name"]].append(alias.name)

        # Type
        def_file_table_cols[cols["type"]].append(alias.alias_type)

        # Definition
        def_file_table_cols[cols["definition"]].append(alias.definition)

        # Source
        source = alias.origin_line.file_name + ":" + str(alias.origin_line.line_num)
        def_file_table_cols[cols["source"]].append(source)

    with open(out_name + ".defs", 'w') as outfile:
        outfile.write(table_string(def_file_table_headers, def_file_table_cols))


def table_string(headers, cols):
    if len(headers) != len(cols):
        raise Exception("headers/columns don't match")

    col_height = len(cols[0])
    for col in cols:
        if len(col) != col_height:
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
