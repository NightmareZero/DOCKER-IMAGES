#!/bin/bash

## init 
if [[ `ls /opt/mycat/conf | wc -l` -eq 0 ]]; then 
 cp -r /opt/conf/* /opt/mycat/conf
fi 


JAVA_OPTS="-server -Xms2G -Xmx2G -XX:+AggressiveOpts -XX:MaxDirectMemorySize=2G"
JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
MYCAT_HOME=/opt/mycat

cd /opt/mycat/bin

#==============================================================================

#set CLASSPATH
MYCAT_CLASSPATH="$MYCAT_HOME/conf:$MYCAT_HOME/lib/classes"
for i in "$MYCAT_HOME"/lib/*.jar
do
    MYCAT_CLASSPATH="$MYCAT_CLASSPATH:$i"
done
#==============================================================================

#startup Server
RUN_CMD="\"$JAVA_HOME/bin/java\""
RUN_CMD="$RUN_CMD -DMYCAT_HOME=\"$MYCAT_HOME\""
RUN_CMD="$RUN_CMD -classpath \"$MYCAT_CLASSPATH\""
RUN_CMD="$RUN_CMD $JAVA_OPTS"
RUN_CMD="$RUN_CMD io.mycat.MycatStartup  $@"
# RUN_CMD="$RUN_CMD >> \"$MYCAT_HOME/logs/console.log\" 2>&1 &" # 后台运行
echo $RUN_CMD
touch $MYCAT_HOME/logs/mycat.log
eval tail -n 0 -f $MYCAT_HOME/logs/mycat.log & # 输出日志
eval $RUN_CMD
#==============================================================================