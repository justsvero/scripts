#!/usr/bin/sh

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Enable repository
curl -s https://download.opensuse.org/repositories/isv:/Rancher:/stable/deb/Release.key | gpg --dearmor | tee /usr/share/keyrings/isv-rancher-stable-archive-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/isv-rancher-stable-archive-keyring.gpg] https://download.opensuse.org/repositories/isv:/Rancher:/stable/deb/ ./' | tee /etc/apt/sources.list.d/isv-rancher-stable.list

# Refresh package database
apt update

# Install SUSE Rancher Desktop
echo '#########################################################################'
echo 'Run "apt install rancher-desktop" as root to install SUSE Rancher Desktop'
echo '#########################################################################'
