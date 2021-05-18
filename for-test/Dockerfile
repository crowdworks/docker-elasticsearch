FROM docker.elastic.co/elasticsearch/elasticsearch:7.12.1

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

USER elasticsearch

ENV http.port 19200
ENV transport.tcp.port 19300

EXPOSE 19200 19300
