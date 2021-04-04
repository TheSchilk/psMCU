#!/usr/bin/env python3
import sys
import argparse
from Namespace import Namespace
from Listing import Listing
from Errors import ParsingException
from Errors import DefinitionException
from Errors import ArgumentRangeException

parser = argparse.ArgumentParser(prog="psASM.py", description="psASM Assembler for psMCU.")
parser.add_argument('input_file', help='Input psASM file.')
parser.add_argument('-o', required=False, help='Output name.')
parser.add_argument('-L', required=False, action="store_true", help='Also generate Logisim file.')
parser.add_argument('-S', required=False, action="store_true", help='Also generate split binary files.')
parser.add_argument('-M', required=False, action="store_true", help='Also generate Map file.')

cmdline_args = parser.parse_args()

namespace = Namespace()
try:
    # Recursively parse files into a listing of lines and populate the Namespace
    listing = Listing(sys.argv[1], namespace)

    # Add the program header
    listing.add_header(namespace)

    # Now that the addresses of all instructions are fixed,
    # we can define all Labels in the namespace
    listing.define_labels(namespace)

    # Now we can recursively define all definitions
    namespace.recurse_definitions()

    # Now that everything in the namespace is defined,
    # We can insert everything in the Namespace into the program
    listing.insert_aliases(namespace)

    # We can now generate the binary instruction listing
    listing.generate_instructions()

except ParsingException as e:
    print(e)
    sys.exit()
except DefinitionException as e:
    print(e)
    sys.exit()
except ArgumentRangeException as e:
    print(e)
    sys.exit()
except FileNotFoundError as e:
    print("File not found!")
    sys.exit()

if cmdline_args.o is None:
    output_name = cmdline_args.input_file.rstrip('.psASM')
else:
    output_name = cmdline_args.o

# Generate Output Binary
with open(output_name + ".bin", 'wb') as outfile:
    for line in listing.Lines:
        outfile.write(line.instruction.binary)

# Generate Split Binary
if cmdline_args.S:
    with open(output_name + "_H.bin", 'wb') as outfile_H:
        with open(output_name + "_L.bin", 'wb') as outfile_L:
            for line in listing.Lines:
                full_bin = line.instruction.binary
                bin_l = full_bin[1].to_bytes(length=1, byteorder='big')
                outfile_L.write(bin_l)
                bin_h = full_bin[0].to_bytes(length=1, byteorder='big')
                outfile_H.write(bin_h)


# Generate LOGISIM file
if cmdline_args.L:
    with open(output_name + "LOGISIM", 'w') as outfile:
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

# Generate Map file:
if cmdline_args.M:
    with open(output_name + ".map", 'w') as outfile:

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
            labels = ""
            for label in line.labels:
                if len(labels) != 0:
                    label += ", "
                labels += label
            map_file_table["labels"].append(labels)
            map_file_col_width["labels"] = max(map_file_col_width["labels"], len(labels))

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
            source = line.file_name+":"+str(line.line_num)
            map_file_table["source"].append(source)
            map_file_col_width["source"] = max(map_file_col_width["source"], len(source))

            # Line
            map_file_table["line"].append(line.text)
            map_file_col_width["line"] = max(map_file_col_width["line"], len(line.text))

        # Pad each item to the correct width:
        for key, header in map_file_labels.items():
            map_file_labels[key] = header.ljust(map_file_col_width[key])
        for col_key, col in map_file_table.items():
            for i, item in enumerate(col):
                col[i] = item.ljust(map_file_col_width[col_key])

        # Generate file:
        # Header
        outfile.write(map_file_labels["adr"])
        outfile.write(" | "+map_file_labels["labels"])
        outfile.write(" | "+map_file_labels["raw_inst"])
        outfile.write(" | " + map_file_labels["bin"])
        outfile.write(" | " + map_file_labels["source"])
        outfile.write(" | " + map_file_labels["line"]+"\n")

        # Separator
        sep_length = 0
        for val in map_file_col_width.values():
            sep_length += val
        sep_length += (len(map_file_table.keys())-1)*3
        sep = ""
        for i in range(sep_length):
            sep += "-"
        outfile.write(sep+"\n")

        for i in range(len(map_file_table["adr"])):
            outfile.write(map_file_table["adr"][i])
            outfile.write(" | " + map_file_table["labels"][i])
            outfile.write(" | " + map_file_table["raw_inst"][i])
            outfile.write(" | " + map_file_table["bin"][i])
            outfile.write(" | " + map_file_table["source"][i])
            outfile.write(" | " + map_file_table["line"][i] + "\n")

