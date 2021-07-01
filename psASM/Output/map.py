from Util.Formatting import table_string


def generate(psOBJ, out_name):
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
