"VimPlug https://github.com/junegunn/vim-plug
"установка
"
"Unix
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


"
call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" color schemes
" Plug 'morhetz/gruvbox'
" Plug 'altercation/vim-colors-solarized'

" complete code - need compiling
" Plug 'Valloric/YouCompleteMe'

" others
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'klen/python-mode'
Plug 'python-rope/ropevim'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Поиск по проекту
"необходимо установить silver_search
"https://github.com/ggreer/the_silver_searcher
"
"Ubuntu >= 13.10 (Saucy) or Debian >= 8 (Jessie)
"  apt-get install silversearcher-ag
"
"Fedora 21 and lower
"
"    yum install the_silver_searcher
Plug 'rking/ag.vim'
call plug#end()

let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0

if $TERM == "xterm-256color"
    set t_Co=256
endif

syntax on
set background=dark
" colorscheme solarized
colorscheme onehalfdark 
" colorscheme darkblue

set number
set relativenumber
set expandtab
set tabstop=2
set hlsearch
set incsearch
set ignorecase
set smartcase

set sw=2
set listchars=tab:>·,trail:·,extends:>,precedes:<,space:·
set sw=2
set list

let mapleader = ","
map <C-n> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR> "Окна

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
"tabs 
"vnoremap > >gv
"vnoremap < <gv

" Python mode
" nnoremap <leader>r !python3 %
" nnoremap <leader>b O import pdb; pdb.set_trace() 
