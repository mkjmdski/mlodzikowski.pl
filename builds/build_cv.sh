#!/bin/bash
image="thomasweise/texlive"

docker run -it \
    --volume $PWD/cv:/doc \
    $image make

if [ -f "production/cv.pdf" ]; then rm production/cv.pdf; fi
mv cv/examples/cv.pdf production