#!/usr/bin/sh

# Enable repository
curl -s https://download.opensuse.org/repositories/isv:/Rancher:/stable/deb/Release.key | gpg --dearmor | dd status=none of=/usr/share/keyrings/isv-rancher-stable-archive-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/isv-rancher-stable-archive-keyring.gpg] https://download.opensuse.org/repositories/isv:/Rancher:/stable/deb/ ./' | dd status=none of=/etc/apt/sources.list.d/isv-rancher-stable.list

# Refresh package database
apt update

# Install SUSE Rancher Desktop
echo '#######################################################################'
echo 'To install SUSE Rancher Desktop please run "apt install rancher-desktop"'
echo 'as root.'
echo '#######################################################################'
