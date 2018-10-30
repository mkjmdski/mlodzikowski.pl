#!/bin/bash
image="cv:generator"
name="cv"

docker build \
    --tag $image \
    $name

docker run -itd \
    --name $name \
    $image

docker cp \
    $name:/usr/src/tex/pdf/cv.pdf \
    production/cv.pdf