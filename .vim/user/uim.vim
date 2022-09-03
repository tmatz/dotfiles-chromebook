" IM OFF command
command! ImeOff silent !imectrl 0

" When in insert mode
augroup InsertHook
    autocmd!
    autocmd InsertLeave * ImeOff
augroup END
