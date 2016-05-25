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
map gxb :call SearchFor('[()]')<CR>
map gxq :call SearchFor("[\"']")<CR>
map gxs :call SearchFor('[\[\]]')<CR>
map gxa :call SearchFor('[<>]')<CR>
map gxc :call SearchFor('[{}]')<CR>
map gxm :call SearchFor('-')<CR>
map gxp :call SearchFor('+')<CR>
map gxe :call SearchFor('=')<CR>
map gxo :call SearchFor('[@#$%^&*\!/]')<CR>
map gb gxb

function! SearchFor(query)
  let @/ = a:query
  call EasyMotion#Search(0, 2, 0)
endfunction
