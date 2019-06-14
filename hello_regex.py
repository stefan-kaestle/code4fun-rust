#!/usr/bin/env python3

import re
import sys

def main():

    regex = re.compile('.*Benutzer.*\.html')

    f = open(sys.argv[1])
    num = 0

    for line in f:
        if regex.match(line):
            num += 1

    print('Number of results: {}'.format(num))


if __name__ == "__main__":
    main()
