#!/usr/bin/bash

# Basics for C/C++ development
dnf install -y gcc gcc-c++ autoconf automake libtool bison flex make gdb gdb-doc strace git kernel-devel

# Additional languages (Fortran, Modula-2, Assembler)
dnf install -y gcc-gfortran gcc-gm2 nasm nasm-doc

# CLang
dnf install -y clang lldb

# Additional build tools
dnf install -y cmake ninja-build
