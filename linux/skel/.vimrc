if has("syntax")
	syntax on
    colorscheme pablo
endif

set background=dark
set backspace=eol,indent,start
set nocompatible
set number
set nowrap

filetype indent on
set smartindent
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab

autocmd BufRead,BufWritePre *.sh normal gg=G
