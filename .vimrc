" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Sensible
Bundle 'tpope/vim-sensible'

" CTRL-P
Bundle 'kien/ctrlp.vim'

" NERD tree
Bundle 'scrooloose/nerdtree'

" NERD tree GIT
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Surround
Plugin 'tpope/vim-surround'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Easily toggling comments
Bundle 'tpope/vim-commentary'

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" Tabular
Plugin 'godlygeek/tabular'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Emmet
Plugin 'mattn/emmet-vim'

" Airline
Plugin 'bling/vim-airline'

" Indent Guides
Plugin 'nathanaelkane/vim-indent-guides'

" Molokai theme
Plugin 'tomasr/molokai'

" JSON filetype detection and support
Bundle 'leshill/vim-json'

" JavaScript indentation fix
Bundle 'pangloss/vim-javascript'

" HTML indentation fix
Bundle 'indenthtml.vim'

" HTML 5
Plugin 'othree/html5.vim'

" Markdown
Bundle 'tpope/vim-markdown'

" LessCSS
Bundle 'groenewege/vim-less'

" Coffee-script syntax
Bundle 'kchmck/vim-coffee-script'


" Filetype auto-detection
filetype plugin indent on

" Syntax highlighting
syntax on

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.


" File saving
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?


" Search
set ignorecase
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.
" treat expression in search as regex
nnoremap / /\v 
vnoremap / /\v

" Visual block
set virtualedit+=block " allow the cursor to go anywhere


" Keys
let mapleader = ","
" avoid shift for command mode
nnoremap ; :
vnoremap ; :

" NERD tree config
map <C-o> :NERDTreeToggle<CR>



