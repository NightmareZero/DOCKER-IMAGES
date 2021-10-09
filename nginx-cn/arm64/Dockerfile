FROM nginx:alpine

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /etc/nginx/conf/ssl \
    && rm -f /etc/nginx/conf.d/default.conf \
    && mkdir -p /home/app/dist/ \
    && mkdir -p /var/log/nginx/ \
    && touch /var/log/nginx/error.log \
    && touch /var/log/nginx/access.log \
    && apk update && apk add curl