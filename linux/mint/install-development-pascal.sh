#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

apt install -y fpc libx11-doc libxcb-doc libxext-doc libxt-doc libwayland-doc
