#!/usr/bin/sh

# Install several tools and applications
apt install -y vim vim-doc vim-scripts exuberant-ctags keepassxc curl w3m ncftp \
	mc arj rar unrar tmux dict apt-file wl-clipboard xsel pwgen pass git git-doc \
	sharutils sharutils-doc dos2unix mtools manpages-dev manpages-de-dev \
	inxi htop btop lm-sensors lfm bat neofetch hyfetch whois

echo 'Please run "app-file update" as root to update the local database'
