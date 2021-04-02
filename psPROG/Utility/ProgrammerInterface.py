from SerialInterface import SerialInterface
from Package import *

slots = range(16)
sub_sectors_in_slot = range(16)


class ProgrammerError(Exception):
    def __init__(self, msg, error_package=None):
        self.msg = msg
        self.error_package = error_package

    def __str__(self):
        error_text = "Programmer Error: " + self.msg

        if self.error_package is not None:
            try:
                package_text = self.error_package.data.decode('ascii')
                error_text += "\nError Response: " + package_text
            except UnicodeDecodeError:
                error_text += "\nFailed to decode error package message."

        return error_text


def _check_response(package, expected):
    if package.package_type == expected:
        return
    elif package.package_type == PackageType.RESP_ERR:
        raise ProgrammerError("Got error response!", error_package=package)
    else:
        raise ProgrammerError("Got unexpected response!")


class ProgrammerInterface:
    def __init__(self, serial_port):
        self.serial_interface = SerialInterface(serial_port)

    def __enter__(self):
        self.serial_interface.open()
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.serial_interface.close()

    def perform_action(self, action):
        if action.action == "erase_all":
            self._erase_all()
            print("All slots erased.")
            return

        if action.action == "erase_slot":
            self._erase_slot(action.slot)
            print("Slot %i erased." % action.slot)
            return

        if action.action == "read_all":
            filename = action.file
            if filename.endswith('.bin'):
                filename = filename.rsplit(".", 1)[0]
            for slot in slots:
                self._read_slot(filename + "_" + str(slot), slot)
                print("Slot %i read." % slot)
            return

        if action.action == "read_slot":
            self._read_slot(action.file, action.slot)
            print("Slot %i read." % action.slot)
            return

        if action.action == "write_slot":
            self._erase_slot(action.slot)
            print("Slot %i erased." % action.slot)
            self._write_slot(action.file, action.slot)
            print("Slot %i written." % action.slot)
            return

        if action.action == "disable_breakpoint":
            self._config_breakpoint(0, 0)
            print("Breakpoint set.")
            return

        if action.action == "set_breakpoint":
            self._config_breakpoint(1, action.breakpoint_adr)
            print("Breakpoint set.")
            return

    def _erase_all(self):
        # Generate 'Erase all' package:
        package_tx = Package(package_type=PackageType.CMD_ERASE_ALL)

        # Send package, get response, make sure there was no error.
        self.serial_interface.send_package(package_tx)
        package_rx = self.serial_interface.receive_package()
        _check_response(package_rx, PackageType.RESP_OK)

    def _erase_slot(self, slot):
        # Erase all 4 sectors that compose a single slot:
        for sector in range(slot << 2, (slot + 1) << 2):
            # Calculate first sub-sector in each sector:
            sub_sector = sector << 2

            # Generate 'Erase sector' package:
            package_tx = Package(package_type=PackageType.CMD_ERASE_SECTOR, sub_sector=sub_sector)

            # Send package, get response, make sure there was no error.
            self.serial_interface.send_package(package_tx)
            package_rx = self.serial_interface.receive_package()
            _check_response(package_rx, PackageType.RESP_OK)

    def _read_slot(self, filename, slot):
        if not filename.endswith('.bin'):
            filename = filename + '.bin'

        with open(filename, 'wb') as file:
            for sub_sector in sub_sectors_in_slot:
                # Generate 'Read sub-sector' package:
                package_tx = Package(package_type=PackageType.CMD_READ_SUBSECTOR, sub_sector=slot * 16 + sub_sector)

                # Send package, get response, make sure it was of correct type:
                self.serial_interface.send_package(package_tx)
                package_rx = self.serial_interface.receive_package()
                _check_response(package_rx, PackageType.RESP_READ_SUBSECTOR)

                # Sanity check (is always set by programmer)
                if package_rx.data_len != 0x800:
                    raise ProgrammerError("Expected package to have data-length of 0x800!")

                # write to file:
                file.write(package_rx.data)

    def _write_slot(self, filename, slot):
        with open(filename, 'rb') as file:
            for sub_sector in sub_sectors_in_slot:
                # Read up to one sub sector from the file:
                data = file.read(0x800)
                data_length = len(data)

                # Write sub sector
                package_tx = Package(package_type=PackageType.CMD_WRITE_SUBSECTOR, sub_sector=slot * 16 + sub_sector,
                                     data_len=data_length, data=data)

                # Send package, get response, make sure there was no error.
                self.serial_interface.send_package(package_tx)
                package_rx = self.serial_interface.receive_package()
                _check_response(package_rx, PackageType.RESP_OK)

                # If the file ended already, finish
                if data_length != 0x800:
                    break

            # Make sure the file is finished:
            b = file.read(1)
            if b:
                print("Warning! File is longer than a single ROM slot! The end of the file was not written to ROM.")

    def _config_breakpoint(self, en, adr):
        # Generate breakpoint package:
        data, length = generate_breakpoint_data_block(en, adr)
        package_tx = Package(package_type=PackageType.CMD_CONFIG_BREAKPOINT, data_len=length, data=data)

        # Send package, get response, make sure there was no error.
        self.serial_interface.send_package(package_tx)
        package_rx = self.serial_interface.receive_package()
        _check_response(package_rx, PackageType.RESP_OK)
