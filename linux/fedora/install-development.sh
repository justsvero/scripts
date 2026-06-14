#!/usr/bin/bash

# Basics for C/C++ development
dnf install -y gcc gcc-c++ autoconf automake libtool bison flex make gdb gdb-doc strace git kernel-devel

# Additional languages (CLang, Fortran, Assembler)
dnf install -y clang lldb gcc-gfortran nasm nasm-doc

# Additional tools
dnf install -y cmake ninja-build meson httpie
