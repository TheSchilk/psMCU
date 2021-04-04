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
    with open(out_name + ".map", 'w') as outfile:
        map_file_table = {
            "adr": [],
            "labels": [],
            "raw_inst": [],
            "bin": [],
            "source": [],
            "line": []
        }

        map_file_labels = {
            "adr": "Adr",
            "labels": "Labels",
            "raw_inst": "Raw Inst.",
            "bin": "Bin",
            "source": "Source",
            "line": "Line"
        }

        map_file_col_width = {
            "adr": len(map_file_labels["adr"]),
            "labels": len(map_file_labels["labels"]),
            "raw_inst": len(map_file_labels["raw_inst"]),
            "bin": len(map_file_labels["bin"]),
            "source": len(map_file_labels["source"]),
            "line": len(map_file_labels["line"])
        }

        # Populate map_file_table
        for adr, line in enumerate(listing.Lines):
            # Address in lower-case hex
            adr_hex = format(adr, '04x')
            map_file_table["adr"].append(adr_hex)
            map_file_col_width["adr"] = max(map_file_col_width["adr"], len(adr_hex))

            # Labels as comma-separated list
            labels_txt = ""
            for label in line.labels:
                if len(labels_txt) != 0:
                    labels_txt += ", "
                labels_txt += label
            map_file_table["labels"].append(labels_txt)
            map_file_col_width["labels"] = max(map_file_col_width["labels"], len(labels_txt))

            # Raw instruction
            raw_inst = line.instruction.op_code
            for arg_num, arg in enumerate(line.instruction.args):
                if arg_num == 0:
                    raw_inst += " "
                else:
                    raw_inst += ", "
                raw_inst += hex(arg)
            map_file_table["raw_inst"].append(raw_inst)
            map_file_col_width["raw_inst"] = max(map_file_col_width["raw_inst"], len(raw_inst))

            # Binary instruction as lower-case hex
            bin_inst = format(int.from_bytes(line.instruction.binary, byteorder='big'), '04x')
            map_file_table["bin"].append(bin_inst)
            map_file_col_width["bin"] = max(map_file_col_width["bin"], len(bin_inst))

            # Line Source
            source = line.file_name + ":" + str(line.line_num)
            map_file_table["source"].append(source)
            map_file_col_width["source"] = max(map_file_col_width["source"], len(source))

            # Line
            line_text = line.text
            if do_strip_comments:
                line_text = line_text.split('#', 1)[0];
            if do_strip_whitespace:
                line_text = line_text.strip()

            map_file_table["line"].append(line_text)
            map_file_col_width["line"] = max(map_file_col_width["line"], len(line_text))

        # Pad each item to the correct width:
        for key, header in map_file_labels.items():
            map_file_labels[key] = header.ljust(map_file_col_width[key])
        for col_key, col in map_file_table.items():
            for i, item in enumerate(col):
                col[i] = item.ljust(map_file_col_width[col_key])

        # Generate file:
        # Header
        outfile.write(map_file_labels["adr"])
        outfile.write(" | " + map_file_labels["labels"])
        outfile.write(" | " + map_file_labels["raw_inst"])
        outfile.write(" | " + map_file_labels["bin"])
        outfile.write(" | " + map_file_labels["source"])
        outfile.write(" | " + map_file_labels["line"] + "\n")

        # Separator
        sep_length = 0
        for val in map_file_col_width.values():
            sep_length += val
        sep_length += (len(map_file_table.keys()) - 1) * 3
        sep = ""
        for i in range(sep_length):
            sep += "-"
        outfile.write(sep + "\n")

        for i in range(len(map_file_table["adr"])):
            outfile.write(map_file_table["adr"][i])
            outfile.write(" | " + map_file_table["labels"][i])
            outfile.write(" | " + map_file_table["raw_inst"][i])
            outfile.write(" | " + map_file_table["bin"][i])
            outfile.write(" | " + map_file_table["source"][i])
            outfile.write(" | " + map_file_table["line"][i] + "\n")


def generate_definitions(namespace, out_name):
    with open(out_name + ".defs", 'w') as outfile:
        for alias in namespace.aliases:
            outfile.write(str(alias) + "\n")
