#!/usr/bin/bash

# Development (C/C++)
dnf install -y gcc gcc-c++ autoconf automake libtool bison flex make gdb gdb-doc strace git kernel-devel

# Development (Fortran, Modula-2, Assembler)
dnf install -y gcc-gfortran gcc-gm2 nasm nasm-doc

# Additional build tools
dnf install -y cmake ninja-build

# Development (Java)
dnf install -y java-21-openjdk-devel java-21-openjdk-javadoc java-21-openjdk-src
