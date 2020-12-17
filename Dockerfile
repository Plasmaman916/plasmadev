ROM ubuntu:20.04

MAINTAINER Plasmaman916, <plasma@voidpvp.net>

RUN apt update && apt -y install openjdk-11-jre curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
