def generate(listing, out_name):
    with open(out_name + ".bin", 'wb') as outfile:
        for line in listing.Lines:
            outfile.write(line.instruction.binary)
