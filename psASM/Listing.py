from Errors import ParsingException
import BaseInstruction
import TextParsing
import Instructions


class LineContext:
    def __init__(self, file, line_num, line_text):
        self.file = file
        self.line_num = line_num
        self.line_text = line_text

    def location(self):
        return self.file + ":" + str(self.line_num)


class InstructionLine:

    def __init__(self, line_context):
        self.context = line_context
        self.label, self.op, self.args = TextParsing.parse_instruction(line_context)
        self.inst = None

    def generate_instruction(self):
        self.inst = Instructions.generate_instruction(self)

    def insert_definition(self, name, value):
        for i in range(0, len(self.args)):
            if self.args[i] == name:
                self.args[i] = value

    def __str__(self):
        return "(Line @ " + self.context.location() + ", " \
               + str(self.label) + ", " + self.op + ", " + str(self.args) + " )"


class Listing:
    def __init__(self, file_name, taken_names):
        self.file_name = file_name
        self.instruction_list = []
        self.end_instruction_list = []
        self.definitions = {}
        self.taken_names = taken_names
        self.binary_listing = []

        # Open file and parse each line
        with open(file_name, 'r') as file:

            line_count = 0
            for line in file:
                line_count += 1
                context = LineContext(file_name, line_count, line)

                # Get rid of any whitespace at the front or end
                context.line_text = context.line_text.strip()

                # If the line is empty, move on to next line
                if context.line_text == '':
                    continue

                # If this is a comment, move on to next line
                if TextParsing.is_comment(context):
                    continue

                # If this is a include directive, load the file,
                # parse it, and store it to be appended to this file
                if TextParsing.is_include(context):

                    included_file_name = TextParsing.parse_include(context)
                    try:
                        # Turn that include (and any includes it may include) into a listing in it's own right
                        # Pass all names that are already taken to detect name collisions
                        included_listing = Listing(included_file_name, self.taken_names)

                        # Save all instructions to be added at the end of this listing
                        self.end_instruction_list += included_listing.instruction_list

                        # Add all new definitions to the definitions list
                        for new_definition_name in included_listing.definitions:
                            self.definitions[new_definition_name] = included_listing.definitions[new_definition_name]

                        # The list of taken names of the new listing will include all previously taken names
                        # and the names taken up in it's listing.
                        # Use that as the new list of already taken name
                        self.taken_names = included_listing.taken_names

                    except FileNotFoundError:
                        raise ParsingException(context, "File not found!")

                    continue  # move on to next line

                # If this is a definition directive:
                if TextParsing.is_definition(context):
                    # Parse it
                    name, value = TextParsing.parse_definition(context)

                    # Ensure there is not already a label or definition by that name
                    if name in self.taken_names:
                        raise ParsingException(context, "Name Collision: \'" + name + "\'")

                    # Add it to the list
                    self.definitions[name] = value
                    self.taken_names.append(name)

                    continue  # move on to next line

                # This must be an instruction
                inst_line = InstructionLine(context)

                # Check that if there is a label, that name is not already taken:
                if inst_line.label is not None:
                    if inst_line.label in self.taken_names:
                        raise ParsingException(context, "Name Collision: \'" + inst_line.label + "\'")

                    # Add it to the list of taken names
                    self.taken_names.append(inst_line.label)

                # Add the line to the listing
                self.instruction_list.append(inst_line)

        # Add all the instructions from the included files to the end
        self.instruction_list += self.end_instruction_list

    def print(self):
        for instruction_line in self.instruction_list:
            print(instruction_line)

    def convert_labels(self):
        for adr in range(0, len(self.instruction_list)):
            label = self.instruction_list[adr].label
            if label != '':
                self.definitions[label] = str(adr)

    def insert_definitions(self):
        for definition_name in self.definitions:
            for line in self.instruction_list:
                line.insert_definition(definition_name, self.definitions[definition_name])

    def generate_instructions(self):
        for line in self.instruction_list:
            line.generate_instruction()
            self.binary_listing.append(line.inst.binary)
