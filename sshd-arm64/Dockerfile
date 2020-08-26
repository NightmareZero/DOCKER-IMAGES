FROM multiarch/debian-debootstrap:arm64-bullseye-slim

RUN apt-get update && \
apt-get install ssh xzip bzip2 apt-transport-https -y && \
apt-get clean cache && \
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/g" /etc/ssh/sshd_config
RUN useradd --create-home --shell /bin/bash user && echo 'user:resu' | chpasswd

ADD ./* /backup/
ENV PASSWD toor

CMD sh /backup/start.sh
