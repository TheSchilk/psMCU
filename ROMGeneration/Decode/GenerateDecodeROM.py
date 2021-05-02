#!/usr/bin/env python3
import sys
import csv


def insert_value(input_entries, value_to_insert):
    value = ""
    wildcard_index = 0
    for bit in reversed(input_entries):
        if bit in ['0', '1']:
            value = bit + value
        else:
            value = str((value_to_insert >> wildcard_index) & 1) + value
            wildcard_index += 1

    return int(value, 2)


def possible_values(input_entries):
    possibles = []
    wildcard_count = input_entries.count('x')
    for n in range(2 ** wildcard_count):
        possibles.append(insert_value(input_entries, n))
    return possibles


def main():
    # Make sure we got passed an command line argument
    if len(sys.argv) != 2:
        print("Received no or too many command line arguments!")
        print("Please specify a single .csv file!")
        sys.exit(1)

    # Open CSV File
    with open(sys.argv[1], 'r', newline='') as file:
        CSVFile = csv.reader(file, delimiter=',')

        # Read first line and extract description of file
        line0 = next(CSVFile)
        row_start = int(line0[0])  # Row in which the data starts
        col_start = int(line0[1])  # Column in which the data starts
        input_width = int(line0[2])  # Input bit-width

        print("Parsing a " + str(input_width) + "-in Lookup ROM")
        print("Looking for data starting in row " + str(row_start) + ", column " + str(col_start))

        # Consume the empty rows we don't care about
        for i in range(1, row_start):
            next(CSVFile)

        ROM = [None] * (2 ** input_width)

        # Iterate over line and add value to ROMs
        for line in CSVFile:
            # Extract input entries
            input_entries = line[col_start:col_start + input_width]

            # Make sure all entries are either 1, 0, or x:
            valid_chars = ['0', '1', 'x']
            for val in input_entries:
                if val not in valid_chars:
                    print("Expected a 1/0/x but got a '" + val + "'")
                    print("In the following line: ")
                    print(line)
                    sys.exit(1)

            covered_inputs = possible_values(input_entries)

            # Extract output entry
            output_code = line[col_start + input_width]

            # Attempt to convert it to an int in the range(0,256)
            try:
                output_value = int(output_code, 0)
            except ValueError:
                print("Could not convert output '" + str(output_code) + "' to number!")
                print("In the following line: ")
                print(line)
                sys.exit(1)

            if output_value not in range(0, 256):
                print("Output '" + str(output_code) + "' is out-of-bounds!")
                print("In the following line: ")
                print(line)
                sys.exit(1)

            # Insert entry into ROM:
            for input_val in covered_inputs:
                if ROM[input_val] is None:
                    ROM[input_val] = output_value.to_bytes(1, byteorder='big')
                else:
                    print("Redefined same input " + bin(i) + "!")
                    print("In the following line: ")
                    print(line)
                    sys.exit(1)

        # Make sure all inputs are defined:
        not_full = False
        undef_count = 0
        for i, value in enumerate(ROM):
            if value is None:
                print('Error: undefined input '+bin(i)+'!')
                undef_count += 1

        if undef_count != 0:
            print('Undefined Inputs: '+str(undef_count))
            sys.exit(1)

    print("Successfully parsed CSV file")

    # Generate normal ROM file
    file_name = "DecodeROM.bin"
    with open(file_name, mode='wb') as file:
        for value in ROM:
            file.write(value)
        print("Generated " + file_name)

    # Generate LOGISIM style ROM files
    file_name = "LogisimDecodeROM"
    with open(file_name, mode='w') as file:
        file.write("v2.0 raw\n")
        count = 0
        for value in ROM:
            count += 1
            file.write(value.hex())
            if count != 8:
                file.write(" ")
            else:
                count = 0
                file.write("\n")
        print("Generated " + file_name)


if __name__ == '__main__':
    main()
