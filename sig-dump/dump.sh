#!/bin/sh
# NOTE: the skip= value should normally be inferred from the sig header.
# Also, to fully reconstruct a FLIRT signature file, the header with
# modified flags should be prepended to the output.
cat wa32rtw.sig | dd skip=78 bs=1 | unipsig.pl > 11
