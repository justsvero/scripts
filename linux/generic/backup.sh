#!/usr/bin/bash

RSYNC=$(which rsync)

if [[ "$RSYNC" == "" ]] ; then
	echo "[ERROR] rsync is required but was not found"
	exit 1
fi

if [[ "$1" == "" ]] ; then
	echo "[ERROR] You need to specify the backup target"
	exit 1
elif [[ ! -d $1 ]] ; then
	echo "[ERROR] $1 not found or not a directory"
	exit 1
fi

$RSYNC -ahvs --update --delete --no-perms --progress $HOME/Documents/ $1/Documents/
$RSYNC -ahvs --update --delete --no-perms --progress $HOME/Music/ $1/Music/
$RSYNC -ahvs --update --delete --no-perms --progress $HOME/Pictures/ $1/Pictures/
