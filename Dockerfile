FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.8.7

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

USER elasticsearch
