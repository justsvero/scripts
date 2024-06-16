#!/usr/bin/bash

dnf install -y \
	https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

dnf upgrade -y

dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
