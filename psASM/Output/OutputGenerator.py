from Util.Errors import psASMFileException
from Util.Log import log
import Output.psOBJ
import Output.bin
import Output.split_bin
import Output.logisim
import Output.map
import Output.usage
import Output.annotated


def generate(settings, ps_obj: Output.psOBJ.psOBJ):
    outputs = {
        'gen_psOBJ':  Output.psOBJ.generate,
        'gen_bin': Output.bin.generate,
        'gen_logisim': Output.logisim.generate,
        'gen_split': Output.split_bin.generate,
        'gen_map': Output.map.generate,
        'gen_usage': Output.usage.generate,
        'gen_annotated': Output.annotated.generate,
    }

    for output_type, generate in outputs.items():
        if settings[output_type]:
            try:
                generate(ps_obj, settings)
                log(1, "Output %s generated." % output_type)
            except FileNotFoundError as ex:
                raise psASMFileException("Failed to create file '%s'." % ex.filename)
