#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Java 17 & 21
apt install -y openjdk-{17,21}-{doc,jdk,source}
