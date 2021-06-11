scriptencoding utf-8
let g:loaded_startscreen = 1
let s:save_cpo = &cpo
set cpo&vim

" fun! startscreen#fortune()
" endfun

" let g:Startscreen_function = function('startscreen#fortune')

fun! startscreen#start()
    " Don't run if:
    " - there are commandline arguments;
    " - the buffer isn't empty (e.g. cmd | vi -);
    " - we're not invoked as vim or gvim;
    " - we're starting in insert mode.
    if argc() || line2byte('$') != -1 || v:progname !~? '^[-gmnq]\=vim\=x\=\%[\.exe]$' || &insertmode
        return
    endif

    " Start a new buffer and set some options for it
    enew
    setlocal
        \ bufhidden=wipe
        \ buftype=nofile
        \ ft=startscreen
        \ nobuflisted
        \ nolist
        \ noswapfile

    read /home/chris/Documenti/message.txt
    :1
    redraw!

    " No modifications to this buffer
    setlocal nomodifiable nomodified

    " When we go to insert mode start a new buffer, and start insert
    nnoremap <buffer><silent> e :enew<CR>
    nnoremap <buffer><silent> i :enew <bar> startinsert<CR>
    nnoremap <buffer><silent> o :enew <bar> startinsert<CR><CR>
    nnoremap <buffer><silent> p :enew<CR>p
    nnoremap <buffer><silent> P :enew<CR>P
endfun

" Auto command
augroup startscreen
    autocmd!
    autocmd VimEnter * call startscreen#start()
augroup end

let &cpo = s:save_cpo
unlet s:save_cpo
