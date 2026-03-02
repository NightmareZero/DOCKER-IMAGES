#!/bin/bash

source /etc/profile

REGISTRY="docker.io/"
TEAM="nightzhuxy"
NAME="alpine"
TAG="3.22-arm64"

FULLNAME="$REGISTRY$TEAM/$NAME:$TAG"

echo 'target tag : '$FULLNAME
sleep 3

{
  { 
    buildah bud --platform linux/arm64 --network=host -t "$FULLNAME" . 
  } || {
    echo -e "\e[31merror on build $FULLNAME\e[0m" && \
    exit 1 
  }
} && {
  docker push "$FULLNAME" || echo -e "\e[31merror on push\e[0m"
}

