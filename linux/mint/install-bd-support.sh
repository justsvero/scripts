#!/usr/bin/sh

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

apt install -y libbluray-bin libbluray-bdj libbluray-doc libaacs0
