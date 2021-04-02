#!/usr/bin/env python3
import UI
import sys
from ProgrammerInterface import ProgrammerInterface, ProgrammerError
import SerialInterface


def main(argv):
    # Parse argv to get requested action:
    try:
        requested_action, serial_port = UI.parse_args(argv)
    except UI.ArgumentException as e:
        print(e)
        sys.exit(1)

    # If list of serial ports requested, do so:
    if requested_action.action == 'list_serial':
        print(SerialInterface.formatted_serial_list())
        sys.exit(0)
    else:
        # Otherwise, communicate with Programmer to perform requested action:
        try:
            with ProgrammerInterface(serial_port) as interface:
                interface.perform_action(requested_action)
        except SerialInterface.SerialError as e:
            print(e)
            sys.exit(1)
        except FileNotFoundError as e:
            print("File not found!")
            sys.exit(1)
        except ProgrammerError as e:
            print(e)
            sys.exit(1)


if __name__ == "__main__":
    main(sys.argv.copy())
    sys.exit(0)
