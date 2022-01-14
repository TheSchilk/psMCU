from Util.Errors import psASMFileException


def generate_sourcefiles(source_files, settings):
    file_name = settings['out'] + "_sourcefiles.psASM"
    try:
        if 'sourcefiles' in settings['log_internal_state'] or 'all' in settings['log_internal_state']:
            with open(file_name, 'w') as outfile:
                for file in source_files:
                    outfile.write("# ============ file: %s ============\n" % file.path)
                    for line in file:
                        outfile.write(str(line))
    except FileNotFoundError:
        raise psASMFileException("Failed to create file '%s'." % file_name)


def generate_parsedfiles(source_files, parsed_files, settings):
    file_name = settings['out'] + "_parsedfiles.psASM"
    try:
        if 'parsedfiles' in settings['log_internal_state'] or 'all' in settings['log_internal_state']:
            with open(file_name, 'w') as outfile:
                for file in parsed_files:
                    outfile.write("# ============ file: %s ============\n" % source_files.get_file_path(file.file_id))
                    for line in file:
                        text = line.instruction_tree()
                        if not text.endswith('\n') and not len(text) == 0:
                            text += '\n'
                        outfile.write(text)
    except FileNotFoundError:
        raise psASMFileException("Failed to create file '%s'." % file_name)


def generate_preproc(intermediate, settings, stage):
    file_name = settings['out'] + "_"+stage+".psASM"
    try:
        if stage in settings['log_internal_state'] or 'all' in settings['log_internal_state']:
            with open(file_name, 'w') as outfile:
                for element in intermediate:
                    outfile.write(str(element)+"\n")
    except FileNotFoundError:
        raise psASMFileException("Failed to create file '%s'." % file_name)
