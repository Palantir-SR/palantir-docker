#!/bin/bash

sudo docker run --privileged -v /dev/bus/usb:/dev/bus/usb \
    -it \
    --name palantir \
    -p 5001:5001 \
    --gpus all \
    --ipc=host \
    -v ${HOME}/docker/palantir:/workspace \
    palantir:latest \
    /bin/bash
