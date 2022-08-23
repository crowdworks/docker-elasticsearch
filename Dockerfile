FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.5

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

USER elasticsearch
