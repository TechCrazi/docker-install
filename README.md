# install-docker-ubuntu-shell-script

Shell script to install Docker Engine, Buildx, and Compose on Ubuntu using Docker's official apt repository.

## Requirements

- Ubuntu 22.04 LTS, 24.04 LTS, or another supported release
- `sudo` access
- Internet connection

## Install Docker

```bash
git clone https://github.com/TechCrazi/docker-install
cd docker-install/
chmod +x docker-install.sh
./docker-install.sh
```

After the script finishes, log out and back in (or run `newgrp docker`) so your user can run Docker without `sudo`.

Verify the installation:

```bash
docker run hello-world
docker compose version
```

## Install GlusterFS

```bash
git clone https://github.com/TechCrazi/docker-install
cd docker-install/
./glusterfs.sh
```
