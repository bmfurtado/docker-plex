FROM ubuntu:trusty
MAINTAINER Bruno Furtado <bmfurtado@geekoo.eu>

ENV PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR="/config/Library/Application\ Support"

RUN apt-get update && \
    apt-get install -qy --force-yes curl && \
    curl -o /tmp/package.deb https://downloads.plex.tv/plex-media-server/0.9.11.17.986-269b82b/plexmediaserver_0.9.11.17.986-269b82b_amd64.deb && \
    dpkg -i /tmp/package.deb

VOLUME /config
VOLUME /data

EXPOSE 32400

CMD ["/usr/sbin/start_pms"]
