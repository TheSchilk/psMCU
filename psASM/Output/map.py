from Util.Formatting import table_string


def generate(psOBJ, settings):
    cols = {"adr": 0, "raw_inst": 1, "bin": 2, "source": 3, "line": 4}
    map_file_table_cols = [[], [], [], [], []]
    map_file_table_headers = ["Adr", "Raw Inst.", "Bin", "Source", "Line"]

    # Populate table
    for adr, inst in enumerate(psOBJ.instruction_listing):
        # Address in lower-case hex
        adr_hex = "0x"+format(adr, '04x')
        map_file_table_cols[cols["adr"]].append(adr_hex)

        # Raw instruction
        raw_inst = inst.op_code
        for arg_num, arg in enumerate(inst.args):
            if arg_num == 0:
                raw_inst += " "
            else:
                raw_inst += ", "
            raw_inst += hex(arg)
        map_file_table_cols[cols["raw_inst"]].append(raw_inst)

        # Binary instruction as lower-case hex
        bin_inst = format(int.from_bytes(inst.binary, byteorder='big'), '04x')
        map_file_table_cols[cols["bin"]].append(bin_inst)

        # Line Source
        source = psOBJ.source_files.location_str(inst.file_id, inst.line_id).rstrip(':')
        map_file_table_cols[cols["source"]].append(source)

        # Line
        line_text = psOBJ.source_files.get_line_text(inst.file_id, inst.line_id).rstrip('\n')
        if settings['no_comments']:
            line_text = line_text.split('#', 1)[0]
        if settings['no_ws']:
            line_text = line_text.strip()

        map_file_table_cols[cols["line"]].append(line_text)

    with open(settings['output_name'] + ".map", 'w') as outfile:
        outfile.write(table_string(map_file_table_headers, map_file_table_cols))
