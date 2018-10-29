#!/bin/bash
(
    cd src
    go get ./...
)
for file in src/*.go; do
    echo "Building: $file..."
    go build -o "api/$(echo $file | cut -d'/' -f 2 | cut -d'.' -f 1)" $file
    echo "Success: $file!"
done