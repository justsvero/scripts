#!/usr/bin/bash

if [ "$UID" != "0" ]; then
	echo "You need to run this script as root"
	exit 1
fi

# Tools
apt install -y exuberant-ctags vim-nox vim-scripts git gitk git-gui curl wget ncftp w3m links sharutils urlview \
	mc arj btop htop powertop tmux screen keepassxc vim-doc git-doc manpages-de imagemagick imagemagick-doc \
	lm-sensors bat dos2unix meld xclip sharutils-doc enscript sqlite3 sqlite3-doc sqlite3-tools figlet
