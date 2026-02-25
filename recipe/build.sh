#!/bin/bash
set -ex

# Added for C++20 support
CXX20 = g++
CXX20FLAGS = -g -O2 $(LTO)
CXX20PICFLAGS = -fpic
CXX20STD = -std=gnu++20
SHLIB_CXX20LD = $(CXX20) $(CXX20STD)
SHLIB_CXX20LDFLAGS = -shared

export DISABLE_AUTOBREW=1
${R} CMD INSTALL --build . ${R_ARGS}
