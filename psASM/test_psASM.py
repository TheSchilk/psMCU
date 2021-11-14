import os
import json
import psASM
import difflib
import sys


COLOR_OK = '\033[92m'
COLOR_WARN = '\033[93m'
COLOR_ERR = '\033[91m'
COLOR_INFO = '\033[96m'
COLOR_END = '\33[0m'


class TestFailedException(Exception):
    pass


def test_passed(test_folder):
    print(COLOR_OK, end='')
    print("Test '%s' passed." % test_folder)
    print(COLOR_END, end='')


def test_failed(test_folder):
    print(COLOR_ERR, end='')
    print("Test '%s' failed!" % test_folder)
    print(COLOR_END, end='')


def main(args):
    # Discover All test directories
    test_folders = [f.path for f in os.scandir("Tests") if f.is_dir()]

    # Keep track of current cwd
    original_cwd = os.getcwd()

    # Check if we should only run one test:
    run_all_tests = True
    tests_to_run = []
    if len(args) != 0:
        run_all_tests = False
        tests_to_run = args

    # Process each test directory:
    for test_folder in test_folders:
        if "ignore" in test_folder:
            continue

        if not run_all_tests:
            if test_folder not in tests_to_run:
                continue

        # Open testinfo.json:
        try:
            test_info = json.load(open(os.path.join(test_folder, "testinfo.json")))
        except FileNotFoundError:
            print("Did not find testinfo.json in %s" % test_folder)
            print("Aborting...")
            return -1
        except json.decoder.JSONDecodeError as ex:
            print("Failed to decode testinfo.json in %s:" % test_folder)
            print(ex)
            print("Aborting...")
            return -1

        try:
            # Move into test folder:
            os.chdir(test_folder)

            # Perform all psASM runs:
            for run in test_info['runs']:
                args = run.split(' ')
                if psASM.main(args) != 0:
                    print("psASM run ('%s') failed!" % run)
                    raise TestFailedException()

            # Perform all diffs:
            diffs_ok = True
            for file_a_name, file_b_name in test_info['text_diffs']:
                with open(file_a_name, 'r') as file_a:
                    with open(file_b_name, 'r') as file_b:
                        file_a_lines = file_a.readlines()
                        file_b_lines = file_b.readlines()

                        for line in difflib.unified_diff(file_a_lines, file_b_lines, fromfile=file_a_name,
                                                         tofile=file_b_name, lineterm=''):
                            if len(line) != 0:
                                diffs_ok = False
                            if line.startswith('+'):
                                print(COLOR_OK, end='')
                            elif line.startswith('-'):
                                print(COLOR_ERR, end='')
                            print(line)
                            print(COLOR_END, end='')

            for file_a_name, file_b_name in test_info['bin_diffs']:
                with open(file_a_name, 'rb') as file_a:
                    with open(file_b_name, 'rb') as file_b:
                        file_a_content = file_a.read()
                        file_b_content = file_b.read()

                        if not file_a_content == file_b_content:
                            print("Binary diff fail between '%s' and '%s'" % (file_a_name, file_b_name))
                            diffs_ok = False

            if not diffs_ok:
                raise TestFailedException()

            test_passed(test_folder)
        except TestFailedException:
            test_failed(test_folder)
        except FileNotFoundError as ex:
            print(ex)
            test_failed(test_folder)
        finally:
            # Perform cleanup:
            for f in test_info['cleanup']:
                try:
                    os.remove(f)
                except FileNotFoundError:
                    print(COLOR_WARN, end='')
                    print("Could not cleanup '%s', file not found." % f)
                    print(COLOR_END, end='')
                    pass

        # Return to actual working directory:
        os.chdir(original_cwd)


if __name__ == '__main__':
    console_args = sys.argv.copy()
    console_args.pop(0)  # Get rid of path
    main(console_args)
