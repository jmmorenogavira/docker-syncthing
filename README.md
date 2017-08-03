# docker-syncthing

The `docker-syncthing` image provides a Docker container for running Syncthing 

This container is provided with a full Syncthing installation.

# Containerized Syncthing

Syncthing in a container. Combine with volumes. The exposed volumes are
by default:

 - /var/syncthing/config - the configuration and index directory
 - /var/syncthing/Sync - the default folder

You can add more folders and map them as you prefer.

Example usage:

```
$ docker pull jmmoreno/docker-syncthing
$ docker run -p 8384:8384 -p 22000:22000 \
    -v /wherever/st-cfg:/var/syncthing/config \
    -v /wherever/st-sync:/var/syncthing/Sync \
    syncthing/syncthing:latest
```

## License

The things in this repository are licensed under the MIT license.
Syncthing is distributed under Syncthing's own licensing.