FROM nightzhuxy/java:8-alpine

ADD files/run.sh /run.sh
ADD files/opt/ /opt/

RUN apk update && apk add procps bash

WORKDIR /opt/mycat/bin

ENTRYPOINT sh /run.sh