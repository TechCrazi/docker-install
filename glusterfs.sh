#!/bin/bash
sudo apt install fuse -y
sudo apt install glusterfs-server -y
sudo apt install glusterfs-client -y
sudo systemctl enable --now glusterd
sudo systemctl status glusterd
sudo systemctl enable glusterd
