FROM debian:11-slim

RUN echo "deb http://deb.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list && \
    apt-get update &&  \
    apt-get install -y -t bullseye-backports --no-install-recommends  \
    osmium-tool=1.14.0-1~bpo11+1  \
    osm2pgsql=1.7.0+ds-1~bpo11+1 &&  \
    rm -rf /var/lib/apt/lists/*
