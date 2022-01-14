from typing import List

from Util.Errors import ErrorDirectiveException, LocatedException, EvalException
from Util.Log import log

from Input.SourceFile import SourceFiles, SourceFile

import Parsing.Parser as Parser
from Parsing.ParsedFile import ParsedFiles
import Parsing.ParsedLine as ParsedLine

from PreProc.Context import Context, FileContextManager
from PreProc.PseudoFileGenerator import PreProcRootFile

from Output.Instruction import Instruction
import Output.internal_state

from collections import deque
from copy import deepcopy


def _evaluate_args(in_list: List[ParsedLine.InstructionLine]):
    for line in in_list:
        try:
            line.evaluate_args()
        except LocatedException as exc:
            exc.decorate_line_id(line.line_id)
            exc.decorate_file_id(line.file_id)
            raise exc


def _define_labels(in_list: List[ParsedLine.InstructionLine]):
    for adr, line in enumerate(in_list):
        try:
            line.register_labels(adr)
        except LocatedException as exc:
            exc.decorate_line_id(line.line_id)
            exc.decorate_file_id(line.file_id)
            raise exc


def _associate_labels(in_list):
    result = []

    in_queue = deque(in_list)

    while in_queue:
        next_line = in_queue.popleft()
        try:
            if isinstance(next_line, ParsedLine.LabelsLine):
                did_associate = False
                for look_ahead in in_queue:
                    if isinstance(look_ahead, ParsedLine.InstructionLine):
                        look_ahead.add_labels_line(next_line)
                        did_associate = True
                        break
                if not did_associate:
                    raise EvalException("Trailing labels line.")

            if isinstance(next_line, ParsedLine.InstructionLine):
                result.append(next_line)
        except LocatedException as exc:
            exc.decorate_line_id(next_line.line_id)
            exc.decorate_file_id(next_line.file_id)
            raise exc

    return result


