def generate(psobj, settings):
    with open(settings['output_name'] + ".bin", 'wb') as outfile:
        for inst in psobj.instruction_listing:
            outfile.write(inst.binary)
