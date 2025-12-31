#! /bin/bash

# make cache location
mkdir -p cache

# build image using pimod
docker run --rm -it --privileged \
	-v $PWD:/pimod/image:z -v $PWD/cache:/pimod/.cache:z \
	nature40/pimod \
	pimod.sh image/aura-image.Pifile

