if &compatible
	set nocompatible
endif

set runtimepath+=/home/mvoight/.config/vim/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/mvoight/.config/vim')
	call dein#begin('/home/mvoight/.config/vim')

	call dein#add('/home/mvoight/.config/vim/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippet')
	call dein#add('w0rp/ale')
	call dein#end()
	call dein#save_state()
endif 

:set number
:set bs=2
:set relativenumber
:syntax enable
:set tabstop=2
:set autoindent
:filetype plugin indent on
:set clipboard=unnamed
:set laststatus=2
:set title
:set ruler
:set shiftwidth=2
:set softtabstop=2
:set sb
" This setting doesn't seem to be as useful as the tmux manual
" made it sound
:set ttyfast
":set termguicolors
":set lazyredraw
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
