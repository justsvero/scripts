#!/usr/bin/bash

# Install multimedia codecs
dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav \
	--exclude=gstreamer1-plugins-bad-free-devel

# Install mp3 encoder
dnf install -y lame* --exclude=lame-devel

# Install/Upgrade multimedia package group
dnf group upgrade -y --with-optional --allowerasing Multimedia

# Install some multimedia apps
dnf install --allowerasing -y moc mplayer vlc ffmpeg
