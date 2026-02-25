#!/bin/bash
set -ex

# Added for C++20 support
MAKECONF="$PREFIX/lib/R/etc/Makeconf"
echo "CXX20=$CXX" >> "${MAKECONF}"
echo "CXX20FLAGS=-fPIC -O2 -std=c++20" >> "${MAKECONF}"

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
