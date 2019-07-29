#!/bin/bash

make --no-print-directory clean -C tools/aif2pcm
make --no-print-directory clean -C tools/bin2c
make --no-print-directory clean -C tools/gbafix
make --no-print-directory clean -C tools/gbagfx
make --no-print-directory clean -C tools/jsonproc
make --no-print-directory clean -C tools/mapjson
make --no-print-directory clean -C tools/mid2agb
make --no-print-directory clean -C tools/preproc
make --no-print-directory clean -C tools/ramscrgen
make --no-print-directory clean -C tools/rsfont
make --no-print-directory clean -C tools/scaninc

PREFIX=i686-w64-mingw32-
CC=${PREFIX}gcc
CXX=${PREFIX}g++
CFLAGS="-O2 -static -std=c11 -Wall -Wextra -Wno-switch -Werror -DPNG_SKIP_SETJMP_CHECK -L../.local/lib -lpng -I ../.local/include"
CXXFLAGS="-O2 -std=c++11 -static -I . -Wall -Wextra -Wno-switch -Werror -Wno-implicit-fallthrough -Wno-unused-parameter"

make --no-print-directory -C tools/aif2pcm   CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/bin2c     CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/gbafix    CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/gbagfx    CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/jsonproc  CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/mapjson   CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/mid2agb   CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/preproc   CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/ramscrgen CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/rsfont    CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
make --no-print-directory -C tools/scaninc   CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

