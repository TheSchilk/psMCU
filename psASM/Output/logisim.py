
def generate(listing, out_name):
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
