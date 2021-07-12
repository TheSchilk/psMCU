def generate(psobj, settings):
    with open(settings['out'] + ".bin", 'wb') as outfile:
        for inst in psobj.instruction_listing:
            outfile.write(inst.binary)
