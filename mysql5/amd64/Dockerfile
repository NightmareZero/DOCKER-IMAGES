FROM library/mysql:5.7.44

ADD plugins/audit_log.so /usr/lib64/mysql/plugin/
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' >/etc/timezone


