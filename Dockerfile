FROM elasticsearch:2.4.1

# Install the plugins
RUN plugin install analysis-icu && \
    plugin install analysis-kuromoji && \
    plugin install lmenezes/elasticsearch-kopf

COPY config/elasticsearch.yml /usr/share/elasticsearch/config

RUN mkdir -p /var/opt/elasticsearch/backups && \
    chown -R elasticsearch:elasticsearch /var/opt/elasticsearch