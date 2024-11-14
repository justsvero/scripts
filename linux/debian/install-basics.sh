#!/usr/bin/bash

# Install base packages
apt install -y tmux git git-doc vim vim-doc vim-scripts exuberant-ctags mc \
	rar unrar arj zip unzip wget curl ncftp w3m inxi btop htop powertop \
	keepassxc kpcli rsync imagemagick imagemagick-doc manpages-de \
	plymouth-themes apt-file aspell aspell-doc aspell-de aspell-en \
	mtools dos2unix pass pwgen neofetch lfm bat chromium chromium-l10n

# Update the apt-file database
apt-file update
