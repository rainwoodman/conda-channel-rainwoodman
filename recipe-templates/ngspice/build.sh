#!/bin/bash
set -x
if [[ $OSTYPE == darwin* ]]; then
    export CFLAGS="-headerpad_max_install_names"
    export LDFLAGS="${LDFLAGS} -headerpad_max_install_names"
    export CXXFLAGS="$CFLAGS"
fi

./configure --prefix=$PREFIX --with-x --with-readline --enable-static

make -j$CPU_COUNT
make install
