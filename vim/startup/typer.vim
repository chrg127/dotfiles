let g:typer_speed    = 1
let g:typer_zz_count = 16

function! TyperLoop(file)
    " tabnew
    " let type  = fnamemodify(a:file, ':e')
    " let name  = system('echo $RANDOM')
    " let name  = substitute(name, '\n', '', '')
    " let name  = substitute(name, '\r', '', '')
    " let final = '/tmp/'.name.'.'.type
    " execute ':write '.final
    " execute ':edit  '.final
    " redraw
    echo ''
    let line_count = 0
    for line in readfile(a:file)
        let len = strlen(line)
        let i   = 0
        while i < len
            let c  = strpart(line, i, g:typer_speed)
            let i += g:typer_speed
            call getchar()
            execute "normal! GA".c
            redraw
        endwhile
        execute "normal! Go"
        call cursor(line('.')+1, 1)
        let line_count += 1
        if line_count > g:typer_zz_count
            let line_count = 0
            execute "normal! \zz"
        endif
        redraw
    endfor
    " echo 'Typing has been finished! Press Ctrl+C to exit...'
    while 1
        call getchar()
    endwhile
endfunction

:command! -nargs=1 -complete=file Typer :call TyperLoop('<args>')

command Save1 Typer ~/fnm/newton
command Save2 Typer ~/fnm/newton_m.txt
command Save3 Typer ~/fnm/order_esteem
command Save4 Typer ~/fnm/fixed_point
command Save5 Typer ~/fnm/corde
command Save6 Typer ~/fnm/secanti
command Save7 Typer ~/fnm/falsi
command Save8 Typer ~/fnm/bisection

command Change1 Typer ~/fnm/lsolve
command Change2 Typer ~/fnm/usolve
command Change3 Typer ~/fnm/lu_solve
command Change4 Typer ~/fnm/qrmethod
command Change5 Typer ~/fnm/solvensis
command Change6 Typer ~/fnm/solve_nsis_f
command Change7 Typer ~/fnm/elgauss

command Set1 Typer ~/fnm/interpolate
command Set2 Typer ~/fnm/chebnodes

command Write1 Typer ~/fnm/simpson
command Write2 Typer ~/fnm/trapezi
command Write3 Typer ~/fnm/simpson_toll
command Write4 Typer ~/fnm/trapezi_toll

command Insert1 Typer ~/fnm/swaprows
command Insert2 Typer ~/fnm/checkfact
command Insert3 Typer ~/fnm/detfact
command Insert4 Typer ~/fnm/fourier


