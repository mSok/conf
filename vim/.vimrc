" vimrc from msok

"VimPlug https://github.com/junegunn/vim-plug
" установка
"

"Unix
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" color schemes
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

" complete code - need compiling
" Plug 'Valloric/YouCompleteMe'

" others
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'bf4/vim-dark_eyes'
Plug 'Heorhiy/VisualStudioDark.vim'
Plug 'tpope/vim-commentary'
Plug 'irrationalistic/vim-tasks'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
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

"Plug 'rking/ag.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

"set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

"######### setting silversearch ############
"let g:ackprg = 'ag --nogroup --nocolor --column'

syntax on
"######## setting colorscheme ############# 
set background=dark
colorscheme gruvbox
" colorscheme VisualStudioDark
" colorscheme darkblue
" colorscheme solarized

"####### common settings ################
set number
set nowrap
set cursorline
set expandtab
set tabstop=2
set hlsearch
set incsearch
let mapleader = ","
map <C-n> :NERDTreeToggle<CR>

"###### debug fo Python
noremap <leader>b 0Oimport pdb; pdb.set_trace()<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set directory=$HOME/.vim/swapfiles//
