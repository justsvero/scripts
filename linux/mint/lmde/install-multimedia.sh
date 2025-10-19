#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Multimedia
apt install -y ffmpeg ffmpeg-doc moc moc-ffmpeg-plugin vlc vlc-l10n vlc-plugin-pipewire
