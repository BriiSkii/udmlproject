#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Build the docker image
docker build -t bswhite/udmlproject .

# List docker images
docker image ls

# Run flask app
docker run -d -p 8000:80 bswhite/udmlproject
