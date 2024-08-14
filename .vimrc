" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
if has('win32') || has('win64')
    call plug#begin('C:\Users\nirgupta\.vim\plugged')
else
    call plug#begin('~/.vim/plugged')
endif


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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'will133/vim-dirdiff'
Plug 'tpope/vim-fugitive'
Plug 'xolox/vim-misc'
Plug 'terryma/vim-multiple-cursors'
"Plug 'xolox/vim-notes'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'skywind3000/asyncrun.vim'
"Plug 'christoomey/vim-run-interactive'
"Plug 'joonty/vim-do'
"Plug 'vim-scripts/Conque-Shell'
"Plug 'vim-scripts/bash-support.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'universal-ctags/ctags'

"Plug 'vim-scripts/Decho'
"Plug 'vim-scripts/Vimball'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'pseewald/vim-anyfold'
"Plug 'zerowidth/vim-copy-as-rtf'
"Plug 'vim-utils/vim-man'

Plug 'wincent/command-t', {
\   'do': 'bash -c ''cd ruby/command-t/ext/command-t && ruby extconf.rb && make >> ~/log.txt'''
\ }

Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'tomasr/molokai'
Plug 'bkad/CamelCaseMotion'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-vinegar'
"Plug 'gauteh/vim-cppman'
"Plug 'gabrielelana/vim-markdown'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'python-mode/python-mode', {'branch':'develop'}
Plug 'godlygeek/tabular'
"Plug 'inkarkat/vim-mark', {'branch':'stable'}

if has('mac') || has('unix')
    Plug 'edkolev/tmuxline.vim'
    "Plug 'jeffkreeftmeijer/vim-numbertoggle'
    Plug 'airblade/vim-gitgutter'
    set number
    "set relativenumber
    "set cursorline
    set shell=/usr/local/bin/fish
else
    let g:tagbar_ctags_bin="C:\\Program Files\\ctags\\ctags.exe"
endif

" Initialize plugin system
call plug#end()

syntax on
filetype plugin indent on
set ignorecase
if has('gui_macvim')
	nmap <D-j> gT
	nmap <D-k> gt
	set macmeta!
else
	nmap J gT
	nmap K gt
endif
set visualbell t_vb=
set backspace=2
let g:netrw_liststyle=3
let g:netrw_altv=1              " open files on right
let g:netrw_preview=1           " open previews vertically
"let g:netrw_browse_split=4
let g:netrw_winsize=90		" constant netrw size
let g:netrw_localrmdir='rm -r'
let g:airline_powerline_fonts = 1
let g:netrw_list_hide='.*\.pyc$,.*\.meta$,__pycache__'
let g:netrw_banner=0
let g:netrw_sizestyle='H'
set laststatus=2
set mouse=a
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
"colorscheme dracula
"highlight Normal ctermbg=none
colorscheme molokai
let mapleader = ","
let g:notes_suffix = '.txt'
set hlsearch
set autoread
au FocusGained,BufEnter * :checktime
set hidden
set list listchars=eol:$,tab:‣\ ,trail:~,extends:>,precedes:<,space:.
set undofile	" Maintain undo history between sessions"
set undodir=~/.vim/undodir
if has('gui_macvim')
	highlight clear SpecialKey
	highlight link SpecialKey DraculaSubtle
endif

nmap gc :let @* = expand("%:p")<CR>
nnoremap <silent> <leader>r :CommandTMRU<CR> "CommandTMRU Mapping
nnoremap <silent> <leader>, :YcmCompleter GoTo<cr> "YcmCompleter binding
command! -nargs=0 OpenInHtml    call openInHtml#open()
nmap ,k :Cppman <cword><CR>
nmap <m-j> :bp<CR>
nmap <m-k> :bn<CR>

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
"autocmd Filetype cpp,h,cc,java,python,cs let b:anyfold_activate=1
"autocmd filetype cpp,c let g:anyfold_identify_comments=1
"autocmd filetype python,java let g:anyfold_identify_comments=2
let g:anyfold_fold_comments=1
let g:anyfold_comments=['comment','string','external','include']
"set foldlevel=0
call camelcasemotion#CreateMotionMappings('<leader>')
nmap <F8> :TagbarToggle<CR>
autocmd FileType * nested :call tagbar#autoopen(0)

let g:airline#extensions#tabline#enabled = 1
let g:CommandTTraverseSCM='pwd'

let g:zipPlugin_ext='*.apk,*.celzip,*.crtx,*.docm,*.docx,*.dotm,*.dotx,*.ear,*.epub,*.gcsx,*.glox,*.gqsx,*.ja,*.jar,*.kmz,*.oxt,*.potm,*.potx,*.ppam,*.ppsm,*.ppsx,*.pptm,*.pptx,*.sldx,*.thmx,*.vdw,*.war,*.wsz,*.xap,*.xlam,*.xlam,*.xlsb,*.xlsm,*.xlsx,*.xltm,*.xltx,*.xpi,*.zip,*.aar'
set title
augroup dirchange
    autocmd!
    autocmd DirChanged * let &titlestring=v:event['cwd']
augroup END

xnoremap <leader>c <esc>:'<,'>:w !bash<CR>

xnoremap <leader>f <esc>:'<,'>:w !python -m json.tool<CR>

"command! -range -nargs=0 -bar JsonTool <line1>,<line2>!python -m json.tool
command! -range -nargs=0 -bar JsonTool <line1>,<line2>!python3 -c "import json, sys, collections; print(json.dumps(json.loads(sys.stdin.read(), object_pairs_hook=collections.OrderedDict), indent=4))"


function s:exec_on_term(lnum1, lnum2)
  " get terminal buffer
  let g:terminal_buffer = get(g:, 'terminal_buffer', -1)
  " open new terminal if it doesn't exist
  if g:terminal_buffer == -1 || !bufexists(g:terminal_buffer)
    terminal
    let g:terminal_buffer = bufnr('')
    wincmd p
  " split a new window if terminal buffer hidden
  elseif bufwinnr(g:terminal_buffer) == -1
    exec 'sbuffer ' . g:terminal_buffer
    wincmd p
  endif
  " join lines with "\<cr>", note the extra "\<cr>" for last line
  " send joined lines to terminal.
  call term_sendkeys(g:terminal_buffer,
        \ join(getline(a:lnum1, a:lnum2), "\<cr>") . "\<cr>")
endfunction

command! -range ExecOnTerm call s:exec_on_term(<line1>, <line2>)
nnoremap <leader>ex :ExecOnTerm<cr>
vnoremap <leader>ex :ExecOnTerm<cr>


let g:dbs = {
\  'hogwarts-backend-dev': 'mysql://hogwarts:hogwarts@localhost:3306/hogwarts'
\ }


" Save and load folding from session to session
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

set tags=./tags;/
