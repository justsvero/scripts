#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# GNU C/C++ and Assembler plus Tools
apt install -y \
	build-essential \
	binutils-doc \
	make-doc \
	gcc-doc \
	glibc-doc \
	glibc-doc-reference \
	libstdc++-13-doc \
	gdb \
	gdb-doc \
	nasm \
	autoconf \
	autoconf-doc \
	automake \
	libtool \
	libtool-doc \
	bison \
	bison-doc \
	flex \
	flex-doc \
	cmake \
	cmake-doc \
	meld \
	libncurses-dev \
	ncurses-doc \
	libglut-dev

if [ -f /usr/lib/x86_64-linux-gnu/libglut.so.3.12 ]; then
	pushd /usr/lib/x86_64-linux-gnu
	ln -s libglut.so.3.12 libglut.so.3
	echo "Symbolic link created"
	popd
fi
