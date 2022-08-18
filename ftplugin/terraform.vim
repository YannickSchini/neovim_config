setlocal tabstop=2 
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal foldmethod=indent

augroup FORMAT_ON_SAVE
    autocmd!
    autocmd BufWritePost * :!terraform fmt %:p
    autocmd BufWritePost * :e!
augroup END
