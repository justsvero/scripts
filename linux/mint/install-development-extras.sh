#!/usr/bin/bash

# Additional GCC programming language support
apt install -y gfortran gfortran-doc gnat gnat-doc gobjc gobjc++

# Additional SCCM and build tools
apt install -y --no-install-recommends mercurial subversion ninja-build meson
