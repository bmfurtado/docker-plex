FROM ubuntu:trusty
MAINTAINER Bruno Furtado <bmfurtado@geekoo.eu>

ENV PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR="/plex-config/Library/Application\ Support"

RUN apt-get update && \
    apt-get install -qy --force-yes curl && \
    curl -o /tmp/package.deb https://downloads.plex.tv/plex-media-server/0.9.11.16.958-80f1748/plexmediaserver_0.9.11.16.958-80f1748_amd64.deb && \
    dpkg -i /tmp/package.deb

VOLUME /plex-config
VOLUME /plex-data

EXPOSE 32400

CMD ["/usr/sbin/start_pms"]
