import serial
import serial.tools.list_ports
from Package import Package, PackageType, PACKAGE_START, PACKAGE_TYPES, PACKAGE_HEADER_LENGTH


class SerialError(Exception):
    def __init__(self, msg, error_package=None):
        self.msg = msg
        self.error_package = error_package

    def __str__(self):
        error_text = "Programmer Error: " + self.msg

        if self.error_package is not None:
            if self.error_package.data_len != 0:
                try:
                    package_text = self.error_package.data.decode('ascii')
                    error_text += "\nError Response: " + package_text
                except UnicodeDecodeError:
                    error_text += "\nFailed to decode error package message."

        return error_text


def formatted_serial_list():
    port_list = serial.tools.list_ports.comports()
    lg = len(port_list)
    if lg == 0:
        msg = "No serial ports found...."
    else:
        msg = str(lg) + " Serial port(s) found:"
        for p in port_list:
            msg += "\n" + p.device + ": " + p.description

    return msg.rstrip('\n')


def _select_port(serial_port):
    port_list = serial.tools.list_ports.comports()

    if serial_port is None:
        # No port specified, select first one in list:
        if len(port_list) > 0:
            return port_list[0].device
        else:
            raise SerialError("No Serial Ports Found!")
    else:
        # Port specified, make sure it exists:
        for port in port_list:
            if port.device == serial_port:
                return serial_port

        raise SerialError("Specified serial port \'" + serial_port + "\' not found!")


class SerialInterface:
    def __init__(self, serial_port):
        self.serial_port = _select_port(serial_port)
        self.com = None
        pass

    def __enter__(self):
        self.open()
        return self

    def open(self):
        try:
            self.com = serial.Serial(self.serial_port, 115200, timeout=1.5, write_timeout=1)
            self.com.reset_input_buffer()
            self.com.reset_output_buffer()
        except serial.SerialException:
            raise SerialError("Failed to open port!")

        # Send and generate a status-request package:
        get_status_package = Package(package_type=PackageType.CMD_STATUS)
        self.send_package(get_status_package)

        # Get response, make sure we are ok
        response = self.receive_package()
        if response.package_type == PackageType.RESP_ERR:
            raise SerialError("Received ERROR response to initial status request!", error_package=response)
        elif response.package_type != PackageType.RESP_OK:
            raise SerialError("Received incorrect response to initial status request!")

        print("Connected to psPROG.")

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.close()

    def close(self):
        self.com.close()
        print("Connection closed.")

    def send_package(self, package):
        try:
            self.com.write(package.to_binary())
        except serial.SerialTimeoutException:
            raise SerialError("Transmission timed out!")
        except serial.SerialException:
            raise SerialError("Serial port error!")

    def receive_package(self):
        # Receive header:
        package = self._receive_header()

        # Receive data:
        try:
            package.data = self.com.read(package.data_len)
            if len(package.data) != package.data_len:
                raise SerialError("Reception timed out, or package did not send as much data as announced!")
        except serial.SerialException:
            raise SerialError("Serial port error!")
        # Check checksum
        if not package.checksum == package.calc_fletcher16_checksum():
            raise SerialError("Response checksum incorrect!")

        return package

    def _receive_header(self):
        try:
            binary_header = self.com.read(PACKAGE_HEADER_LENGTH)
            if len(binary_header) != PACKAGE_HEADER_LENGTH:
                raise SerialError("Reception timed out!")
        except serial.SerialException:
            raise SerialError("Serial port error!")

        package = Package.from_binary_header(binary_header)

        if package.start != PACKAGE_START:
            raise SerialError("Package start did not match!")

        if package.package_type not in PACKAGE_TYPES:
            raise SerialError("Unknown package type!")

        return package
