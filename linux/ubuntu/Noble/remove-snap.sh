#!/usr/bin/bash

# Stop and disable service
systemctl stop snapd
systemctl disable snapd
systemctl mask snapd

# Remove packages
apt purge snapd -y
apt-mark hold snapd

