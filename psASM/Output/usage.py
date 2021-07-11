def generate(psOBJ, settings):
    program_len = len(psOBJ.instruction_listing)
    usage = (program_len*100)/(2**14)
    print("Instruction ROM usage: %.2f%% (%i/%i)" % (usage, program_len, 2**14))
