#!/usr/bin/sh

# Install several tools and applications
apt install -y vim vim-doc vim-scripts exuberant-ctags keepassxc curl w3m ncftp \
	arj rar unrar tmux dict apt-file wl-clipboard pwgen pass git git-doc \
	sharutils sharutils-doc dos2unix mtools manpages-de-dev \
	inxi htop btop lm-sensors lfm mc bat neofetch hyfetch whois texinfo \
	gperf gawk gawk-doc

echo '#################################################################'
echo 'Please run "app-file update" as root to update the local database'
echo '#################################################################'
