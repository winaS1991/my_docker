#!/bin/bash
sudo docker run \
    --runtime=nvidia \
    --rm -it \
    -p 8888:8888 \
    -v $(pwd):/home \
    -w /home \
    machine_learning_docker \
    "$@"