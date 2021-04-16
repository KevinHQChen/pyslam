#!/usr/bin/env bash

function make_dir(){
if [ ! -d $1 ]; then
    mkdir $1
fi
}

# ====================================================
# check if we have external options
EXTERNAL_OPTION=$1
if [[ -n "$EXTERNAL_OPTION" ]]; then
    echo "external option: $EXTERNAL_OPTION" 
fi
# ====================================================

make_dir build
cd build
cmake -DPYBIND11_PYTHON_VERSION=3.6 .. $EXTERNAL_OPTION
make -j 4

cd ..
