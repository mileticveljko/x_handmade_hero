#!/bin/bash

# Variables
CXX="g++"
SRC="../src/platform/xcb_handmade_hero.cpp"
OUTPUT="handmade_hero"
CFLAGS="-std=c++11 -g -O0 -Wall -Wextra -pedantic"
LDFLAGS="-lxcb -lX11 -lX11-xcb"
DEFINES="-DDEBUG"

# Disable pushd and popd echoing
pushd () {
    command pushd "$@" > /dev/null
}

popd () {
    command popd "$@" > /dev/null
}

# Create bin folder and enter it
mkdir -p bin
pushd bin

# Compile command
$CXX $SRC $CFLAGS $LDFLAGS -o $OUTPUT

# Leave bin folder
popd
