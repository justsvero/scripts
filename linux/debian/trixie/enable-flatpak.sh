#!/usr/bin/bash

# Install the flatpak package
apt install -y flatpak

# Add flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
