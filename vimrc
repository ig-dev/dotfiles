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

" UltiSnips	
Plugin 'SirVer/ultisnips'

" Snippets
Plugin 'honza/vim-snippets'

" Tabular
Plugin 'godlygeek/tabular'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Emmet
Plugin 'mattn/emmet-vim'

" Airline
Plugin 'bling/vim-airline'

" Repeat
Plugin 'tpope/vim-repeat'

" CamelCaseMotion
Plugin 'bkad/CamelCaseMotion'

" Fanfingtastic (ci multiline f)
Plugin 'dahu/vim-fanfingtastic'

" Easyoperator Line
Plugin 'haya14busa/vim-easyoperator-line'

" DelimitMate
Plugin 'Raimondi/delimitMate'

" Expand Region
Plugin 'terryma/vim-expand-region'

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
filetype plugin indent on


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
set expandtab   " use spaces instead of tabs.
set smarttab    " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround  " tab / shifting moves to closest tabstop.
set autoindent  " Match indents on new lines.
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
set nohlsearch "Highlight search patterns, support reloading
set gdefault " use the `g` flag by default.
noremap <Leader>r :%s/\v

" Visual block
set virtualedit+=block " allow the cursor to go anywhere


" Mouse
set mouse=c " no mouse

" Scrolling
set scrolloff=3
nnoremap <Leader>zz :let &scrolloff=999-&scrolloff<CR>


" Keys
let mapleader = "\<Space>"


" Pasting
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]


" Operations
nmap <Leader>s :w<CR>


" Easyoperator line keys
map <Leader>v  <Plug>(easyoperator-line-select)
nmap <Leader>d  <Plug>(easyoperator-line-delete)
nmap <Leader>y  <Plug>(easyoperator-line-yank)


" NERD Tree config
map <Leader>O :NERDTreeToggle<CR>
autocmd FileType nerdtree nmap <buffer> J <Plug>(easymotion-j)
autocmd FileType nerdtree nmap <buffer> K <Plug>(easymotion-k)
autocmd FileType nerdtree nmap <buffer> L o
autocmd FileType nerdtree nmap <buffer> H x
autocmd FileType nerdtree nmap <buffer> <C-CR> go
autocmd FileType nerdtree nmap <buffer> <S-CR> o:NERDTreeClose<CR>
autocmd FileType nerdtree map <buffer> / <Plug>(easymotion-sn)\v^\W*
autocmd FileType nerdtree map <buffer> <Esc> :NERDTreeClose<CR>


" Emmet config
let g:user_emmet_leader_key='<C-Y>'
nmap <C-Y>y <C-Y>,
vmap <C-Y>y <C-Y>,
imap <C-Y>y <C-Y>,


" Surroung config
nmap '" cs'"
nmap "' cs"'
nmap <Leader>'w ysiw"
nmap <Leader>'W ysiW"

" EasyMotion Config
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_keys = 'ASDFJKLQWERUIOPZXCNMGHVBTY;'
" Do not shade
let g:EasyMotion_do_shade = 1
" Use upper case
let g:EasyMotion_use_upper = 1
" Smartcase
let g:EasyMotion_smartcase = 1
" Smartsign
let g:EasyMotion_use_smartsign_us = 1
" keep cursor column
let g:EasyMotion_startofline = 0
" Don't skip folded line
let g:EasyMotion_skipfoldedline = 0
" Jump to first with enter & space
" let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1
" Prompt
let g:EasyMotion_prompt = '{n}: '
" Highlight cursor
let g:EasyMotion_cursor_highlight = 1

let g:EasyMotion_re_anywhere = '\v[:\-=\(\)]'


" Seach /  EasyMotion search
" clear last search pattern highlight, and enable search result hightlighting
noremap <Leader>/ :let @/ = ""<CR>:set hlsearch<CR>/\v
onoremap <Leader>/ /\v
map  / <Plug>(easymotion-sn)\v
omap / <Plug>(easymotion-tn)\v
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)


