import Output.bin
import Output.split_bin
import Output.logisim
import Output.map
import Output.usage
import Output.annotated


def generate(settings, psOBJ):
    if settings['gen_bin']:
        Output.bin.generate(psOBJ, settings)
    if settings['gen_logisim']:
        Output.logisim.generate(psOBJ, settings)
    if settings['gen_split']:
        Output.split_bin.generate(psOBJ, settings)
    if settings['gen_map']:
        Output.map.generate(psOBJ, settings)
    if settings['gen_usage']:
        Output.usage.generate(psOBJ, settings)
    if settings['gen_annotated']:
        Output.annotated.generate(psOBJ, settings)
