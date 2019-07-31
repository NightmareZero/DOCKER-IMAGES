#!/bin/bash

echo "root:$PASSWD" | chpasswd
service ssh start &
echo "ssh started.."
sleep 8640000000000000
