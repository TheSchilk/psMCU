from os.path import dirname, join
from os import listdir
from Errors import psASMException

stdlib_startup_name = 'stdlib_startup.psASM'
stdlib_footer_name = 'stdlib_footer.psASM'

required_files = [stdlib_startup_name, stdlib_footer_name]
stdlib_files = {}


def discover_stdlib_files():
    dir = join(dirname(__file__), 'StdLib')

    for file_name in listdir(dir):
        if file_name.endswith('.psASM'):
            with open(join(dir, file_name), 'r') as file:
                file_lines = [line for line in file]
                stdlib_files[file_name] = file_lines
        else:
            print('Warning: Discovered non-psASM file in stdlib directory (%s)!' % file_name)

    for required_file in required_files:
        if required_file in stdlib_files:
            raise psASMException('Error: Did not discover required stdlib file %s!' % required_file)

    if not stdlib_files:
        print('Warning: Did not discover any stdlib files!')


def get_stdlib_file(path):
    if not stdlib_files:
        discover_stdlib_files()
    return stdlib_files[path]


def is_stdlib_file(path):
    if not stdlib_files:
        discover_stdlib_files()
    return path in stdlib_files
