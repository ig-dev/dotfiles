set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" Easily toggling comments
Plugin 'tpope/vim-commentary'

" CamelCaseMotion
Plugin 'bkad/CamelCaseMotion'

" Expand Region
Plugin 'terryma/vim-expand-region'

" DelimitMate
Plugin 'Raimondi/delimitMate'

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

" Tabular
Plugin 'godlygeek/tabular'

" Coffee-script syntax
Plugin 'kchmck/vim-coffee-script'

" Airline
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin indent on

" color scheme / theme
colorscheme molokai

" Buffers
set hidden " allow buffers with unsaved changes

let mapleader = "\<Space>"
nmap <CR> <Space>
vmap <CR> <Space>

" file saving
nnoremap <Leader>s :w<CR>
nnoremap <Leader>S :w!<CR>

" Selecting pasted content
map gV `[v`]

" System clipboard
nmap <Leader>p "+p
nmap <Leader>P "+P
nmap <Leader>Y "+Y
nmap <Leader>dd "+dd
nmap <Leader>D "+D
nmap <Leader>yy "+yy
vmap <Leader>y "+y
vmap <Leader>d "+d
vmap <Leader>p "+p
vmap <Leader>P "+P

" Style
syntax on
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12,\ Inconsolata:h12:cDEFAULT
set t_Co=256
let g:molokai_original=0
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

" Neovim-qt Guifont command, to change the font
command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>")
" Set font on start
let g:Guifont="DejaVu Sans Mono for Powerline:h12"

" Garbage files
set nobackup
set nowritebackup
set noswapfile

" Search
set ignorecase
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set nohlsearch "Highlight search patterns, support reloading
set gdefault " use the `g` flag by default.

" Ctrl-P config
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

" Expand Region config
vmap v <Plug>(expand_region_expand)

" CamelCaseMotion config
map <silent> <Leader>w <Plug>CamelCaseMotion_w
map <silent> <Leader>b <Plug>CamelCaseMotion_b
map <silent> <Leader>e <Plug>CamelCaseMotion_e
omap <silent> <Leader>iw <Plug>CamelCaseMotion_ie
xmap <silent> <Leader>iw <Plug>CamelCaseMotion_ie

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
" modified tab color
source ~/.vim/bundle/vim-airline/autoload/airline/themes/molokai.vim
let g:airline#themes#molokai#palette.normal_modified = { 'airline_c' :
	\ [ '#ffffff' , '#4e52bc' , 23 , 52 , '' ] , }

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
let g:EasyMotion_prompt = '{n}/ '
" Highlight cursor
let g:EasyMotion_cursor_highlight = 1

let g:EasyMotion_re_anywhere = '\v[:\-=\(\)]'

" Seach /  EasyMotion search
onoremap <Leader>/ /\v
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>f <Plug>(easymotion-lineanywhere)
map <Leader><Leader> <Plug>(easymotion-s)

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

" h & j as it should be
noremap j gj
noremap k gk

" Line navigation
map <C-J> <Plug>(easymotion-j)
map <C-K> <Plug>(easymotion-k)

" Buffer switching/management
map <silent> <C-H> :bp<CR>
map <silent> <C-L> :bn<CR>
nnoremap <silent> <Leader>q :bd<CR>
nnoremap <silent> <Leader>Q :bd!<CR>

" Upper-case / lower-case
map <Leader>u ~

" Deoplete config
inoremap <silent><expr> <Tab>
	\ pumvisible() ? "\<C-n>" :
	\ deoplete#mappings#manual_complete()
let g:deoplete#enable_at_startup = 1

" Odd file extensions
au BufNewFile,BufRead *.hbs setlocal ft=html
