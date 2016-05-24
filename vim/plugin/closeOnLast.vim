function! CloseOnLast()
    let cnt = 0
    for i in range(0, bufnr("$"))
        if buflisted(i)
            let cnt = 1
        endif
    endfor
    if cnt <= 1
        qa!
    endif
endfunction
