FROM debian:9-slim

ADD Dockerfile /
ADD source.list /tmp

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone
RUN cat /tmp/source.list > /etc/apt/sources.list && \
mkdir -p /usr/share/man/man1 && \
apt update && apt install git openjdk-8-jdk -y && apt clean all

