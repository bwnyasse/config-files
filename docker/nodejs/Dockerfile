FROM bwnyasse/ubuntu:16.04

MAINTAINER bwnyasse

## Ensure to install node using a PPA
## doc : https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-debian-8
RUN cd ~ && \
    curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -y nodejs && \
    apt-get install -y build-essential
