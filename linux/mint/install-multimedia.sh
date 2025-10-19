#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

apt install -y mint-meta-codecs ffmpeg ffmpeg-doc mplayer mplayer-doc \
	moc moc-ffmpeg-plugin vlc cheese brasero
