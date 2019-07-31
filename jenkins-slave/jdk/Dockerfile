FROM nightzhuxy/sshd

ADD Dockerfile /
ADD source.list /tmp

ENV JAVA_HOME=/usr/local/jdk1.8.0_192 
ENV CLASS_PATH=${JAVA_HOME}/lib 
ENV PATH=${PATH}:${JAVA_HOME}/bin

RUN cat /tmp/source.list > /etc/apt/sources.list && \
apt update && apt install git openjdk-8-jdk -y && apt clean all

