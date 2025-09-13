#!/usr/bin/env bash

pacman -S pipewire pipewire-audio pipewire-alsa pipewire-pulse \
	pipewire-jack alsa-utils gst-libav ffmpeg intel-media-driver intel-media-sdk

echo 'Run as user: "systemctl --user enable --now wireplumber"'
echo 'Run as user: "systemctl --user enable --now pipewire-pulse"'
