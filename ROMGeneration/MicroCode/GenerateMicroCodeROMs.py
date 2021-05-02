#!/usr/bin/env python3
import sys
import csv
import os


def main():
    # Make sure we got passed a command line argument
    if len(sys.argv) < 2:
        print("Received too few command line arguments!")
        print("Please specify a single .csv file!")
        print("-i replaces files in ../Logisim/ROMs/ and ../ROMs/")
        sys.exit()

    # Open CSV File
    with open(sys.argv[1], 'r', newline='') as file:
        CSVFile = csv.reader(file, delimiter=',')

        # Read first line and extract description of file
        line0 = next(CSVFile)
        row_start = int(line0[0])  # Row in which the data starts
        col_start = int(line0[1])  # Column in which the data starts
        length = int(line0[2])  # Number of Entries for each ROM
        rom_count = int(line0[3])  # Number of ROMs

        print("Parsing " + str(rom_count) +
              " ROMs each with " + str(length) + " entries.")
        print("Looking for data starting in row " +
              str(row_start) + ", column " + str(col_start))

        # Consume the empty rows we don't care about
        for i in range(1, row_start):
            next(CSVFile)

        # Setup ROMs
        ROMs = []
        for i in range(0, rom_count):
            ROMs.append(list())

        # Iterate over line and add value to ROMs
        for line in CSVFile:
            for rom_index in range(0, rom_count):
                # Extract entries
                entries = line[(col_start + 8 * rom_index):(col_start + 8 * rom_index + 8)]

                # Make sure all entries are either 1 or 0:
                for val in entries:
                    if val != '0' and val != '1':
                        print("Expected a 1 or 0 but got a '" + val + "'")
                        print("In the following line: ")
                        print(line)
                        print("In the following range of entries: ")
                        print(range(col_start + 8 * rom_index,
                                    col_start + 8 * rom_index + 8))
                        sys.exit()

                # Convert the entries to number and append to rom
                val = ""
                for digit in entries:
                    val += digit

                # Have to reverse string because LSB is first in CSV
                ROMs[rom_index].append(
                    int(val[::-1], 2).to_bytes(1, byteorder='big', signed=False))

    print("Successfully parsed CSV file")

    # Generate normal ROM files
    for rom_index in range(0, rom_count):
        file_name = "MicroCodeROM" + str(rom_index) + ".bin"
        if '-i' in sys.argv:
            file_name = os.path.join('..', '..', 'ROMs', file_name)

        with open(file_name, mode='wb') as file:
            for value in ROMs[rom_index]:
                file.write(value)
            print("Generated "+file_name)

    # Generate LOGISIM style ROM files
    for rom_index in range(0, rom_count):
        file_name = "LogisimMicroCodeROM" + str(rom_index)
        if '-i' in sys.argv:
            file_name = os.path.join('..', '..', 'Logisim', 'ROMs', file_name)

        with open(file_name, mode='w') as file:
            file.write("v2.0 raw\n")
            count = 0
            for value in ROMs[rom_index]:
                count += 1
                file.write(value.hex())
                if count != 8:
                    file.write(" ")
                else:
                    count = 0
                    file.write("\n")
            print("Generated "+file_name)


if __name__ == '__main__':
    main()
