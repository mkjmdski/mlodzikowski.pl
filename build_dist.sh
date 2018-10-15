#!/bin/bash
container="dist"
image="hugo:generator"

docker build --tag $image site
docker run -itd --name $container $image
docker cp $container:/site/public .
docker kill $container
docker rm $container