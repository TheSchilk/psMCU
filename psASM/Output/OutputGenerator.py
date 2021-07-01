import Output.bin
import Output.split_bin
import Output.logisim
import Output.map
import Output.usage


def generate(settings, psOBJ):
    output_name = settings['output_name']
    if settings['gen_bin']:
        Output.bin.generate(psOBJ, output_name)
    if settings['gen_logisim']:
        Output.logisim.generate(psOBJ, output_name)
    if settings['gen_split']:
        Output.split_bin.generate(psOBJ, output_name)
    if settings['gen_map']:
        Output.map.generate(psOBJ, output_name)
    if settings['gen_usage']:
        Output.usage.generate(psOBJ, output_name)
