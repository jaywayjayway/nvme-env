#!/usr/bin/env bash

set -e

source ./env.sh && \
    vagrant up && \
    vagrant ssh

# Use this to guard so that the bash env won't get started again and again
if [ -z "$STARTED" ]; then
    export STARTED=1
    /bin/bash # add this so that typing `exit` can exit the VM and go back to the docker container
fi
