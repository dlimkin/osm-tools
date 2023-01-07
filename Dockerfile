FROM debian:11-slim

LABEL org.opencontainers.image.source=https://github.com/dlimkin/osm-tools
LABEL org.opencontainers.image.description="Docker Debian based image with osmium-tool osm2pgsql imposm3 tools"
LABEL org.opencontainers.image.licenses=MIT
ENV APP_VERSION="3.32.3"

RUN echo "deb http://deb.debian.org/debian testing main" >> /etc/apt/sources.list && \
    apt-get update &&  \
    apt-get install -y --no-install-recommends  \
    osmium-tool=1.14.0-2  \
    osm2pgsql=1.7.2+ds-1 \
    wget &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD imposm-0.11.1-linux-x86-64.tar.gz /usr/src

RUN cd /usr/src/imposm-0.11.1-linux-x86-64/ && \
    mv imposm imposm3 /usr/bin/ && \
    mv lib/* /usr/lib/
