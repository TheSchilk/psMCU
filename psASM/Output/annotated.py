import copy


def generate(psOBJ, settings):
    source_files = copy.copy(psOBJ.source_files)
    for adr, instruction in enumerate(psOBJ.instruction_listing):
        file_id = instruction.file_id
        line_id = instruction.line_id

        instruction_string = instruction.op_code
        for arg_num, arg in enumerate(instruction.args):
            if arg_num == 0:
                instruction_string += " "
            else:
                instruction_string += ", "
            instruction_string += hex(arg)

        comment = " # @ 0x%s: %s" % (format(adr, '04x'), instruction_string)

        original_text = source_files.get_line_text(file_id, line_id).rstrip('\n')

        source_files[file_id][line_id] = original_text + comment + '\n'

    with open(settings['out'] + "_annotated.psASM", 'w') as outfile:
        for file in source_files:
            # Print file header
            outfile.write("\n")
            outfile.write("###################################\n")
            outfile.write("# File: %s \n" % file.path)
            outfile.write("###################################\n")
            outfile.write("\n")

            # Print file content
            for line in file:
                outfile.write(line)
