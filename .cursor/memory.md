# Code memory

## docker-install.sh

- Installs Docker Engine from Docker's official Ubuntu apt repository (not deprecated `apt-key`).
- Packages: `docker-ce`, `docker-ce-cli`, `containerd.io`, `docker-buildx-plugin`, `docker-compose-plugin`.
- GPG key: `/etc/apt/keyrings/docker.asc`; repo: `/etc/apt/sources.list.d/docker.sources`.
- Architecture and Ubuntu codename are detected dynamically (`dpkg --print-architecture`, `/etc/os-release`).
- Adds current user to `docker` group; re-login or `newgrp docker` required for non-sudo use.
- Reference: https://docs.docker.com/engine/install/ubuntu/

## glusterfs.sh

- Separate script for GlusterFS installation (unchanged in this update).
