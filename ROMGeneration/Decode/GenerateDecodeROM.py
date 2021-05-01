import sys
import csv

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

    ROM = []
    next_input_start = 0

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

        # Concat input_entries into a single input string
        input_code = ""
        for digit in input_entries:
            input_code += digit

        # Calculate the minimum and maximum input this string corresponds to:
        min_input = int(input_code.replace('x', '0'), 2)
        max_input = int(input_code.replace('x', '1'), 2)
        input_length = max_input - min_input + 1

        # Make sure the inputs are not out-of-order, and nothing is missing:
        if min_input != next_input_start:
            print("Expected next entry to start at " + str(next_input_start) +
                  ", but it started at " + str(min_input) + "!")
            print("In the following line: ")
            print(line)
            sys.exit(1)

        # Extract output entry
        output_code = line[col_start + input_width]

        # Attempt to convert it to an int in the range(0,256)
        try:
            output_value = int(output_code, 0)
        except ValueError as e:
            print("Could not convert output '" + str(output_code) + "' to number!")
            print("In the following line: ")
            print(line)
            sys.exit(1)

        if output_value not in range(0, 256):
            print("Output '" + str(output_code) + "' is out-of-bounds!")
            print("In the following line: ")
            print(line)
            sys.exit(1)

        # Append entries to ROM
        for i in range(input_length):
            ROM.append(output_value.to_bytes(1, byteorder='big', signed=False))
        next_input_start += input_length

    # Make sure all inputs are defined:
    if next_input_start != 2**input_width:
        print("File ends prematurely, expected inputs up to " + str(2**input_width-1) +
              ". Last input was "+str(next_input_start-1)+"!")
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
