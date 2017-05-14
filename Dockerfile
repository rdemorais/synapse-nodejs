FROM ubuntu
MAINTAINER Rafael de Morais "rdemorais.freitas@gmail.com"
RUN apt-get update && \
    apt-get install -y nodejs --no-install-recommends && \
    apt-get install -y npm --no-install-recommends && \
    apt-get install build-essential && \
    ln -s /usr/bin/nodejs /usr/bin/node && \
    mkdir /opt/workapp && \
    mkdir /opt/db && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*