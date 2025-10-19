#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

apt install -y mingw-w64 mingw-w64-tools gcc-10-locales wine wine64 dosbox-x
