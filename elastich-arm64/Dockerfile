FROM nightzhuxy/java-arm64:oraclejdk8

ADD elasticsearch /usr/share/elasticsearch

USER 1000:1000
EXPOSE 9200 9300
WORKDIR /usr/share/elasticsearch
VOLUME /usr/share/elasticsearch/data
ENTRYPOINT /usr/share/elasticsearch/elasticsearch
