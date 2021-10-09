FROM nightzhuxy/java-arm64:oraclejdk8

ADD files/run.sh /run.sh
ADD files/opt/ /opt/

RUN apt update && apt remove -y --allow-remove-essential ncurses-base &&  apt install -y procps && apt clean all

WORKDIR /opt/mycat/bin

ENTRYPOINT ./startup_nowrap.sh