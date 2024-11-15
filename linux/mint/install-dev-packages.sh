#!/usr/bin/bash

# GNU Compiler Collection
apt install -y build-essential binutils-doc make-doc gcc-doc \
	glibc-doc glibc-doc-reference libstdc++-13-doc gfortran \
	gfortran-doc gdb gdb-doc nasm autoconf autoconf-doc \
	automake libtool libtool-doc bison bison-doc flex \
	flex-doc 

# CLang
apt install -y clang lldb

# Additional SCCM and build tools
apt install -y --no-install-recommends mercurial subversion \
	ninja-build meson cmake cmake-doc
