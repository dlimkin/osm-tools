FROM debian:11-slim

LABEL org.opencontainers.image.source=https://github.com/dlimkin/osm-tools
LABEL org.opencontainers.image.description="Docker Debian based image with osmium-tool osm2pgsql tools"
LABEL org.opencontainers.image.licenses=MIT

ENV APP_VERSION="2.21.0"

RUN echo "deb http://deb.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list && \
    apt-get update &&  \
    apt-get install -y -t bullseye-backports --no-install-recommends  \
    osmium-tool=1.14.0-1~bpo11+1  \
    osm2pgsql=1.7.0+ds-1~bpo11+1  \
    wget &&  \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

