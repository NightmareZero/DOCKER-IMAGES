FROM debian:9-slim

ADD Dockerfile /
# need rename jdk-8u221-linux-x64.tar.gz/jdk1.8.0_221 to java
ADD jdk-8u221-linux-x64.tar.gz /usr/local
ADD source.list /tmp

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone && \
    cat /tmp/source.list > /etc/apt/sources.list && \
    mkdir -p /usr/share/man/man1 && \
    ln -s /usr/local/jdk1.8.0_221/ /usr/local/java

ENV JAVA_HOME=/usr/local/java
ENV CLASS_PATH=${JAVA_HOME}/lib 
ENV PATH=${PATH}:${JAVA_HOME}/bin