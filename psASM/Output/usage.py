from Util.Log import log


def generate(psOBJ, settings):
    _ = settings
    program_len = len(psOBJ.instruction_listing)
    usage = (program_len*100)/(2**14)
    log(0, "Instruction ROM usage: %.2f%% (%i/%i)" % (usage, program_len, 2**14))
