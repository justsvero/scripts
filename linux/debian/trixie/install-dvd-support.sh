#!/usr/bin/bash

GCC=$(which gcc)
if [[ "$GCC" == "" || ! -x "$GCC" ]] ; then
	echo "You need to install the build tools"
	exit 1
fi

# Install the building tool package
apt install -y libdvd-pkg libdvdread8 libdvdnav4 libdvdnav-doc

# Compile and install the libdvdcss
dpkg-reconfigure libdvd-pkg
