#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

apt install -y \
	qemu-system qemu-user qemu-utils virt-manager \
	libvirt-clients libvirt-clients-qemu libvirt-doc \
	uml-utilities bridge-utils net-tools

