FROM nightzhuxy/alpine:3.17-arm64

RUN   apk update && \
apk add openjdk8 tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    rm -f /root/.ash_history  && \
    rm -rf /var/cache/apk