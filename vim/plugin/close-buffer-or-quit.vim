function! CloseBufferOrQuit()
	let bufferCount = len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
	let emtpyBufferCount = len(filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val))'))
	if bufferCount == 1 && emtpyBufferCount == 1
		:quitall
	endif
	:bdelete
endfunction
