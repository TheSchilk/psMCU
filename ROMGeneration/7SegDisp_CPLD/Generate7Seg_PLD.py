import sys
import csv

# Make sure we got passed a command line argument

if len(sys.argv) != 2:
    print("Received no or too many command line arguments!")
    print("Please specify a single .csv file!")
    sys.exit()

# Open CSV File
with open(sys.argv[1], 'r', newline='') as file:
    CSVFile = csv.reader(file, delimiter=';')

    # Consume the title row

    next(CSVFile)

    # Setup ROMs
    Outputs = []
    for i in range(0, 7):
        Outputs.append(list())

    # Iterate over line and add value to
    line_count = 0
    for line in CSVFile:
        if line_count >= 16:
            print('Too many lines in file!')
            sys.exit()

        for output_index in range(0, 7):
            # Extract value
            entry = line[output_index + 1]

            # Make the entry is either 1 or 0:
            if entry != '0' and entry != '1':
                print("Expected a 1 or 0 but got a '" + entry + "'")
                print("In the following line: ")
                print(line)
                sys.exit()

            # Append to Output
            Outputs[output_index].append(entry)
        line_count += 1

print("Successfully parsed CSV file")


output_pins = ['7seg_a', '7seg_b', '7seg_c', '7seg_d', '7seg_e', '7seg_f', '7seg_g']
input_pins = ['IN_0', 'IN_1', 'IN_2', 'IN_3']

for output_n, output in enumerate(Outputs):
    output_string = ""
    for input_val in range(0, 16):
        if output[input_val] == '1':
            if len(output_string) != 0:
                output_string += ' # '  # Separate individual terms with 'OR'
            output_string += '('

            for pin_n, input_pin in enumerate(input_pins):
                if pin_n != 0:
                    output_string += '&'

                # Check if this input pin should be HIGH or LOW:
                if (input_val & (1 << pin_n)) != 0:
                    output_string += input_pin
                else:
                    output_string += '(!'
                    output_string += input_pin
                    output_string += ')'

            output_string += ')'
    print(output_pins[output_n] + ' = ' + output_string + ';')


