setlocal makeprg=shellcheck\ -f\ gcc\ %
setlocal errorformat=%f:%l:%c:\ %rror:\ %m,
      \%f:%l:%c:\ %tarning:\ %m,
      \%f:%l:%c:\ %tote:\ %m
