#!/usr/bin/bash

# Update repository indexes and upgrade installed packages if necessary
apt update && apt upgrade -y

# Tools
apt install -y exuberant-ctags vim-nox vim-scripts git gitk git-gui curl wget ncftp w3m links sharutils urlview \
	mc arj btop htop powertop tmux screen keepassxc vim-doc git-doc manpages-de imagemagick imagemagick-doc \
	lm-sensors bat dos2unix meld xclip sharutils-doc enscript

# Multimedia
apt install -y ffmpeg ffmpeg-doc moc moc-ffmpeg-plugin

# Development - General
apt install -y binutils-doc make-doc gcc-doc glibc-doc manpages-dev manpages-de-dev gfortran gfortran-doc \
	strace libstdc++-12-doc bison bison-doc flex flex-doc libtool libtool-doc gdb-doc autoconf autoconf-doc \
	automake m4-doc doc-base

# Development - Java
apt install -y openjdk-21-jdk openjdk-21-doc openjdk-21-source

# Virtualisierung
apt install -y qemu-system qemu-utils qemu-user

# Clean-up
apt clean
