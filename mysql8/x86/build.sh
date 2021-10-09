#!/bin/bash

source /etc/profile

REGISTRY=""
TEAM="nightzhuxy"
NAME="mysql"
TAG="8"

FULLNAME="$REGISTRY$TEAM/$NAME:$TAG"

echo 'target tag : '$FULLNAME
sleep 3

[[ -f ./hooks/pre_build ]] && .  ./hooks/pre_build

{
  { 
    docker build -t "$FULLNAME" . 
  } || {
    echo -e "\e[31merror on build $FULLNAME\e[0m" && \
    exit 1 
  }
} && {
  docker push "$FULLNAME" || echo -e "\e[31merror on push\e[0m"
}

