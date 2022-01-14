from Input.SourceFile import SourceFiles
from Util.Errors import psASMFileException, psOBJException
from Output.Instruction import Instruction
import json
from os.path import dirname, join
import jsonschema


class psOBJ:
    def __init__(self, source_files, instruction_listing):
        self.source_files = source_files
        self.instruction_listing = instruction_listing

    @classmethod
    def from_file(cls, settings):
        # Read json schema file:

        schema_file = join(dirname(__file__), "psOBJ.schema")
        try:
            with open(schema_file, "r") as read_file:
                schema = json.load(read_file)
        except (FileNotFoundError, json.decoder.JSONDecodeError) as exc:  # pragma: no cover
            print(exc)
            raise Exception("Failed to open psOBJ schema file!")

        try:
            # Read file:
            with open(settings['input_file'], "r") as read_file:
                psOBJ_data = json.load(read_file)

            # Validate psOBJ:
            jsonschema.validate(psOBJ_data, schema)
        except FileNotFoundError:
            raise psASMFileException("Failed to open file %s!" % settings['input_file'])
        except json.decoder.JSONDecodeError as exc:
            raise psOBJException("Failed to parse %s! Invalid JSON!\n%s" % (settings['input_file'], exc))
        except jsonschema.ValidationError:
            raise psOBJException("Malformed psOBJ file!")

        source_files_data = psOBJ_data['source_files']
        instruction_listing_data = psOBJ_data['instruction_listing']

        # Deserialize source files:
        source_files = SourceFiles.from_psOBJ_data(source_files_data)

        # Deserialize instruction listing:
        instruction_listing = []
        for instr_data in instruction_listing_data:
            instruction_listing.append(Instruction.from_psOBJ_data(instr_data))

        return cls(source_files, instruction_listing)

    def write_to_file(self, settings):
        # Generate serialized information:
        source_files_data = self.source_files.to_psOBJ_data()
        instruction_listing_data = []
        for inst in self.instruction_listing:
            instruction_listing_data.append(inst.to_psOBJ_data())

        data = {'source_files': source_files_data, 'instruction_listing': instruction_listing_data}

        # Write to file:
        with open(settings['out']+".psOBJ", "w") as write_file:
            json.dump(data, write_file)


# Wrapper function to have same interface as all other output generators:
def generate(ps_obj: psOBJ, settings):
    ps_obj.write_to_file(settings)
