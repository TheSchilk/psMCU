def generate(psOBJ, settings):
    out_name = settings['output_name']
    with open(out_name + "_H.bin", 'wb') as outfile_H:
        with open(out_name + "_L.bin", 'wb') as outfile_L:
            for inst in psOBJ.instruction_listing:
                full_bin = inst.binary
                bin_l = full_bin[1].to_bytes(length=1, byteorder='big')
                outfile_L.write(bin_l)
                bin_h = full_bin[0].to_bytes(length=1, byteorder='big')
                outfile_H.write(bin_h)
