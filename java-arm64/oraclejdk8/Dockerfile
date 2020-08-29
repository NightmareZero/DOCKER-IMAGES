FROM multiarch/debian-debootstrap:arm64-bullseye-slim

ADD Dockerfile /
ADD jdk-8u261-linux-arm64-vfp-hflt.tar.gz /usr/local
ADD source.list /tmp

RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone && \
    cat /tmp/source.list > /etc/apt/sources.list && \
    mkdir -p /usr/share/man/man1 && \
    ln -s /usr/local/jdk1.8.0_261/ /usr/local/java

ENV JAVA_HOME=/usr/local/java
ENV CLASS_PATH=${JAVA_HOME}/lib 
ENV PATH=${PATH}:${JAVA_HOME}/bin