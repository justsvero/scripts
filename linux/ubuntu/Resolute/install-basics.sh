#!/usr/bin/sh

# Install several tools and applications
apt install -y vim vim-doc vim-scripts exuberant-ctags keepassxc curl w3m ncftp \
	arj rar unrar tmux dict apt-file wl-clipboard pwgen pass git git-doc \
	sharutils sharutils-doc dos2unix mtools manpages-de \
	inxi htop btop lm-sensors mc bat fastfetch whois texinfo \
	gperf gawk gawk-doc bzip2-doc m4 m4-doc figlet

echo '#################################################################'
echo 'Please run "app-file update" as root to update the local database'
echo '#################################################################'
