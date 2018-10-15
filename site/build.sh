#!/bin/bash
./build_indexes.py
for module in main presentations; do (
    cd $module
    hugo
) done