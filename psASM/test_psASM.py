import os
import json
import psASM
import difflib
import sys
import argparse


class TestFailedException(Exception):
    pass


def start_color(color, do_color):
    colors = {'ok': '\033[92m', 'warn': '\033[93m', 'err': '\033[91m'}
    if do_color:
        print(colors[color], end='')

def end_color(do_color):
    if do_color:
        print('\33[0m', end='')


def main(args):
    parser = argparse.ArgumentParser(prog="test_psASM.py", description="Test psASM.")
    parser.add_argument('-c', '--no-color', required=False, action="store_true")
    parser.add_argument('-t', required=False, action="append",
                        help='Only run specific test (may be used multiple times)')

    parsed_args = vars(parser.parse_args(args))

    # Check if we should only run one test:
    run_all_tests = True
    tests_to_run = []
    if parsed_args['t'] is not None:
        run_all_tests = False
        tests_to_run = parsed_args['t']
    
    do_color = not parsed_args['no_color']

    # Discover All test directories
    test_folders = [f.path for f in os.scandir("Tests") if f.is_dir()]

    # Keep track of current cwd
    original_cwd = os.getcwd()

    test_count = 0
    test_passed_count = 0
    test_failed_count = 0

    # Process each test directory:
    for test_folder in test_folders:
        if "ignore" in test_folder:
            continue

        if not run_all_tests:
            if test_folder not in tests_to_run:
                continue

        test_count += 1

        # Open testinfo.json:
        try:
            test_info = json.load(open(os.path.join(test_folder, "testinfo.json")))
        except FileNotFoundError:
            start_color('err', do_color)
            print("Did not find testinfo.json in %s, Aborting.." % test_folder)
            end_color(do_color);
            return -1
        except json.decoder.JSONDecodeError as ex:
            start_color('err', do_color)
            print("Failed to decode testinfo.json in %s:" % test_folder)
            print(ex)
            print("Aborting...")
            end_color(do_color);
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
                                start_color('ok', do_color)
                            elif line.startswith('-'):
                                start_color('err', do_color)
                            print(line)
                            end_color(do_color)

            for file_a_name, file_b_name in test_info['bin_diffs']:
                with open(file_a_name, 'rb') as file_a:
                    with open(file_b_name, 'rb') as file_b:
                        file_a_content = file_a.read()
                        file_b_content = file_b.read()

                        if not file_a_content == file_b_content:
                            start_color('err', do_color)
                            print("Binary diff fail between '%s' and '%s'" % (file_a_name, file_b_name))
                            end_color(do_color)
                            diffs_ok = False

            if not diffs_ok:
                raise TestFailedException()

            test_passed_count += 1
            start_color('ok', do_color)
            print("Test '%s' passed." % (test_folder))
            end_color(do_color)
        except TestFailedException:
            start_color('err', do_color)
            print("Test '%s' failed." % (test_folder))
            end_color(do_color)
            test_failed_count += 1
        except FileNotFoundError as ex:
            print(ex)
            start_color('err', do_color)
            print("Test '%s' failed." % (test_folder))
            end_color(do_color)
            test_failed_count += 1
        finally:
            # Perform cleanup:
            for f in test_info['cleanup']:
                try:
                    os.remove(f)
                except FileNotFoundError:
                    start_color('warn', do_color)
                    print("Could not cleanup '%s', file not found." % f)
                    end_color(do_color)

        # Return to actual working directory:
        os.chdir(original_cwd)

    # Print summary:
    [print() for _ in range(3)]
    print("Total number of tests: %i" % test_count)
    start_color('ok', do_color)
    print("Tests passed: %i" % test_passed_count)
    end_color(do_color)
    start_color('err', do_color)
    print("Tests failed: %i" % test_failed_count)
    end_color(do_color)


if __name__ == '__main__':
    console_args = sys.argv.copy()
    console_args.pop(0)  # Get rid of path
    main(console_args)
