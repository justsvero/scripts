#!/usr/bin/bash

# Update repository indexes and upgrade installed packages if necessary
apt update && apt upgrade -y

# Useful packages
apt install -y build-essential exuberant-ctags vim-nox vim-scripts git gitk \
	git-gui curl wget ncftp w3m links sharutils urlview apt-file rsync mc arj \
	zip unzip htop powertop openjdk-17-jdk openjdk-17-doc openjdk-17-source \
	tmux screen keepassxc kpcli neofetch binutils-doc make-doc gcc-doc \
	glibc-doc vim-doc git-doc manpages manpages-dev manpages-de \
	manpages-de-dev imagemagick imagemagick-doc qemu-system qemu-utils \
	qemu-user neofetch lm-sensors gfortran gfortran-doc gnucobol strace moc \
	moc-ffmpeg-plugin bat

# Clean-up
apt clean
