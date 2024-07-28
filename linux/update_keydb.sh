#!/usr/bin/sh

UNZIP=$(which unzip)
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

wget 'http://fvonline-db.bplaced.net/fv_download.php?lang=deu' -O /tmp/keydb_deu.zip

if [ -f /tmp/keydb_deu.zip ]; then
	unzip /tmp/keydb_deu.zip keydb.cfg -d /tmp

	if [ -f $TARGET ]; then
		mv $TARGET $BACKUP
	fi

	mv /tmp/keydb.cfg $TARGET
	rm /tmp/keydb_deu.zip
fi
