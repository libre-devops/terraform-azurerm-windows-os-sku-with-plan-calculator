#!/usr/bin/env bash

set -xe
START=$(pwd)

# Executes script in each sub directory
for dir in $(find . -maxdepth 2 -mindepth 1 -type d); do
    cd $dir && \
    ./get-image-info.sh || echo "Script not in $dir, skipping"
    cd $START
done