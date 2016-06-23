set nocompatible
filetype off

" Initialize Vim-Plug
call plug#begin("~/.vim/bundle")

" Alphabetic by plugin name
Plug 'tpope/vim-abolish'                " Abolish
Plug 'rking/ag.vim'                     " Ag
Plug 'bkad/CamelCaseMotion'             " CamelCaseMotion
Plug 'tpope/vim-commentary'             " Commentary
Plug 'ctrlpvim/ctrlp.vim'               " ctrl-p
Plug 'Raimondi/delimitMate'             " DelimitMate
Plug 'easymotion/vim-easymotion'        " EasyMotion
Plug 'mattn/emmet-vim'                  " Emmet
Plug 'tpope/vim-fugitive'               " Fugitive
Plug 'airblade/vim-gitgutter'           " GitGutter
Plug 'Valloric/ListToggle'              " ListToggle
Plug 'mustache/vim-mustache-handlebars' " MustacheHandlebars
Plug 'tomasr/molokai'                   " Molokai
Plug 'scrooloose/nerdtree'              " Nerdtree
Plug 'tpope/vim-repeat'                 " Repeat
Plug 'honza/vim-snippets'               " Snippets
Plug 'tpope/vim-surround'               " Surround
Plug 'godlygeek/tabular'                " Tabular
Plug 'SirVer/ultisnips'                 " UltiSnips
Plug 'tpope/vim-unimpaired'             " Unimpaired
Plug 'Valloric/YouCompleteMe'           " YouCompleteMe

" Languages
Plug 'kchmck/vim-coffee-script'   " CoffeeScript
Plug 'othree/html5.vim'           " HTML5
Plug 'pangloss/vim-javascript'    " JavaScript
Plug 'Glench/Vim-Jinja2-Syntax'   " Jinja2
Plug 'elzr/vim-json'              " JSON
Plug 'mxw/vim-jsx'                " JSX
Plug 'leafgarland/typescript-vim' " Typescript

call plug#end()

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

" Keep cursor at visual distance to top and bottom
set scrolloff=5

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
imap <silent> <C-H> <C-O>:bp<CR>
imap <silent> <C-L> <C-O>:bn<CR>

" File saving
noremap <C-S> :w<CR>
inoremap <C-S> <ESC>:w<CR>

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
nmap <Space><Esc> :nohlsearch<CR>:cclose<CR>

" disable weird popup
nmap Q <Nop>

" Auto completion tip window
autocmd CompleteDone * if pumvisible() == 0|pclose|endif
set splitbelow

" Fix j/k navigation
nmap j gj
nmap k gk

" When yanking / copying in visual mode, do not move cursor
vmap y ygv<Esc>
