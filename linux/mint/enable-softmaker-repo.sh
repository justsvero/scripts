#!/usr/bin/bash

if [[ "$UID" != "0" ]]; then
	echo "You need to run this script as root"
	exit 1
fi

if [ ! -d /etc/apt/keyrings ]; then
	install -d -m 0755 /etc/apt/keyrings
fi

wget -qO- https://shop.softmaker.com/repo/linux-repo-public.key | gpg --dearmor > /etc/apt/keyrings/softmaker.gpg

echo "deb [signed-by=/etc/apt/keyrings/softmaker.gpg] https://shop.softmaker.com/repo/apt stable non-free" > /etc/apt/sources.list.d/softmaker.list

apt update

echo "Run \"apt install softmaker-office-2024\" to install"
