" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/echodoc.vim'
"Plug 'zchee/deoplete-clang'
"Plug 'tweekmonster/deoplete-clang2'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }


Plug 'nirajgup/netrw'
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
"Plug 'vim-scripts/Decho'
"Plug 'vim-scripts/Vimball'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'pseewald/vim-anyfold'

Plug 'wincent/command-t', {
\   'do': 'bash -c ''cd ruby/command-t/ext/command-t && ruby extconf.rb && make >> ~/log.txt'''
\ }


" Initialize plugin system
call plug#end()

syntax on
filetype plugin indent on
set ignorecase
if has('gui_macvim')
	nmap <D-j> gT
	nmap <D-k> gt
else
	nmap J gT
	nmap K gt
endif
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
colorscheme dracula
highlight Normal ctermbg=none
let mapleader = ","
let g:notes_suffix = '.txt'
set hlsearch
set autoread
au FocusGained,BufEnter * :checktime

nmap gc :let @* = expand("%:p")<CR>
nnoremap <silent> <leader>b :CommandTMRU<CR> "CommandTMRU Mapping
nnoremap <silent> <leader>, :YcmCompleter GoTo<cr> "YcmCompleter binding

"nnoremap <leader>a :e %:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>  
nnoremap <leader>a :call headertoggle#toggle()<CR>

set wildignore+=*/buildOutput/*,*/build/*,*/DerivedData/*

"let g:airline_theme = 'dark'
"let g:airline#extensions#hunks#enabled=1
"let g:airline#extensions#branch#enabled=1

let g:notes_directories = ['~/Google Drive/VimNotes']

set cmdheight=2

let g:echodoc#enable_at_startup = 1

"let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert
set completeopt+=noselect
set completeopt-=preview " disable preview window at the bottom of the screen
"inoremap <silent><expr><TAB>  pumvisible() ? \"\<C-n>" : \"\<TAB>"

"let:deoplete#enable_at_startup = 1
""let g:deoplete#auto_complete_delay = 150
""let g:deoplete#auto_refresh_delay = 1000
""let g:deoplete#enable_camel_case = 1
"
"
""let g:deoplete#sources#clang#libclang_path='/usr/local/Cellar/llvm/6.0.0/lib/libclang.dylib'
""let g:deoplete#sources#clang#clang_header='/usr/local/Cellar/llvm/6.0.0/lib/clang'
"let g:deoplete#sources#clang#executable='/usr/bin/clang'
"let g:deoplete#sources#clang#autofill_neomake = 1
"
""" set tab complete
"inoremap <expr><tab> pumvisible() ? \"\<c-n>" : \"\<tab>"
"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
"

" hybrid Numbering
set number relativenumber
autocmd Filetype cpp,h,cc,java,python let b:anyfold_activate=1
set foldlevel=0

