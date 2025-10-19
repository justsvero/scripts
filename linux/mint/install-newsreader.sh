#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

apt install -y leafnode tin slrn slrnface libcompfaceg1-dev
