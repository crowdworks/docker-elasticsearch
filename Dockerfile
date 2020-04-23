FROM docker.elastic.co/elasticsearch/elasticsearch-oss:7.5.2

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

USER elasticsearch
