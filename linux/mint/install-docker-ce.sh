#!/usr/bin/sh

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Add Docker's official GPG key:
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the official Docker repository
echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
	$(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | \
	tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the local package database
apt update

# Install the Docker CE packages
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
