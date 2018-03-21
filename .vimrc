" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-clang'


Plug 'eiginn/netrw'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'will133/vim-dirdiff'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'terryma/vim-multiple-cursors'
Plug 'xolox/vim-notes'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'

Plug 'wincent/command-t', {
\   'do': 'bash -c ''cd ruby/command-t/ext/command-t && ruby extconf.rb && make >> ~/log.txt'''
\ }


" Initialize plugin system
call plug#end()

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
colorscheme elflord
let mapleader = ","

"let g:airline_theme = 'dark'
"let g:airline#extensions#hunks#enabled=1
"let g:airline#extensions#branch#enabled=1

" Use deoplete
let g:deoplete#enable_at_startup = 1
