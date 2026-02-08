#!/usr/bin/bash

if [ "$UID" != "0" ]; then
echo "You need to run this script as root"
exit 1
fi

apt install -y keepassxc kpcli tmux git git-doc git-email vim \
	vim-scripts vim-doc exuberant-ctags wget curl zip \
	unzip rar unrar arj mc links lynx w3m ncftp sharutils \
	sharutils-doc aspell aspell-de aspell-en hunspell \
	hunspell-de-at-frami hunspell-de-ch-frami \
	hunspell-de-de-frami hunspell-en-au hunspell-en-ca \
	hunspell-en-gb hunspell-en-us hunspell-en-za pwgen \
	dos2unix mtools bat neofetch htop btop apt-file \
	pass whois tree jq fzf figlet

echo '#################################################################'
echo 'Please run "apt-file update" as root to update the local database'
echo '#################################################################'
