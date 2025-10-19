#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# CLang
apt install -y clang lldb clang-18-doc llvm-18-doc
