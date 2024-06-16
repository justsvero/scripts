#!/usr/bin/bash

# Install the building tool package
apt install -y libdvd-pkg

# Compile the library and build the package
dpkg-reconfigure libdvd-pkg
