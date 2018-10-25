__version__ = '0.1.0'

import fileinput

START_ENCODING = '>>>>>>>>>> START'
END_ENCODING = '<<<<<<<<<< END'


def run():
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
