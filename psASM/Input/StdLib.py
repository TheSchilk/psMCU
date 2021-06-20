from os.path import dirname, join
from os import listdir
from Util.Errors import psASMException

stdlib_startup_name = 'std_startup.psASM'
stdlib_footer_name = 'std_footer.psASM'

required_files = [stdlib_startup_name, stdlib_footer_name]
stdlib_files = {}


def discover_stdlib_files():
    stdlib_dir = join(dirname(__file__), 'StdLib')

    for file_name in listdir(stdlib_dir):
        if file_name.endswith('.psASM'):
            with open(join(stdlib_dir, file_name), 'r') as file:
                file_lines = [line for line in file]
                stdlib_files[file_name] = file_lines
        else:
            print('Warning: Discovered non-psASM file in stdlib directory (%s)!' % file_name)

    for required_file in required_files:
        if required_file not in stdlib_files:
            raise psASMException('Did not discover required StdLib file %s.' % required_file)


def get_stdlib_file(path):
    if not stdlib_files:
        discover_stdlib_files()
    return stdlib_files[path]


def is_stdlib_file(path):
    if not stdlib_files:
        discover_stdlib_files()
    return path in stdlib_files
