__version__ = '0.1.0'

import fileinput
import argparse

START_ENCODING = '>>>>>>>>>> START'
END_ENCODING = '<<<<<<<<<< END'


def run_sd():
    '''
    Read from the standard input to filter
    '''

    display = True
    for line in fileinput.input():
        if line.startswith(START_ENCODING):
            # Decode the start file
            filename = line.split(START_ENCODING)[-1].strip()
            fp = open(filename, 'w')
            display = False
        elif line.startswith(END_ENCODING):
            display = True
            fp.close()
        elif display:
            print(line, end='')
        else:
            fp.write(line)


def run_se():
    '''
    Read and dump a file with the proper format so it
    will be encoded back with se
    '''
    help_string = 'Encode a file in stdout. Recover it with std_decode'
    parser = argparse.ArgumentParser(description=help_string)
    parser.add_argument('file', type=argparse.FileType('r'), help='file')

    args = parser.parse_args()
    filename = args.file.name
    print(f'{START_ENCODING} {filename}')
    for line in args.file:
        print(line, end='')

    print(f'{END_ENCODING}')
    pass
