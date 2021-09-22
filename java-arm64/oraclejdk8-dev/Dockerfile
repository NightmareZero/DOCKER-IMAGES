FROM nightzhuxy/java-arm64:oraclejdk8

ADD Dockerfile /

RUN apt update && \
  apt install curl wget  libtinfo5 -y --allow-remove-essential && \
  apt install ncurses-base procps -y && \
  apt clean all

