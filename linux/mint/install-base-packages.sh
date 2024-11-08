#!/usr/bin/bash

apt install -y keepassxc kpcli tmux git git-doc vim \
	vim-scripts vim-doc exuberant-ctags wget curl zip \
	unzip rar unrar arj mc links lynx w3m ncftp sharutils \
	sharutils-doc aspell aspell-de aspell-en hunspell \
	hunspell-de-at-frami hunspell-de-ch-frami \
	hunspell-de-de-frami hunspell-en-au hunspell-en-ca \
	hunspell-en-gb hunspell-en-us hunspell-en-za pwgen \
	dos2unix mtools bat neofetch htop apt-file pass

apt-file update
