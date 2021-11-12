
def generate_sourcefiles(source_files, settings):
    if 'sourcefiles' in settings['log_internal_state']:
        with open(settings['out'] + "_sourcefiles.log", 'w') as outfile:
            for file in source_files:
                outfile.write("============ file: %s ============\n" % file.path) 
                for line in file:
                    outfile.write(str(line))


def generate_parsedfiles(source_files, parsed_files, settings):
    if 'parsedfiles' in settings['log_internal_state']:
        with open(settings['out'] + "_parsedfiles.log", 'w') as outfile:
            for file in parsed_files:
                outfile.write("============ file: %s ============\n" % source_files.get_file_path(file.file_id)) 
                for line in file:
                    text = line.instruction_tree()
                    if not text.endswith('\n') and not len(text) == 0:
                        text += '\n'
                    outfile.write(text)


def generate_preproc1(intermediate, settings):
    if 'preproc1' in settings['log_internal_state']:
        with open(settings['out'] + "_preproc1.log", 'w') as outfile:
            for element in intermediate:
                outfile.write(str(element)+"\n")
