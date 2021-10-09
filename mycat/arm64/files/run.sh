#!/bin/bash

## init 
if [[ `ls /opt/mycat/conf | wc -l` -eq 0 ]]; then 
 cp -r /opt/conf/* /opt/mycat/conf
fi 


cd /opt/mycat/bin
. ./startup_nowrap.sh