import sys
from Namespace import Namespace
from Listing import Listing
from Errors import ParsingException

# TODO: proper argparse
# Flags:
#     output bin name
#     also generate logisim file
#     also generate map file
#     help (ofc)

# Make sure there where enough arguments parsed
if len(sys.argv) < 2:
    print("Not Enough arguments. Please specify a .psASM file")

namespace = Namespace()
try:
    # Recursively parse files into a listing of lines and populate the Namespace
    listing = Listing(sys.argv[1], namespace)

    # Add the program header
    listing.add_header(namespace)

    # Now that the addresses of all instructions are fixed,
    # we can define all Labels in the namespace
    listing.define_labels(namespace)

    # Now that everything in the namespace is defined,
    # We can insert everything in the Namespace into the program
    listing.insert_aliases(namespace)

    # We can now generate the binary instruction listing
    listing.generate_instructions()

except ParsingException as e:
    print(e)
    sys.exit()
except FileNotFoundError as e:
    print("File not found!")
    sys.exit()


# Generate Output Binary
with open(sys.argv[1].rstrip('.psASM') + ".bin", 'wb') as outfile:
    for line in listing.Lines:
        outfile.write(line.instruction.binary)

# Generate LOGISIM file
with open(sys.argv[1].rstrip('.psASM') + "LOGISIM", 'w') as outfile:
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
with open(sys.argv[1].rstrip('.psASM') + ".map", 'w') as outfile:
    for line in enumerate(listing.Lines):
        outfile.write(hex(line[0]))
        outfile.write(":")
        outfile.write(str(line[1]))
        outfile.write('\n')

# Generate parse file:
with open(sys.argv[1].rstrip('.psASM') + ".parse", 'w') as outfile:
    for line in enumerate(listing.Lines):
        outfile.write(hex(line[0]))
        outfile.write(":")
        outfile.write(str(line[1].instruction))
        outfile.write('\n')