" EasyMotion Mapping
map <CR> <Plug>(easymotion-s)
map <Leader><CR> <Plug>(easymotion-s2)
map <Leader>f <Plug>(easymotion-lineanywhere)
map <C-Space> <Plug>(easymotion-jumptoanywhere)

 
" HJKL mappings
map <C-J> <Plug>(easymotion-j)
map <C-K> <Plug>(easymotion-k)
map <silent> <C-H> :bp<CR>
map <silent> <C-L> :bn<CR>
noremap j gj
noremap k gk
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


" Tabular config
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>ap :Tabularize /\|<CR>
vmap <Leader>ap :Tabularize /\|<CR>

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


" UltiSnips config
let g:UltiSnipsExpandTrigger="<C-CR>"
let g:UltiSnipsJumpForwardTrigger="<C-CR>"
let g:UltiSnipsJumpBackwardTrigger="<C-Z>"
" Experimental
imap <silent> <S-Space> <C-CR>
smap <silent> <S-Space> <C-CR>

" Expand Region config
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)


" Ctrl-P config
map <Leader>o <C-P>
let g:ctrlp_custom_ignore = {
	\ 'dir':	'\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|tmp$',
	\ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:ctrlp_working_path_mode = '0'
let g:ctrlp_show_hidden = 1

let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -U -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'],
    \ }
endif


" IndentGuides config
let g:indent_guides_default_mapping = 0
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#222222 ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#222222 ctermbg=234


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" modified tab color
let g:airline#themes#molokai#palette.normal_modified = { 'airline_c' :
	\ [ '#ffffff' , '#4e52bc' , 23 , 52 , '' ] , }


" FanfingTastic Configuration
let g:fanfingtastic_ignorecase = 1


" CamelCaseMotion config
map <silent> <Leader>w <Plug>CamelCaseMotion_w
map <silent> <Leader>b <Plug>CamelCaseMotion_b
map <silent> <Leader>e <Plug>CamelCaseMotion_e
omap <silent> <Leader>iw <Plug>CamelCaseMotion_iw
xmap <silent> <Leader>iw <Plug>CamelCaseMotion_iw
omap <silent> <Leader>ib <Plug>CamelCaseMotion_ib
xmap <silent> <Leader>ib <Plug>CamelCaseMotion_ib
omap <silent> <Leader>ie <Plug>CamelCaseMotion_ie
xmap <silent> <Leader>ie <Plug>CamelCaseMotion_ie

" Sleuth (indentation) config
nmap <Leader>gi <Plug>DetectIndentation


" System clipboard
noremap <Leader>p "+p
noremap <Leader>P "+P
noremap <Leader>Y "+Y
" experimental
nmap "" "+
xmap "" "+


" Selecting pasted content
map gV `[v`]

" Buffer management
" See also hjkl section
nnoremap <silent> <Leader>q :bd<CR>
nnoremap <silent> <Leader>Q :bd!<CR>
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
noremap <silent> <C-N> :set hls!<CR>
map <silent> <Leader><Esc> :nohlsearch<CR>


" Redraw screen
noremap <silent> <Leader>-` :redraw!<CR><C-L>



" Moving content
vnoremap <Plug>IndentBlock >:silent! call repeat#set("\<Plug>IndentBlock")<CR>`[V`]
vnoremap <Plug>OutdentBlock <:silent! call repeat#set("\<Plug>OutdentBlock")<CR>`[V`]
nmap <Leader>k [e
nmap <Leader>j ]e
vmap <Leader>k [e
vmap <Leader>j ]e
vmap <Leader>h <Plug>OutdentBlock
vmap <Leader>l <Plug>IndentBlock


" convert px to em in line
noremap <Leader><Leader>em
	\ :s/^.\{-}\(\d\+\)px.*$/& \/\* (\1:16) \*\//g <CR>
	\ :s#\v(\d+)px#\=printf("%sem", string(1.0/16*submatch(1)))#<CR>
	\ :s/ \*\/ \/\* / /g<CR>


" Center search results
:nnoremap <silent> n nzz:set hlsearch<CR>
:nnoremap <silent> N Nzz:set hlsearch<CR>
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


" Split views
map <A-j> <C-W>j
map <A-k> <C-W>k
map <A-h> <C-W>h
map <A-l> <C-W>l
set splitbelow
set splitright


" Set working directory
nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>


" Upper-case / lower-case
map <Leader>u ~



