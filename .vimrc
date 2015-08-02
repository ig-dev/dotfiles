" vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Sensible
Plugin 'tpope/vim-sensible'

" CTRL-P
Plugin 'kien/ctrlp.vim'

" NERD tree
Plugin 'scrooloose/nerdtree'

" NERD tree GIT
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Surround
Plugin 'tpope/vim-surround'

" Unimpaired
Plugin 'tpope/vim-unimpaired'

" Fugitive
Plugin 'tpope/vim-fugitive'

" Easily toggling comments
Plugin 'tpope/vim-commentary'

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

" Repeat
Plugin 'tpope/vim-repeat'

" Molokai theme
Plugin 'tomasr/molokai'

" JSON filetype detection and support
Plugin 'leshill/vim-json'

" JavaScript indentation fix
Plugin 'pangloss/vim-javascript'

" HTML indentation fix
Plugin 'indenthtml.vim'

" HTML 5
Plugin 'othree/html5.vim'

" Markdown
Plugin 'tpope/vim-markdown'

" LessCSS
Plugin 'groenewege/vim-less'

" Coffee-script syntax
Plugin 'kchmck/vim-coffee-script'


" required
call vundle#end()

" Filetype auto-detection
filetype plugin indent on

" Style
syntax on
set guifont=DejaVu\ Sans\ Mono\ 12,\ Inconsolata:h12:cDEFAULT
set t_Co=256
let g:molokai_original=0
colorscheme molokai


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
set nobackup " we don't need backups.
set nowritebackup
set noswapfile

" Buffers
set hidden " allow buffers with unsaved changes

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

" Mouse
:set mouse=c " no mouse

" Keys
let mapleader = ","
" avoid shift for command mode
nnoremap ; :
vnoremap ; :

" Moving content
nmap <Leader>k [e
nmap <Leader>j ]e
vmap <Leader>k [e
vmap <Leader>j ]e
nmap <Leader>h <<
nmap <Leader>l >>
vmap <Leader>h <`[V`]
vmap <Leader>l >`[V`]

" NERD Tree config
map <C-o> :NERDTreeToggle<CR>

" Indent Guides config
let g:indent_guides_start_level = 2

" Emmet config
map <C-N> <C-Y>
" let g:user_emmet_leader_key='<C-N>'
