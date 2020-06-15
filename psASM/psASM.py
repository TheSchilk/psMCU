import sys
from Listing import Listing
from Errors import ParsingException
from Errors import ArgumentRangeException

# TODO: proper argparse
# Flags:
#     output bin name
#     also generate logisim file
#     also generate map file
#     help (ofc)

# Make sure there where enough arguments parsed
if len(sys.argv) < 2:
    print("Not Enough arguments. Please specify a .psasm file")
    sys.exit()

# Parse into a listing of lines
try:
    listing = Listing(sys.argv[1], [])
except ParsingException as e:
    print(e)
    sys.exit()
except FileNotFoundError as e:
    print("File not found!")
    sys.exit()

# Because the position of all instructions in memory is now fixed,
# we can convert all labels into their address and add them to the list
# of defined values
listing.convert_labels()

# Insert all defined values (labels and user defined values)
listing.insert_definitions()

listing.print()

# Turn listing into instructions
try:
    listing.generate_instructions()
except ParsingException as e:
    print(e)
    sys.exit()
except ArgumentRangeException as e:
    print(e)
    sys.exit()

for b in listing.binary_listing:
    print(b)

# Generate Output Binary
with open(sys.argv[1].rstrip('.psASM')+".bin",'wb') as outfile:
    for b in listing.binary_listing:
        outfile.write(b)

with open(sys.argv[1].rstrip('.psASM')+"LOGISIM", 'w') as outfile:
    outfile.write("v2.0 raw\n")
    count = 0
    for b in listing.binary_listing:
        count += 1
        outfile.write(b.hex())
        if count != 8:
            outfile.write(" ")
        else:
            count = 0
            outfile.write("\n")


# Generate Map File
