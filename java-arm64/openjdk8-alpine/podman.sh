#!/bin/bash

source /etc/profile

REGISTRY="docker.io/"
TEAM="nightzhuxy"
NAME="java-arm64"
TAG="8-alpine"

FULLNAME="$REGISTRY$TEAM/$NAME:$TAG"

echo 'target tag : '$FULLNAME
sleep 3

{
  { 
    podman build --arch linux/arm64 -t "$FULLNAME" . 
  } || {
    echo -e "\e[31merror on build $FULLNAME\e[0m" && \
    exit 1 
  }
} && {
  docker push "$FULLNAME" || echo -e "\e[31merror on push\e[0m"
}

