# ~/.bash_aliases

alias fix-permissions='find . -mindepth 1 -type d -exec chmod 0755 {} \; && find . -type f -exec chmod 0644 {} \; && find . -type f -name "*.sh" -exec chmod 0755 {} \;'
alias sync-folders='rsync -ahvs --no-p --update --delete --stats'
