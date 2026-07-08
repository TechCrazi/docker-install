#!/bin/bash
set -euo pipefail

# Install Docker Engine, Buildx, and Compose from Docker's official apt repository.
# Based on: https://docs.docker.com/engine/install/ubuntu/

if ! command -v apt-get >/dev/null 2>&1; then
  echo "This script supports Debian-based systems with apt-get (e.g. Ubuntu)." >&2
  exit 1
fi

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y \
  ca-certificates \
  curl

sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo tee /etc/apt/sources.list.d/docker.sources >/dev/null <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt-get update
sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

# Allow running docker without sudo (docker group is created by the package).
sudo usermod -aG docker "${USER}"

echo
echo "Docker installed successfully."
docker --version
docker compose version
echo
echo "Log out and back in (or run 'newgrp docker') before using docker without sudo."
