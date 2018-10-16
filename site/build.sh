#!/bin/bash
./build_indexes.py
for module in main presentations; do (
    cd $module
    if [ "$module" != "main" ]; then
        baseURL="$baseURL/$module"
    fi
    hugo --baseURL="$baseURL"
) done