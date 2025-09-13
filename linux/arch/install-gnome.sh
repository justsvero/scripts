#!/usr/bin/env bash

pacman -S gnome gdm
systemctl enable gdm
echo 'Please run "systemctl --user enable --now gcr-ssh-agent.socket"'

