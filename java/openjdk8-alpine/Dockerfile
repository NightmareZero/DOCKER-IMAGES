FROM nightzhuxy/alpine:3.17

RUN   apk update && \
apk add openjdk8 tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -f /root/.ash_history  && \
    rm -rf /var/cache/apk