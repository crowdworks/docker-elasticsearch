FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.2

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

USER elasticsearch

ENV http.port 19200
ENV transport.tcp.port 19300

EXPOSE 19200 19300
