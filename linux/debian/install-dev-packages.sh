#!/usr/bin/bash

# Install development packages
apt install -y build-essential gcc-12-locales binutils-doc make-doc gcc-doc \
	glibc-doc libstdc++-12-doc gdb gdb-doc gfortran gfortran-doc flex \
	flex-doc bison bison-doc m4-doc autoconf autoconf-doc automake \
	libtool libtool-doc glibc-doc-reference doc-base debian-keyring \
	manpages-dev manpages-de-dev openjdk-17-{doc,jdk,source}
