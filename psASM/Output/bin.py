def generate(psOBJ, settings):
    with open(settings['output_name'] + ".bin", 'wb') as outfile:
        for inst in psOBJ.instruction_listing:
            outfile.write(inst.binary)
