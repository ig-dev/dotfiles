" Disable default mappings
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_space_jump_first = 1

nmap f <Plug>(easymotion-overwin-f)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map F <Plug>(easymotion-lineanywhere)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map gb :call SearchFor('[()]')<CR>
map gq :call SearchFor("[\"']")<CR>
map gh :call SearchFor('[\[\]]')<CR>
map ga :call SearchFor('[<>]')<CR>
map gc :call SearchFor('[{}]')<CR>
map gm :call SearchFor('[-+=]')<CR>
map gx :call SearchFor('[@#$%^&*\!/]')<CR>

function! SearchFor(query)
  let @/ = a:query
  call EasyMotion#Search(0, 2, 0)
endfunction
