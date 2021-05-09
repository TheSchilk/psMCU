from enum import Enum
import struct

binary_header_length = 12


class PackageType(Enum):
    CMD_STATUS = b'\x00'
    CMD_CONFIG_BREAKPOINT = b'\x01'
    CMD_ERASE_ALL = b'\x02'
    CMD_ERASE_SECTOR = b'\x03'
    CMD_WRITE_SUBSECTOR = b'\x04'
    CMD_READ_SUBSECTOR = b'\x05'
    CMD_HOLD_RESET = b'\x06'
    CMD_RELEASE_RESET = b'\x07'

    RESP_OK = b'\x80'
    RESP_ERR = b'\x81'
    RESP_READ_SUBSECTOR = b'\x82'


PACKAGE_TYPES = [e for e in PackageType]

PACKAGE_START = b'psPROG'

PACKAGE_HEADER_LENGTH = 12


def generate_breakpoint_data_block(en, adr):
    data = struct.pack("<BH", en, adr)
    length = 3
    return data, length


def _fletcher16_step(b, c0, c1):
    c0 = (c0 + b) & 0xff
    c1 = (c1 + c0) & 0xff
    return c0, c1


class Package:
    def __init__(self, package_type, start=b'psPROG', sub_sector=0, data_len=0, data=None, checksum=None):
        self.start = start
        self.package_type = package_type
        self.sub_sector = sub_sector
        self.data_len = data_len
        self.checksum = checksum
        self.data = data

    @classmethod
    def from_binary_header(cls, header):
        (start, package_type, sub_sector, data_len, checksum) = struct.unpack('<6scBHH', header)
        return Package(PackageType(package_type), start, sub_sector, data_len, checksum=checksum)

    def to_binary(self):
        if self.data is not None:
            self.data_len = len(self.data)
        else:
            self.data_len = 0

        self.checksum = self.calc_fletcher16_checksum()
        binary = struct.pack('<6scBHH', self.start, self.package_type.value, self.sub_sector, self.data_len,
                             self.checksum)

        if self.data is not None and self.data_len != 0:
            binary = binary + self.data

        return binary

    def calc_fletcher16_checksum(self):
        c0 = 0
        c1 = 0

        # pack all relevant header fields into a single bytes object:
        # (Checksum is excluded)
        header_checksum_bytes = struct.pack('<6scBH', self.start, self.package_type.value, self.sub_sector,
                                            self.data_len)

        # Add header fields to checksum:
        for b in header_checksum_bytes:
            c0, c1 = _fletcher16_step(b, c0, c1)

        # Add data to checksum:
        if self.data_len != 0:
            for b in self.data:
                c0, c1 = _fletcher16_step(b, c0, c1)

        # Get final checksum
        checksum = (c1 << 8) | c0
        return checksum
