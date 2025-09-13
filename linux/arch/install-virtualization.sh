#!/usr/bin/bash

pacman -S libvirt qemu-full dnsmasq virt-manager dmidecode
systemctl enable --now libvirtd
usermod -aG libvirt sven
