#!/usr/bin/bash

sudo apt install -y \
	vim \
	vim-doc \
	vim-scripts \
	exuberant-ctags \
	htop \
	lm-sensors \
	i2c-tools \
	read-edid \
	strace \
	zip \
	unzip \
	fastfetch \
	curl \
	tmux \
	build-essential \
	gcc-14-locales \
	gcc-doc \
	glibc-doc \
	gdb gdb-doc \
	bison \
	bison-doc \
	flex \
	flex-doc \
	make-doc \
	diffutils-doc \
	libstdc++-14-doc \
	binutils-doc \
	cpp-doc \
	m4-doc \
	glibc-doc-reference \
	autoconf \
	automake \
	libtool \
	autoconf-doc \
	libtool-doc \
	gfortran \
	gfortran-doc \
	gnu-standards \
	gettext \
	gettext-doc \
	gnulib-l10n \
	git \
	git-doc \
	git-email \
	xorg \
	xorg-docs \
	xterm \
	mesa-utils \
	menu-l10n \
	xinput \
	xfonts-intl-european \
	icewm \
	fonts-freefont-ttf \
	plymouth-themes \
	ghostscript \
	pipewire \
	pipewire-audio \
	pipewire-doc \
	pipewire-pulse \
	pipewire-jack \
	pulseaudio-utils \
	alsa-utils \
	firefox-esr \
	firefox-esr-l10n-{de,en-ca,en-gb} \
	hunspell \
	hunspell-de-de \
	hunspell-en-gb \
	hunspell-en-us \
	speex \
	fonts-stix \
	fonts-lmodern \
	speex-doc \
	libavcodec-extra \
	ffmpeg \
	ffmpeg-doc \
	vlc \
	vlc-plugins-pipewire \
	libdvd-pkg

sudo dpkg-reconfigure libdvd-pkg

systemctl --user enable --now wireplumber.service
systemctl --user enable --now pipewire-pulse.service

echo 'Bitte starte das System neu...'
