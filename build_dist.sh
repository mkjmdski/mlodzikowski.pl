#!/bin/bash
container="dist"
image="hugo:generator"

docker build \
    --build-arg baseURL="https://mlodzikowski.pl" \
    --tag $image \
    --target generator \
    site
docker run -itd --name $container $image
docker cp $container:/site/public .
docker kill $container > /dev/null
docker rm $container > /dev/null