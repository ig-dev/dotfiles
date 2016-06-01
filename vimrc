set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alphabetic by plugin name
Plugin 'tpope/vim-abolish'         " Abolish
Plugin 'rking/ag.vim'              " Ag
Plugin 'bkad/CamelCaseMotion'      " CamelCaseMotion
Plugin 'tpope/vim-commentary'      " Commentary
Plugin 'ctrlpvim/ctrlp.vim'        " ctrl-p
Plugin 'Raimondi/delimitMate'      " DelimitMate
Plugin 'easymotion/vim-easymotion' " EasyMotion
Plugin 'mattn/emmet-vim'           " Emmet
Plugin 'tpope/vim-fugitive'        " Fugitive
Plugin 'Valloric/ListToggle'       " ListToggle
Plugin 'tomasr/molokai'            " Molokai
Plugin 'scrooloose/nerdtree'       " Nerdtree
Plugin 'tpope/vim-repeat'          " Repeat
Plugin 'honza/vim-snippets'        " Snippets
Plugin 'tpope/vim-surround'        " Surround
Plugin 'godlygeek/tabular'         " Tabular
Plugin 'SirVer/ultisnips'          " UltiSnips
Plugin 'tpope/vim-unimpaired'      " Unimpaired
Plugin 'VundleVim/Vundle.vim'      " Vundle
Plugin 'Valloric/YouCompleteMe'    " YouCompleteMe

" Languages
Plugin 'kchmck/vim-coffee-script'   " CoffeeScript
Plugin 'othree/html5.vim'           " HTML5
Plugin 'pangloss/vim-javascript'    " JavaScript
Plugin 'Glench/Vim-Jinja2-Syntax'   " Jinja2
Plugin 'elzr/vim-json'              " JSON
Plugin 'mxw/vim-jsx'                " JSX
Plugin 'leafgarland/typescript-vim' " Typescript

call vundle#end()
filetype plugin indent on

" Editor appearance
let g:rehash256 = 1
colorscheme molokai
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
set number
syntax on
set noshowmode
set laststatus=0
highlight Pmenu ctermfg=234 ctermbg=226

" Mouse
set ttyfast
set mouse=a

" Allow unsaved buffers
set hidden

" Search
set ignorecase
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set nohlsearch " Highlight search patterns, support reloading
set gdefault " use the `g` flag by default.

" Tabs
set tabstop=4
set shiftwidth=4

" Garbage files
set nobackup
set nowritebackup
set noswapfile

" Auto reload changed files
set autoread

" Buffer switching
map <silent> <C-H> :bp<CR>
map <silent> <C-L> :bn<CR>

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
xnoremap <Tab> >gv
xnoremap <S-Tab> <gv
nnoremap <Tab> >>
nnoremap <S-Tab> <<

" System clipboard
inoremap <C-V> <C-R>+
noremap <Leader>d "+d
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
nnoremap <Leader>Y "+Y
nnoremap <Leader>dd "+dd
nnoremap <Leader>D "+D
nnoremap <Leader>yy "+yy
xnoremap <Leader>y "+y
xnoremap <Leader>p "+p
xnoremap <Leader>P "+P

" Do not overwrite register when pasting in visual mode
xnoremap p "_dP

" Do not overwrite register when using x/X
noremap x "_x
noremap X "_X

" Deletion without overwriting register
map <Space>d "_d
map <Space>dd "_dd
map <Space>D "_D

" Move to beginning/end of line
map ge $
map gs ^

" move character horizontally
nnoremap <Space>l "xx"xp
nnoremap <Space>h "xxh"xP

" Change capitalization
map U ~

" turn off search highlighting
nmap <Space><Esc> :nohlsearch<CR>

" disable weird popup
nmap Q <Nop>

" Auto completion tip window
autocmd CompleteDone * if pumvisible() == 0|pclose|endif
set splitbelow

