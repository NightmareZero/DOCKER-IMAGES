FROM nightzhuxy/jenkins-slave:base

ADD docker /usr/local/bin
RUN apt update && apt install python3 -y && apt clean all && chmod +x /usr/local/bin/docker && \
ln -s /usr/bin/python3 /usr/bin/python