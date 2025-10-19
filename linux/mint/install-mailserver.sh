#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

apt install -y postfix postfix-doc sasl2-bin procmail fetchmail bsd-mailx mutt alpine alpine-doc
