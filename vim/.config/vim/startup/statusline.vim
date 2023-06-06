let g:currentmode={
    \ 'n'       : 'Normale',   'no' : 'N·Attesa',    'v'  : 'Visuale',       'V'  : 'V·Riga',
    \ "\<c-v>"  : 'V·Blocco',  's'  : 'Selezione',   'S'  : 'S·Riga',        '^S' : 'S·Blocco',
    \ 'i'       : 'Inserisci', 'R'  : 'Sostituisci', 'Rv' : 'V·Sostituisci', 'c'  : 'Comando',
    \ 'cv'      : 'Vim Ex',    'ce' : 'Ex',          'r'  : 'Prompt',        'rm' : 'Di piu',
    \ 'r?'      : 'Conferma',  '!'  : 'Shell',       't'  : 'Terminale',
    \}

let g:mode_colors={
    \ 'n'       : 'User5', 'no' : 'User5',  'v'  : 'User6',    'V'  : 'User6',
    \ "\<c-v>"  : 'User6', 's'  : 'User8',  'S'  : 'User8',    '^S' : 'User8',
    \ 'i'       : 'User7', 'R'  : 'User8',  'Rv' : 'User8',    'c'  : 'User5',
    \ 'cv'      : 'User5', 'ce' : 'User5',  'r'  : 'User5',    'rm' : 'User5',
    \ 'r?'      : 'User5', '!'  : 'User5',  't'  : 'User5',
    \}

function! Status(winnum)
    let stat=''
    let active = a:winnum == winnr()
    let bufnum = winbufnr(a:winnum)
    let type = getbufvar(bufnum, '&buftype')
    let filetype = getbufvar(bufnum, '&ft')
    let stat .= active ? '%#' . g:mode_colors[mode()] . '#  %{toupper(g:currentmode[mode()])}  ' : '%4*  INATTIVO  '
    let stat .= '%#StatusLine#'
    if type ==# 'nofile'
        let stat.=active ? '%3* ' : ' '
        if filetype ==# "nerdtree"
            let stat.='NERDTree'
        elseif filetype ==# 'man'
            let stat.='man'
        elseif filetype ==# 'dirvish'
            let stat.='dirvish: ' . bufname(bufnum) . ' '
        elseif filetype ==# 'startscreen'
            let stat.='start screen'
        else
            let stat.='???'
        endif
        let stat.='%#StatusLine#'
    else
        let stat .= ' %n: '
        let stat .= active ? '%3*' : ''
        let stat .= type ==# 'help' ? '[Aiuto] ' : ''
        let stat .= '%f%#StatusLine#'
        let stat .= getbufvar(bufnum, '&modified') ? '%2* [+] %#StatusLine#' : ''
        let stat .= getbufvar(bufnum, '&readonly') || !getbufvar(bufnum, '&modifiable') ? '%1*  %#StatusLine#'   : ''
        let stat .= '%w%<%='
        let stat .= active ? gutentags#statusline('[', ']') . ' ' : ''
        let stat .= filetype ==# '' ? 'normal text ' : filetype . ' '
        let stat .= active ? '%#User9# ' : '%#StatusLine# '
        let stat .= getbufvar(bufnum, '&encoding') . ' :: ' . getbufvar(bufnum, '&fileformat') . ' '
        let stat .= active ? '%#User5#' : '%4*'
        let stat .= ' %l, %v :: %L '
    endif
    return stat
endfunction

function! s:RefreshStatus()
    " for each window set statusline to whatever Status() returns
    for nr in range(1, winnr('$'))
        call setwinvar(nr, '&statusline', '%!Status(' . nr . ')')
    endfor
endfunction
command! RefreshStatus :call <SID>RefreshStatus()
augroup status
    autocmd!
    autocmd VimEnter,VimLeave,WinEnter,WinLeave,BufWinEnter,BufWinLeave * :RefreshStatus
augroup END

