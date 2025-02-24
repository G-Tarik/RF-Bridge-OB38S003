#!/bin/bash

if [[ "$1" == "build" ]];then
    docker build -t sdcc -f Dockerfile-sdcc .
    exit
fi

# docker run --rm -ti -v $PWD:/app -w /app sdcc bash
docker run --rm -ti --user 1000:1000 -v $PWD:/app -w /app sdcc bash
