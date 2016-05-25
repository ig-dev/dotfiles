set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alphabetic by plugin name
Plugin 'bling/vim-airline'
Plugin 'bkad/CamelCaseMotion'
Plugin 'ctrlpvim/ctrlp.vim'
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
nnoremap <C-S> :w<CR>

" File closing
nnoremap <silent> <C-Q> :bd<CR>
nnoremap <silent> <C-S-Q> :bd!<CR>
autocmd BufDelete * call CloseOnLast()

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

" Move to beginning/end of line
map ge $
map gs ^

" Change capitalization
map U ~

" Reload configuration
map <C-L> :so %<CR>

" Auto reload changed files
set autoread
