if &compatible
	set nocompatible
endif

" this needs to be installed before it can be used
" install the plugin manager as stated below:
"
" curl
" https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
" -o installer.sh
" sh ./installer.sh ~/.config/vim
"
" then use `:call dein#install()`

set runtimepath+=/home/newnix/.config/vim/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/newnix/.config/vim')
	call dein#begin('/home/newnix/.config/vim')

	call dein#add('/home/newnix/.config/vim/repos/github.com/Shougo/dein.vim')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippet')
	call dein#add('w0rp/ale')
	"call dein#add('xuhdev/vim-latex-live-preview')
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
" Add provisions for LaTeX live previews
"let g:livepreview_previewer = '/usr/local/bin/mupdf'
"let g:updatetime = 1000
