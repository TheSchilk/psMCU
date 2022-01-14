from Util.Log import log

from Input.SourceFile import SourceFile
from Input.StdLib import STDLIB_FOOTER_NAME, STDLIB_STARTUP_NAME


class PreProcRootFile(SourceFile):
    def __init__(self, settings):
        # noinspection PyListCreation
        content = []

        content.append("#"+"\n")
        content.append("# Root Header/Footer file"+"\n")
        content.append("# (Automatically generated)"+"\n")
        content.append("#"+"\n")
        content.append("\n")
        content.append("\n")

        # Startup
        content.append("# Startup file"+"\n")
        content.append("# Handles branch to entry point and interrupt."+"\n")
        startup_line = '@include "%s"' % STDLIB_STARTUP_NAME
        if settings['no_startup']:
            log(1, "PreProc: Disabled startup file")
            startup_line = '# ' + startup_line + " # Disabled by '-s' flag."
        content.append(startup_line + "\n")
        content.append("\n")

        # Program
        content.append("# Main Program"+"\n")
        program_line = '@include "%s"' % settings['input_file']
        content.append(program_line + "\n")
        content.append("\n")

        # Footer
        content.append("# Footer file"+"\n")
        content.append("# Adds infinite loop to end of program to prevent overrun."+"\n")
        footer_line = '@include "%s"' % STDLIB_FOOTER_NAME
        if settings['no_footer']:
            log(1, "PreProc: Disabled footer file")
            footer_line = '# ' + footer_line + " # Disabled by '-f' flag."
        content.append(footer_line + "\n")
        content.append("\n")
        super().__init__(None, "_preproc_root_autogen.psASM", content, True)
