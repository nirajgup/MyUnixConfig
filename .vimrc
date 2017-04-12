execute pathogen#infect()
syntax on
filetype plugin indent on
noremap gw <C-W><C-W>
set ignorecase
nmap J gT
nmap K gt
set visualbell t_vb=
set backspace=2
let g:netrw_liststyle=3
set shell=/usr/local/bin/fish
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
"let g:netrw_browse_split=4
let g:netrw_winsize=15		" constant netrw size
let g:netrw_localrmdir='rm -r'
let g:airline_powerline_fonts = 1
let g:netrw_list_hide='.*\.pyc$,.*\.meta$,__pycache__'
let g:netrw_banner=0
let g:netrw_sizestyle='H'
set laststatus=2
set mouse=a
set cursorline
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4 smarttab

"let g:airline_theme = 'dark'
"let g:airline#extensions#hunks#enabled=1
"let g:airline#extensions#branch#enabled=1
