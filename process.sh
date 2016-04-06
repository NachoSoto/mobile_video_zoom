#!/bin/bash -e

# Processes all youtube IDs found in the file passed to $1, in parallel.

cat $1 | uniq | parallel -P 4 --progress -r -v --bar  bin/run_mvz.py \" {}\"

