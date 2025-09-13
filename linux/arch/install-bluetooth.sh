#!/usr/bin/bash

pacman -S ccid libnfc acsccid pcsclite pcsc-tools bluez-utils
systemctl enable --now bluetooth

