FROM ubuntu:16.04
MAINTAINER Jose Manuel Moreno Gavira <josem.moreno.gavira@gmail.com>

USER root

RUN mkdir /var/syncthing
RUN mkdir -p /opt/syncthing

# Syncthing
COPY syncthing /opt/syncthing

ENTRYPOINT ["/opt/syncthing/syncthing"]