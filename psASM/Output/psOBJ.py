from Input.SourceFile import SourceFiles
from Util.Errors import psOBJException
from Output.Instruction import Instruction
import json

class psOBJ:
    def __init__(self, source_files, instruction_listing):
        self.source_files = source_files
        self.instruction_listing = instruction_listing

    @classmethod
    def from_file(cls, settings):
        # Read file:
        with open(settings['input_file'], "r") as read_file:
            data = json.load(read_file)
        
        if not type(data) is dict:
            raise psOBJException("Malformed psOBJ file.")
        try:
            # Deserialize source files:
            source_files_data = data['source_files']
            instruction_listing_data = data['instruction_listing']
            
            source_files = SourceFiles.from_psOBJ_data(source_files_data)

            # Deserialize instruction listing:
            if not type(instruction_listing_data) is list:
                raise psOBJException("Malformed psOBJ file.")
            instruction_listing = []
            for instr_data in instruction_listing_data:
                instruction_listing.append(Instruction.from_psOBJ_data(instr_data))

        except KeyError:
            raise psOBJException("Malformed psOBJ file.")

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

# Content:
#
#   Source Files:
#       Source File
#           file_id 
#           line_id
#           is_stdlib_file
#           content
#               line
#
#   Instruction Listing:
#       Instruction:
#           op_code - string
#           args    - list of hex values 
#           binary  - hex value
#           file_id - string
#           line_id - string

