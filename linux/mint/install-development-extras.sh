#!/usr/bin/bash

# Additional GCC compiler
apt install -y gfortran gfortran-doc gnat gnat-doc gobjc gobjc++

# CLang
apt install -y clang lldb

# Additional SCCM and build tools
apt install -y --no-install-recommends mercurial subversion ninja-build meson

# FreePascal
apt install -y fpc libx11-doc libxcb-doc libxext-doc libxt-doc libwayland-doc

# Additional tools
apt install -y meld
