#!/usr/bin/bash

# Install development packages
apt install -y build-essential gcc-14-locales binutils-doc make-doc gcc-doc \
	glibc-doc libstdc++-14-doc gdb gdb-doc gfortran gfortran-doc flex \
	flex-doc bison bison-doc m4-doc autoconf autoconf-doc automake \
	libtool libtool-doc glibc-doc-reference doc-base debian-keyring \
	manpages-dev manpages-de-dev strace pkgconf libssl-dev libssl-doc \
	libncurses-dev ncurses-doc libcurl4-openssl-dev libcurl4-doc zlib1g-dev
