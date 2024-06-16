#!/usr/bin/bash

# GNU Compiler Collection
apt install -y build-essential binutils-doc make-doc gcc-doc \
	glibc-doc glibc-doc-reference libstdc++-11-doc gfortran \
	gfortran-doc gdb gdb-doc nasm autoconf autoconf-doc \
	automake libtool libtool-doc bison bison-doc flex flex-doc

# Additional SCCM and build tools
apt install -y --no-install-recommends mercurial subversion \
	ninja-build meson cmake cmake-doc

# Java 21
apt install -y openjdk-21-{doc,jdk,source}

# Remove Java 11 (replace by Java 17 above)
apt purge -y openjdk-11-jre openjdk-11-jre-headless

# .NET 8.0 SDK
# apt install -y dotnet-sdk-8.0

# Pascal
# apt install -y fpc
