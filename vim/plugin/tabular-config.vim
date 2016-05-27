" c = colon
map gtc :Tab /\v^[^:]+\zs:/<CR>
map gtC :Tab /\v^[^:]+: +\zs/l1r0<CR>

" e = equals sign
map gte :Tab /=<CR>
map gtE :Tab /=\zs \+/l0<CR>

" p = pipe
map gtp :Tab /\|<CR>
map gtP :Tab /\|\zs<CR>
