FROM alpine
MAINTAINER Jose Manuel Moreno Gavira <josem.moreno.gavira@gmail.com>

USER root

RUN mkdir /var/syncthing
RUN mkdir /opt

# Syncthing
COPY syncthing-linux-amd64-v0.14.33.tar.gz /opt/
RUN tar -zxvf /opt/syncthing-linux-amd64-v0.14.33.tar.gz -C /opt/
RUN mv /opt/syncthing-linux-amd64-v0.14.33/ /opt/syncthing
RUN rm /opt/syncthing-linux-amd64-v0.14.33.tar.gz

ENTRYPOINT ["/opt/syncthing/syncthing", "-home", "/var/syncthing/config", "-gui-address", "0.0.0.0:8384"]