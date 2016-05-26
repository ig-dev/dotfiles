set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alphabetic by plugin name
Plugin 'tpope/vim-abolish'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-unimpaired'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" Buffer switching
map <silent> <C-H> :bp<CR>
map <silent> <C-L> :bn<CR>
 
" Allow unsaved buffers
set hidden

" Editor appearance
let g:rehash256 = 1
colorscheme molokai
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
set number
syntax on

" Search
set ignorecase
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set nohlsearch "Highlight search patterns, support reloading
set gdefault " use the `g` flag by default.

" Garbage files
set nobackup
set nowritebackup
set noswapfile

" File saving
noremap <C-S> :w<CR>
inoremap <C-S> <C-O>:w<CR>

" File closing
nnoremap <silent> <C-W> :call CloseBufferOrQuit()<CR>
nnoremap <silent> <Space><C-W> :bd!<CR>
nnoremap <silent> <C-Q> :q<CR>
nnoremap <silent> <Space><Space><C-Q> :q!<CR>

" Leader
map <Space> <Leader>

" Select pasted text
nmap gp `[v`]

" Indentation
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
nnoremap <Tab> >>
nnoremap <S-Tab> <<

" System clipboard
inoremap <C-P> <C-R>+
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
nnoremap <Leader>Y "+Y
nnoremap <Leader>dd "+dd
nnoremap <Leader>D "+D
nnoremap <Leader>yy "+yy
vnoremap <Leader>y "+y
vnoremap <Leader>d "+d
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" Do not overwrite register when pasting in visual mode
xnoremap p "_dP

" Do not overwrite register when using x/X
noremap x "_x
noremap X "_X

" Deletion without overwriting register
map <Space>d "_d
map <Space>D "_D

" Move to beginning/end of line
map ge $
map gs ^

" Change capitalization
map U ~

" Auto reload changed files
set autoread

" Tabs
set tabstop=4
set shiftwidth=4

" disable weird popup
nmap Q <Nop>
