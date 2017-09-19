#!/bin/bash

pwd

cp $RECIPE_DIR/glibc-compat.h .

# this uses CFLAGS for CCFLAG
cp $RECIPE_DIR/class.cfg depends/class.cfg

export CFLAGS="-g -fPIC -include $PWD/glibc-compat.h"

$PYTHON setup.py install --single-version-externally-managed --record rec.txt
