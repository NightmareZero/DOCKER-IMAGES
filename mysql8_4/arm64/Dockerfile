# MySQL 8.4 LTS 起官方取消 -debian 变体，默认基础镜像即 oraclelinux:9-slim（已含 tzdata）
FROM docker.io/library/mysql:8.4.13

RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone
