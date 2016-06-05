let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=233
highlight GitGutterAdd ctermfg=82 ctermbg=233
highlight GitGutterChange ctermfg=228 cterm=bold ctermbg=233
highlight GitGutterDelete ctermfg=9 cterm=bold ctermbg=233
highlight GitGutterChangeDelete ctermfg=9 cterm=bold ctermbg=233

let g:gitgutter_sign_added = '•'
let g:gitgutter_sign_modified = '›'
" let g:gitgutter_sign_removed = '▪'
let g:gitgutter_sign_removed = 'ø'
let g:gitgutter_sign_removed_first_line = g:gitgutter_sign_removed 
let g:gitgutter_sign_modified_removed = g:gitgutter_sign_removed
