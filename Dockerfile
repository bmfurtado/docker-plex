FROM ubuntu:trusty
MAINTAINER Bruno Furtado <bmfurtado@geekoo.eu>


RUN apt-get update && \
    apt-get install -qy --force-yes curl && \
    curl -o /tmp/package.deb https://downloads.plex.tv/plex-media-server/0.9.11.17.986-269b82b/plexmediaserver_0.9.11.17.986-269b82b_amd64.deb && \
    dpkg -i /tmp/package.deb && \
    ln -s /var/lib/plexmediaserver /plex-config

VOLUME /plex-config
VOLUME /plex-data

EXPOSE 32400

USER plex

CMD ["/usr/sbin/start_pms"]
