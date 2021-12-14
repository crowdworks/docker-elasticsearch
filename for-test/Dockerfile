FROM docker.elastic.co/elasticsearch/elasticsearch:7.12.1

# Mitigate CVE-2021-44228
# https://logging.apache.org/log4j/2.x/security.html
# https://discuss.elastic.co/t/apache-log4j2-remote-code-execution-rce-vulnerability-cve-2021-44228-esa-2021-31/291476
# According to the announcement from Elastic,
# this image is not impacted because the base image uses JDK 16.
# Even though, set it explicitly just in case.
# You can remove it v7.16.1 because it's enabled by default.
ENV LOG4J_FORMAT_MSG_NO_LOOKUPS true

RUN elasticsearch-plugin install analysis-kuromoji && \
    elasticsearch-plugin install analysis-icu

USER elasticsearch

ENV http.port 19200
ENV transport.tcp.port 19300

EXPOSE 19200 19300
