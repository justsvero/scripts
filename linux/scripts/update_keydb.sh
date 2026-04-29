#!/usr/bin/sh

UNZIP=$(which unzip)
ZIP=keydb_deu_$(date +%Y%m%d).zip
TARGET=$HOME/.config/aacs/KEYDB.cfg
BACKUP=$TARGET.backup_$(date +%Y%m%d)

if [ "$UNZIP" = "" -o ! -x $UNZIP ]; then
	echo "unzip is required but was not found"
	exit 1
fi

if [ ! -d ~/.config/aacs ]; then
	echo '~/.config/aacs does not exist - it will created now'
	mkdir -p ~/.config/aacs
fi

if [ ! -f /tmp/$ZIP ]; then
	wget 'http://fvonline-db.bplaced.net/fv_download.php?lang=deu' -O /tmp/$ZIP
fi

if [ -f /tmp/$ZIP ]; then
	unzip /tmp/$ZIP keydb.cfg -d /tmp

	if [ -f $TARGET ]; then
		mv $TARGET $BACKUP
	fi

	mv /tmp/keydb.cfg $TARGET

	if [ ! -d $HOME/Downloads ]; then
		mkdir $HOME/Downloads
	fi

	mv /tmp/$ZIP $HOME/Downloads/
fi
