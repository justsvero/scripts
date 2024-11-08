#!/usr/bin/bash

# Install multimedia codecs
dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav \
	--exclude=gstreamer1-plugins-bad-free-devel

# Install mp3 encoder
dnf install -y lame* --exclude=lame-devel

# Install multimedia package group (TODO: for some reason dnf5 does not find this group)
dnf4 group install -y --with-optional --allowerasing Multimedia

# Install some multimedia apps
dnf install --allowerasing -y mplayer mplayer-doc vlc ffmpeg
