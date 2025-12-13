#!/usr/bin/sh

# Install multimedia packages
apt install -y ubuntu-restricted-extras ffmpeg ffmpeg-doc \
	vlc vlc-plugin-pipewire libavcodec-extra \
	v4l-utils libmfx-gen1.2 libvpl-tools
