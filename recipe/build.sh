#!/bin/bash
set -ex

# Added for C++20 support
echo "CXX20=$CXX" >> ~/.R/Makevars
echo "CXX20FLAGS=-fPIC -O2 -std=c++20" >> ~/.R/Makevars

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
