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

" Easyoperator Line
Plugin 'haya14busa/vim-easyoperator-line'

" Smooth Scroll
Plugin 'terryma/vim-smooth-scroll'

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
set number


" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab " don't use spaces instead of tabs.
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
set hlsearch | nohlsearch "Highlight search patterns, support reloading
set gdefault " use the `g` flag by default.


" Visual block
set virtualedit+=block " allow the cursor to go anywhere


" Mouse
:set mouse=c " no mouse


" Scrolling
set scrolloff=3

" Keys
let mapleader = ","
" avoid shift for command mode
" nnoremap ; :
" vnoremap ; :

" Easyoperator line keys
map <Leader>v  <Plug>(easyoperator-line-select)
nmap <Leader>d  <Plug>(easyoperator-line-delete)
nmap <Leader>y  <Plug>(easyoperator-line-yank)

" NERD Tree config
map <C-o> :NERDTreeToggle<CR>


" Emmet config
let g:user_emmet_leader_key='<C-Y>'


" EasyMotion Config
let g:EasyMotion_do_mapping = 0
" let g:EasyMotion_keys = ';HKLYUIOPNM,QWERTZXCVBASDGJF'
" Do not shade
let g:EasyMotion_do_shade = 0
" Use upper case
let g:EasyMotion_use_upper = 1
" Smartcase
let g:EasyMotion_smartcase = 1
" Smartsign
let g:EasyMotion_use_smartsign_us = 1
" keep cursor column
let g:EasyMotion_startofline = 1
" Don't skip folded line
let g:EasyMotion_skipfoldedline = 0
" Jump to first with enter & space
" let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1
" Prompt
let g:EasyMotion_prompt = '{n}> '
" Highlight cursor
let g:EasyMotion_cursor_highlight = 1

" EasyMotion search
map  / <Plug>(easymotion-sn)\v
omap / <Plug>(easymotion-tn)\v
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" EasyMotion Mapping EXPERIMENTAL
map ;s <Plug>(easymotion-s2)
map ;f <Plug>(easymotion-s)
map ;d <Plug>(easymotion-bd-W)
map <Space> <Plug>(easymotion-lineanywhere)

" Improve hjkl
map gj <Plug>(easymotion-j)
map gk <Plug>(easymotion-k)
noremap j gj
noremap k gk

" Extened word motion
map  ;w  <Plug>(easymotion-bd-wl)
map  ;e  <Plug>(easymotion-bd-el)
omap ;b  <Plug>(easymotion-bl)
"}}}

" Replace defaut
" smart f & F
omap f <Plug>(easymotion-bd-fl)
xmap f <Plug>(easymotion-bd-fl)
omap F <Plug>(easymotion-Fl)
xmap F <Plug>(easymotion-Fl)
omap t <Plug>(easymotion-tl)
xmap t <Plug>(easymotion-tl)
omap T <Plug>(easymotion-Tl)
xmap T <Plug>(easymotion-Tl)

nmap <expr><Tab> EasyMotion#is_active() ?
\ '<Plug>(easymotion-next)' : '<TAB>'
nmap <expr>' EasyMotion#is_active() ?
\ '<Plug>(easymotion-prev)' : "'"


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
	\ 'dir':	'\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|tmp$',
	\ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:ctrlp_working_path_mode = '0'


" IndentGuides config
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#222222 ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#222222 ctermbg=234


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" modified tab color
source ~/.vim/bundle/vim-airline/autoload/airline/themes/molokai.vim
let g:airline#themes#molokai#palette.normal_modified = { 'airline_c' :
	\ [ '#ffffff' , '#4e52bc' , 23 , 52 , '' ] , }


" Smooth Scroll Configuration
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>


" System clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
noremap <Leader>Y "+Y
" experimental
nmap "" "+
xmap "" "+


" Buffer management
noremap <silent> <C-H> :bp<CR>
noremap <silent> <C-L> :bn<CR>
nnoremap <silent> <Leader>x :bd<CR>
nnoremap <silent> <Leader>X :bd!<CR>
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


" Hidden characters
nmap <leader>ts :set list!<CR>


" Tab/spaces conversions
nnoremap <Leader>tn :set noexpandtab<CR>
nnoremap <Leader>te :set expandtab<CR>
nnoremap <Leader>tr :retab!<CR>
nnoremap <silent> <Leader>t24
	\ :set tabstop=2<CR>
	\ :set shiftwidth=2<CR>
	\ :retab!<CR>
	\ :set tabstop=4<CR>
	\ :set shiftwidth=4<CR>

nnoremap <silent> <Leader>t42
	\ :set tabstop=4<CR>
	\ :set shiftwidth=4<CR>
	\ :retab!<CR>
	\ :set tabstop=2<CR>
	\ :set shiftwidth=2<CR>

