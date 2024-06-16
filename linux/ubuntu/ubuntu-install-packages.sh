#!/usr/bin/bash

if [[ "$UID" != "0" ]]; then
	echo "You need to run this script as root!"
	exit 1
fi

# Update package cache
apt update

# Update packages if neccessary
apt dist-upgrade -y

# Basics
apt install -y vim vim-doc vim-scripts exuberant-ctags keepassxc \
	curl w3m ncftp mc arj rar unrar tmux dict apt-file \
	wl-clipboard xsel

apt-file update

# Development
apt install -y build-essential  binutils-doc gcc-doc glibc-doc libstdc++-11-doc make-doc \
	cmake cmake-doc ninja-build git git-doc git-gui gitk

# Multimedia
apt install -y ubuntu-restricted-extras ffmpeg ffmpeg-doc mplayer mplayer-doc vlc \
	moc moc-ffmpeg-plugin mpv libdvd-pkg v4l-utils

echo "Please run \"dpkg-reconfigure libdvd-pkg\" as root to build libdvdcss"

# Clean up
apt clean
