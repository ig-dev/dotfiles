function! CountListedBuffers() 
    let cnt = 0 
    for nr in range(1,bufnr("$")) 
        if buflisted(nr) && ! empty(bufname(nr)) || getbufvar(nr, '&buftype') ==# 'help'
            let cnt += 1 
        endif 
    endfor 
    return cnt 
endfunction

function! QuitIfLastBuffer()
    if CountListedBuffers() == 1
        :q
    endif
endfunction
