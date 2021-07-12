
logging_level = 0


def setup(settings):
    global logging_level
    logging_level = settings['verbose']


def log(lvl, msg):
    global logging_level
    if lvl <= logging_level:
        print(msg)
