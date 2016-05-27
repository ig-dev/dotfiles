let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

function! HideAirlineBar()
	let &stl = ""
	augroup airline
	  autocmd!
	  au!
	augroup END
endfunction

autocmd VimEnter  * call HideAirlineBar()
