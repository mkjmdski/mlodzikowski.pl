#!/bin/bash
for file in api/*.go; do
    echo "Building: $file..."
    go build -o "api-bin/$(echo $file | cut -d'/' -f 2 | cut -d'.' -f 1)" $file
    echo "Success: $file!"
done