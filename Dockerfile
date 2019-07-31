FROM debian:9-slim

RUN apt-get update && \
apt-get install ssh xzip bzip2 -y && \
apt-get clean cache && \
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/g" /etc/ssh/sshd_config

ADD ./* /backup/
ENV PASSWD toor

CMD sh /backup/start.sh
