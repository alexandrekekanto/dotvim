set nocompatible

" setting pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" configuration
colorscheme desert

syntax on
filetype on
set autoindent
filetype plugin indent on

set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set showmatch
set ignorecase
set smartcase
set expandtab
set hlsearch
set incsearch
set backspace=indent,eol,start
set hidden
"set textwidth=79
set pastetoggle=<F2>
set nowrap

set visualbell
set noerrorbells
set nobackup
set noswapfile

set showmode
set showcmd
set hidden
set cursorline
set scrolloff=3
"set nu
set ruler
set foldmethod=indent
set foldlevel=99
set completeopt=menuone,longest,preview
set laststatus=2
set statusline=%t\ %y

if has('autocmd')
    autocmd FocusLost * :wa
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2
    autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2
endif


let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
let g:SuperTabDefaultCompletionType='context'
let g:user_zen_expandabr_key='<c-e>'
let mapleader=','
let g:ackprg="ack-grep -H --nocolor --nogroup --column"


" mappings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nnoremap <leader>a <Esc>:Ack!
nnoremap <leader><space> :noh<CR>
"inoremap <c-space> <c-x><c-o>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

