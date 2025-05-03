#!/usr/bin/env python3

from zlib import decompress
from sys import argv
from glob import *

for filename in argv:
    with open(filename, 'rb') as compressed:
        with open(filename + '-decompressed', 'wb') as expanded:
            data = decompress(compressed.read())
            expanded.write(data)