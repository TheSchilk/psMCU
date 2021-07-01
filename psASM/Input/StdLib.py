"""Discovery and Loading of all included stdlib .psASM files"""

from os.path import dirname, join
from os import listdir
from Util.Errors import psASMException

STDLIB_STARTUP_NAME = 'std_startup.psASM'
STDLIB_FOOTER_NAME = 'std_footer.psASM'

required_files = [STDLIB_STARTUP_NAME, STDLIB_FOOTER_NAME]
stdlib_files = {}


def discover_stdlib_files():
    """Discover all stdlib assembly files included in the psASM source code. """
    stdlib_dir = join(dirname(__file__), 'StdLib')

    # Only use .psASM files, warn about stray files.
    for file_name in listdir(stdlib_dir):
        if file_name.endswith('.psASM'):
            with open(join(stdlib_dir, file_name), 'r') as file:
                file_lines = file.readlines()
                stdlib_files[file_name] = file_lines
        else:
            print('Warning: Discovered non-psASM file in stdlib directory (%s)!' % file_name)

    # Make sure all required files are here.
    for required_file in required_files:
        if required_file not in stdlib_files:
            raise psASMException('Did not discover required StdLib file %s.' % required_file)


def get_stdlib_file(path):
    """Get the content of a stdlib file as a list of lines."""

    # If stdlib files have not been discovered yet, discover
    if not stdlib_files:
        discover_stdlib_files()
    return stdlib_files[path]


def is_stdlib_file(path):
    """Check if a given path corresponds to a stdlib file."""

    # If stdlib files have not been discovered yet, discover
    if not stdlib_files:
        discover_stdlib_files()

    return path in stdlib_files
