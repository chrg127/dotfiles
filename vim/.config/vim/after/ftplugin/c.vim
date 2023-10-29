setlocal commentstring=//\ %s
let &errorformat = '%E%f:%l:%c: fatal error: %m,' .
                 \ '%E%f:%l:%c: error: %m,' .
                 \ '%W%f:%l:%c: warning: %m,' .
                 \ '%-G%\m%\%%(LLVM ERROR:%\|No compilation database found%\)%\@!%.%#,' .
                 \ '%E%m'
set cindent
set cinoptions+=g0,:0,N-s,E-s,l1,m1,j1,(4,w1
set path=.,/usr/local/include,/usr/include,/usr/include/c++/11,/usr/include/x86_64-linux-gnu

let c_gnu = 1
let c_space_errors = 1
let c_curly_error = 1
let c_ansi_typedefs = 1
let c_ansi_constants = 1

function! s:CppMan(str)
    execute '!cppman ' . a:str
endfunction
command! -nargs=1 CppMan :call s:CppMan(<f-args>)

function! s:ClangFormat(first, last)
    let l:winview = winsaveview()
    " echo a:first . "," . a:last . "!clang-format --style=WebKit"
    execute a:first . "," . a:last . "!clang-format"
    call winrestview(l:winview)
endfunction
command! -range=% ClangFormat call <sid>ClangFormat (<line1>, <line2>)
