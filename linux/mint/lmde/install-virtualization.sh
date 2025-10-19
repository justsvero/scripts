#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Virtualisierung
apt install -y qemu-system qemu-utils qemu-user virt-manager libvirt-clients-qemu libvirt-daemon-driver-lxc
