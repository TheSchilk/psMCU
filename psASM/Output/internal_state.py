
def generate_preproc0(source_files, settings):
    if 'preproc0' in settings['log_internal_state']:
        with open(settings['out'] + "_preproc0.log", 'w') as outfile:
            for file in source_files:
                outfile.write("============ File: %s ============\n" % file.path) 
                for line in file:
                    outfile.write(str(line))

def generate_preproc1(intermediate, settings):
    if 'preproc1' in settings['log_internal_state']:
        with open(settings['out'] + "_preproc1.log", 'w') as outfile:
            for element in intermediate:
                outfile.write(str(element)+"\n")
