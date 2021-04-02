import argparse


class ArgumentException(Exception):
    def __init__(self, msg):
        self.msg = msg

    def __str__(self):
        return self.msg


class Action:
    def __init__(self, action, file=None, slot=None, breakpoint_adr=None):
        self.file = file

        actions = ['list_serial',
                   'erase_all',
                   'erase_slot',
                   'read_all',
                   'read_slot',
                   'write_slot',
                   'disable_breakpoint',
                   'set_breakpoint']

        self.action = action
        # Check that action is valid (Should always be valid)
        if action not in actions:
            raise Exception("Unknown action.")

        # Parse slot if present
        if slot is not None:
            try:
                self.slot = int(slot, 0)
                if self.slot not in range(16):
                    raise ValueError
            except ValueError:
                raise ArgumentException("Invalid slot: \'" + slot + "\'!")
        else:
            self.slot = slot

        # Parse breakpoint adr if present
        if breakpoint_adr is not None:
            try:
                self.breakpoint_adr = int(breakpoint_adr, 0)
                if self.breakpoint_adr not in range(2 ** 14):
                    raise ValueError
            except ValueError:
                raise ArgumentException("Invalid breakpoint address: \'" + breakpoint_adr + "\'!")
        else:
            self.breakpoint_adr = breakpoint_adr


def parse_args(args):
    parser = argparse.ArgumentParser(prog="psPROG.py", description="psPROG Programmer Utility for psMCU.")

    parser.add_argument("-s", '--serial',
                        required=False,
                        metavar='serial-id',
                        help='Select serial port. See --list-serial for list of available ports. Will default to first '
                             'element in that list.')

    parser_operations = parser.add_mutually_exclusive_group(required=True)

    parser_operations.add_argument("-S", '--list-serial',
                                   action="store_true",
                                   help='List all available serial devices.')

    parser_operations.add_argument('-X', '--erase-all',
                                   action="store_true",
                                   help='Erase single slot.')

    parser_operations.add_argument('-x', '--erase-slot',
                                   metavar='slot',
                                   help='Erase single slot.')

    parser_operations.add_argument('-R', '--read-all',
                                   metavar='file',
                                   help='Read all slots.')

    parser_operations.add_argument('-r', '--read-slot',
                                   nargs=2,
                                   metavar=('slot', 'file'),
                                   help='Read single slot.')

    parser_operations.add_argument('-w', '--write-slot',
                                   nargs=2,
                                   metavar=('slot', 'file'),
                                   help='Write single slot.')

    parser_operations.add_argument('-B', '--set-breakpoint',
                                   metavar="adr",
                                   help='Set breakpoint address and enable the hardware breakpoint.')

    parser_operations.add_argument('-b', '--disable-breakpoint',
                                   action="store_true",
                                   help='Disable the breakpoint')

    args.pop(0)
    parsed_args = parser.parse_args(args)

    if parsed_args.list_serial:
        action = Action('list_serial')

    elif parsed_args.erase_all:
        action = Action('erase_all')

    elif parsed_args.erase_slot is not None:
        action = Action('erase_slot',
                        slot=parsed_args.erase_slot)

    elif parsed_args.read_all is not None:
        action = Action('read_all',
                        file=parsed_args.read_all)

    elif parsed_args.read_slot is not None:
        action = Action('read_slot',
                        slot=parsed_args.read_slot[0],
                        file=parsed_args.read_slot[1])

    elif parsed_args.write_slot is not None:
        action = Action('write_slot',
                        slot=parsed_args.write_slot[0],
                        file=parsed_args.write_slot[1])

    elif parsed_args.disable_breakpoint:
        action = Action('disable_breakpoint')

    elif parsed_args.set_breakpoint is not None:
        action = Action('set_breakpoint',
                        breakpoint_adr=parsed_args.set_breakpoint)
    else:
        raise Exception("No action detected?")

    return action, parsed_args.serial
