FROM elasticsearch:2.4.1

# Install the kuromoji
RUN /usr/share/elasticsearch/bin/plugin install \
    analysis-kuromoji \
    lmenezes/elasticsearch-kopf

COPY config/elasticsearch.yml /usr/share/elasticsearch/config
