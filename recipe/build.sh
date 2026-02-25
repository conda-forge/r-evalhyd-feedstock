#!/bin/bash
set -ex

# Added for C++20 support
MAKECONF="$PREFIX/lib/R/etc/Makeconf"
cat <<EOF >> "${MAKECONF}"
CXX20 = ${CXX}
CXX20STD = -std=c++20
CXX20FLAGS = ${CXXFLAGS}
CXX20PICFLAGS = -fPIC
EOF

export DISABLE_AUTOBREW=1

${R} CMD INSTALL --build . ${R_ARGS}
