
def generate(psOBJ, settings):
    with open(settings['out'] + "LOGISIM", 'w') as outfile:
        outfile.write("v2.0 raw\n")
        count = 0
        for inst in psOBJ.instruction_listing:
            count += 1
            outfile.write(inst.binary.hex())
            if count != 8:
                outfile.write(" ")
            else:
                count = 0
                outfile.write("\n")
