#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Import sign key
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg --dearmor

# Add repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian $(. /etc/os-release && echo $UBUNTU_CODENAME) contrib" | tee /etc/apt/sources.list.d/virtualbox.list

# Update repository database
apt update
