from Util.Log import log
from Output.psOBJ import psOBJ
import Output.bin
import Output.split_bin
import Output.logisim
import Output.map
import Output.usage
import Output.annotated


def generate(settings, ps_obj: psOBJ):
    if settings['gen_psOBJ']:
        log(1, "Output: Generating psOBJ file")
        ps_obj.write_to_file(settings)
    if settings['gen_bin']:
        log(1, "Output: Generating binary file")
        Output.bin.generate(ps_obj, settings)
    if settings['gen_logisim']:
        log(1, "Output: Generating logisim file")
        Output.logisim.generate(ps_obj, settings)
    if settings['gen_split']:
        log(1, "Output: Generating split-binary files")
        Output.split_bin.generate(ps_obj, settings)
    if settings['gen_map']:
        log(1, "Output: Generating map file")
        Output.map.generate(ps_obj, settings)
    if settings['gen_usage']:
        log(1, "Output: Reporting usage")
        Output.usage.generate(ps_obj, settings)
    if settings['gen_annotated']:
        log(1, "Output: Generating annotated source file")
        Output.annotated.generate(ps_obj, settings)
