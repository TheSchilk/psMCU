
logging_level = 0
logging_reroute = None


def setup(settings, reroute_log_to=None):
    global logging_level
    global logging_reroute
    logging_level = settings['verbose']
    logging_reroute = reroute_log_to


def log(lvl, msg):
    global logging_level
    global logging_reroute
    if lvl <= logging_level:
        if logging_reroute is not None:
            logging_reroute.append(msg)
        else:  # pragma: no cover
            print(msg)
