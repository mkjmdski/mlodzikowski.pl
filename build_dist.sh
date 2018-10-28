#!/bin/bash
container="dist"
image="hugo:generator"

docker build \
    --tag $image \
    --target generator \
    site

docker run -it \
    --env baseURL="https://mlodzikowski.pl" \
    --volume $PWD/site:/site \
    --volume $PWD/production/dist:/site/public \
    --name $container \
    $image bash build.sh