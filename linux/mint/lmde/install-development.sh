#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Development - General
apt install -y binutils-doc make-doc gcc-doc glibc-doc manpages-dev manpages-de-dev gfortran gfortran-doc \
	strace libstdc++-12-doc bison bison-doc flex flex-doc libtool libtool-doc gdb-doc autoconf autoconf-doc \
	automake m4-doc doc-base libsqlite3-dev

# Development - Java
# apt install -y openjdk-21-jdk openjdk-21-doc openjdk-21-source
