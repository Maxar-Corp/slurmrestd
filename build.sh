#!/bin/bash -eu

docker build --tag slurmbuild .

docker run \
    --env HOME \
    --env USER \
    --interactive \
    --rm \
    --tty \
    --user $(id -u):$(id -g) \
    --volume $(realpath $(dirname $0)):/slurm \
    --volume $HOME:$HOME \
    --workdir /slurm \
    slurmbuild \
    ./build-docker.sh
