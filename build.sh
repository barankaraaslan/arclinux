#!/bin/sh
set -ex

IMAGE_ID=$(docker build -q $1)
docker run --rm -it -v $(readlink -f $1):/build -w /build $IMAGE_ID sh Buildfile.sh
tar -C $1/package -cf package.tar.gz .