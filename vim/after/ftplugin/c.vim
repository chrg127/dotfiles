setlocal commentstring=//\ %s
setlocal textwidth=80
set makeprg=make\ EXTRA_CFLAGS=fdiagnostics-color=always
let &errorformat = '%E%f:%l:%c: fatal error: %m,' .
      \ '%E%f:%l:%c: error: %m,' .
      \ '%W%f:%l:%c: warning: %m,' .
      \ '%-G%\m%\%%(LLVM ERROR:%\|No compilation database found%\)%\@!%.%#,' .
      \ '%E%m'
set cindent
set cinoptions+=g0,:0,N-s,E-s,l1,m1,j1,(4,w1
