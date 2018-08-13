FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.10

# Install the plugins and uninstall X-Pack
RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu && \
    elasticsearch-plugin remove x-pack