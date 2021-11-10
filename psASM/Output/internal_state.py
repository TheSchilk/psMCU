
def generate_preproc1(intermediate, settings):
    with open(settings['out'] + "_preproc1.log", 'w') as outfile:
        for element in intermediate:
            outfile.write(str(element))
