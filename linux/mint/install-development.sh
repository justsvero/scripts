#!/usr/bin/bash

if [[ "$UID" != "0" ]]; then
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
	libglut-dev \
	clang \
	lldb \
	clang-18-doc \
	llvm-18-doc \
	gfortran \
	gfortran-doc \
	gnat \
	gnat-doc \
	gobjc \
	gobjc++ \
	ninja-build \
	sqlite3 \
	sqlite3-doc \
	sqlite3-tools \
	libsqlite3-dev \
	subversion

if [ -f /usr/lib/x86_64-linux-gnu/libglut.so.3.12 ]; then
	pushd /usr/lib/x86_64-linux-gnu
	ln -s libglut.so.3.12 libglut.so.3
	echo "Symbolic link created"
	popd
fi

#######################################################################################

read -p'' ANSWER

if [[ "$ANSWER" == "y" || "$ANSWER" == "Y" ]]; then
	apt install -y fpc libx11-doc libxcb-doc libxext-doc libxt-doc libwayland-doc
fi

unset $ANSWER

#######################################################################################