class PreProc:
    def __init__(self,  source_files: SourceFiles, parsed_files: ParsedFiles, settings):
        self.source_files = source_files
        self.parsed_files = parsed_files
        self.settings = settings
        self.g_context = Context()

        # Add all definitions passed by cmdline args to global context:
        for name, value in self.settings['define']:
            self.g_context[name] = value

    def process(self):
        # Generate and back-populate preproc root file
        header_footer_id = self._back_populate_source_file(PreProcRootFile(self.settings))
        Output.internal_state.generate_parsedfiles(self.source_files, self.parsed_files, self.settings)

        # Include Files, Build Contexts, Run
        intermediate = self._pre_proc_file(header_footer_id)
        Output.internal_state.generate_preproc(intermediate, self.settings, 'preproc1')

        # Associate labels
        intermediate = _associate_labels(intermediate)
        Output.internal_state.generate_preproc(intermediate, self.settings, 'preproc2')

        # Define label addr
        _define_labels(intermediate)
        # Evaluate instruction expressions
        _evaluate_args(intermediate)
        Output.internal_state.generate_preproc(intermediate, self.settings, 'preproc3')

        # Now, convert each instruction line into an actual Instruction:
        result = []
        for line in intermediate:
            result.append(Instruction.from_preproc_line(line))

        # Check that program will fit
        prog_length = len(result)
        prog_usage = prog_length*100/(2**14)
        log(1, "PreProc: Finished. Final program is %i instructions (%.2f%% of ROM)" % (prog_length, prog_usage))
        if prog_length > 2**14:
            print("Warning: Program size exceeds memory size.")

        return result

    def _back_populate_source_file(self, source_file: SourceFile):
        # try:
        log(1, "PreProc: Back-populating %s" % source_file.path)
        file_id = self.source_files.next_id()

        # Set file-id and add to source files:
        source_file.file_id = file_id
        self.source_files.add_file(source_file)

        # Parse and add to parsed files:
        parsed_file = Parser.parse_source_file(source_file)
        self.parsed_files.add_parsed_file(parsed_file)

        return file_id

    def _pre_proc_file(self, file_id):
        parsed_file = self.parsed_files[file_id]
        result = []

        # only include file if it should be
        # (I.e. not marked 'include_once' and not already included)
        path = self.source_files.get_file_path(file_id)
        if not parsed_file.should_include():
            log(1, "PreProc: Did not process/inline %s again because of @include_once directive." % path)
            return result
        else:
            log(1, "PreProc: Processing & inlining %s" % path)

        # Note that this file has been included at least once
        parsed_file.mark_inclusion()

        # Input queue
        in_queue = deque(deepcopy(parsed_file.content))

        file_context_handler = FileContextManager(self.g_context)

        # Process each line
        while in_queue:
            peek = in_queue[0]
            try:
                # If this is an empty line, ignore it:
                if isinstance(peek, ParsedLine.EmptyLine):
                    in_queue.popleft()
                    continue

                # If this is an include statement, process the file and add content to front-of-queue
                if isinstance(peek, ParsedLine.IncludeDirective):
                    include_directive = in_queue.popleft()
                    include_directive.set_context(file_context_handler.get_fixed_context_view())
                    # Retrieve file id
                    included_file_id = self.source_files.get_file_id(include_directive.get_file_name())

                    # Process file
                    content = self._pre_proc_file(included_file_id)
                    result.extend(content)
                    continue

                # If this is an include_once statement, mark current file:
                if isinstance(peek, ParsedLine.IncludeOnceDirective):
                    in_queue.popleft()
                    parsed_file.set_include_once()
                    continue

                # If this is a print directive, print:
                if isinstance(peek, ParsedLine.PrintDirective):
                    print_directive = in_queue.popleft()
                    # Get text
                    print_directive.set_context(file_context_handler.get_fixed_context_view())
                    text = print_directive.text()
                    # Print
                    print(text)
                    continue

                # If this is an error directive, raise error:
                if isinstance(peek, ParsedLine.ErrorDirective):
                    error_directive = in_queue.popleft()
                    # Get text
                    error_directive.set_context(file_context_handler.get_fixed_context_view())
                    text = error_directive.text()
                    raise ErrorDirectiveException(text,
                                                  line_id=error_directive.line_id,
                                                  file_id=error_directive.file_id)

                # If this is a conditional directive, evaluate and add correct block to front-of-queue
                if isinstance(peek, ParsedLine.IfDirective):
                    if_directive = in_queue.popleft()
                    # Eval and get block:
                    if_directive.set_context(file_context_handler.get_fixed_context_view())
                    block = if_directive.get_block()
                    # Add block to queue
                    in_queue = deque(block) + in_queue
                    continue

                # if this a definition, define it
                # TODO this should be the 'eval directive'
                if isinstance(peek, ParsedLine.DefineDirective):
                    define_directive = in_queue.popleft()

                    # Get name and value:
                    context = file_context_handler.get_fixed_context_view()
                    name = define_directive.name
                    if define_directive.value is not None:
                        value = define_directive.value.eval(context)
                    else:
                        value = None

                    # Define
                    file_context_handler[name.eval_identifier()] = value
                    continue

                # if this a macro directive, add it to the current context
                if isinstance(peek, ParsedLine.MacroDirective):
                    macro_directive = in_queue.popleft()
                    file_context_handler[macro_directive.name.eval_identifier()] = macro_directive
                    continue

                # If this a macro expansion, inline it with the correct arguments.
                if isinstance(peek, ParsedLine.MacroExpansionDirective):
                    # But first, if it has labels, generate a seperate labels line:
                    if peek.labels:
                        labels_line = ParsedLine.LabelsLine(peek.labels)
                        peek.labels = []
                        in_queue.appendleft(labels_line)
                    else:
                        expansion_directive = in_queue.popleft()
                        file_context_handler.handle_new_block(expansion_directive.labels)
                        # Retrieve macro:
                        context_view = file_context_handler.get_fixed_context_view()
                        macro_directive = expansion_directive.retrieve_macro(context_view)
                        # Generate block and add to queue
                        block = macro_directive.expand(expansion_directive.args)
                        in_queue = deque(block) + in_queue
                    continue

                # If this a for loop, unroll and inline it
                if isinstance(peek, ParsedLine.ForLoopDirective):
                    loop_directive = in_queue.popleft()
                    # Generate block and add to queue
                    block = loop_directive.expand()
                    in_queue = deque(block) + in_queue
                    continue

                # If this is an instruction or labels line, give it the current context_view, note labels in context,
                # and add it to the output
                if isinstance(peek, ParsedLine.InstructionLine) or isinstance(peek, ParsedLine.LabelsLine):
                    line = in_queue.popleft()
                    file_context_handler.handle_new_block(line.labels)
                    line.set_context(file_context_handler.get_fixed_context_view())
                    for label in line.labels:
                        file_context_handler[label.eval_identifier()] = None
                    result.append(line)
                    continue

                raise Exception('Unhandeled line type in PreProc.')  # pragma: no cover
            except LocatedException as exc:
                exc.decorate_line_id(peek.line_id)
                exc.decorate_file_id(peek.file_id)
                raise exc

        return result
