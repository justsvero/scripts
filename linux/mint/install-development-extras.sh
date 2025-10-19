#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Additional GCC programming language support
apt install -y gfortran gfortran-doc gnat gnat-doc gobjc gobjc++

# Additional SCCM and build tools
apt install -y --no-install-recommends mercurial subversion ninja-build meson

# Install SQlite
apt install -y sqlite3 sqlite3-doc sqlite3-tools libsqlite3-dev
