from Util.Log import log
import Output.bin
import Output.split_bin
import Output.logisim
import Output.map
import Output.usage
import Output.annotated


def generate(settings, psOBJ):
    if settings['gen_bin']:
        log(1, "Output: Generating binary file")
        Output.bin.generate(psOBJ, settings)
    if settings['gen_logisim']:
        log(1, "Output: Generating logisim file")
        Output.logisim.generate(psOBJ, settings)
    if settings['gen_split']:
        log(1, "Output: Generating split-binary files")
        Output.split_bin.generate(psOBJ, settings)
    if settings['gen_map']:
        log(1, "Output: Generating map file")
        Output.map.generate(psOBJ, settings)
    if settings['gen_usage']:
        log(1, "Output: Reporting usage")
        Output.usage.generate(psOBJ, settings)
    if settings['gen_annotated']:
        log(1, "Output: Generating annotated source file")
        Output.annotated.generate(psOBJ, settings)
