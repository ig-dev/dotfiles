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

" Visual repeat
Plugin 'vim-scripts/visualrepeat'

" CamelCaseMotion
Plugin 'bkad/CamelCaseMotion'

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


" File types
au BufReadPost *.hbs set filetype=html


" Style
syntax on
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12,\ Inconsolata:h12:cDEFAULT
set t_Co=256
let g:molokai_original=0
colorscheme molokai
set lines=999 columns=999


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


" Scrolling
set scrolloff=3

" Keys
let mapleader = ","
" avoid shift for command mode
nnoremap ; :
vnoremap ; :


" NERD Tree config
map <C-o> :NERDTreeToggle<CR>


" Emmet config
let g:user_emmet_leader_key='<C-F>'


" YouCompleteMe config
let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'unite' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1
    \}


" Ctrl-P config
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|tmp$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:ctrlp_working_path_mode = '0'


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" modified tab color
source ~/.vim/bundle/vim-airline/autoload/airline/themes/molokai.vim
let g:airline#themes#molokai#palette.normal_modified = { 'airline_c' :
    \ [ '#ffffff' , '#4e52bc' , 23 , 52 , '' ] , }


" System clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
nnoremap <Leader>yy "+yy
nnoremap <Leader>Y "+Y
vnoremap <Leader>y "+y


" Buffer management
noremap <silent> <C-H> :bp<CR>
noremap <silent> <C-L> :bn<CR>
nnoremap <silent> <Leader>xx :bd<CR>
nnoremap <silent> <Leader>XX :bd!<CR>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9


" Search highlighting
nnoremap <silent> <Leader>n :nohlsearch<CR>
nnoremap <silent> <CR> :nohlsearch<CR>


" Moving content
vnoremap <Plug>IndentBlock >:silent! call repeat#set("\<Plug>IndentBlock")<CR>`[V`]
vnoremap <Plug>OutdentBlock <:silent! call repeat#set("\<Plug>OutdentBlock")<CR>`[V`]
nmap <Leader>k [e
nmap <Leader>j ]e
vmap <Leader>k [e
vmap <Leader>j ]e
nmap <Leader>h <<
nmap <Leader>l >>
vmap <Leader>h <Plug>OutdentBlock
vmap <Leader>l <Plug>IndentBlock


" convert px to em in line
noremap <leader>em
	\ :s/^.\{-}\(\d\+\)px.*$/& \/\* (\1:16) \*\//g <CR>
	\ :s#\v(\d+)px#\=printf("%sem", string(1.0/16*submatch(1)))#<CR>
	\ :s/ \*\/ \/\* / /g<CR>


" Center search results
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz
