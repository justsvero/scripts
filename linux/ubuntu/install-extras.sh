#!/usr/bin/sh

apt install -y ubuntu-restricted-extras \
	ffmpeg ffmpeg-doc mplayer mplayer-doc vlc moc moc-ffmpeg-plugin v4l-utils libdvd-pkg \
	vim vim-doc vim-scripts exuberant-ctags keepassxc curl w3m ncftp mc arj rar unrar tmux dict \
	apt-file wl-clipboard xsel pwgen pass build-essential binutils-doc gcc-doc glibc-doc \
	libstdc++-13-doc make-doc cmake cmake-doc ninja-build git git-doc

apt-file update
