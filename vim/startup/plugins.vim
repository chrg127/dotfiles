" nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeDirArrows=1
" gutentags
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['.git', '.hg', '.svn', 'Makefile']
let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args=[ '--tag-relative=yes', '--fields=+S', ]
let g:gutentags_ctags_exclude=[
            \ 'build', 'dist', 'bin', 'cache', 'debug', 'release',
            \ 'compiled', 'docs', 'example', 'bundle', 'vendor', '.md',
            \ '.json',
            \ ]
" fswitch
au BufEnter *.hpp let b:fswitchdst = "cpp"
au BufEnter *.cpp let b:fswitchdst = "hpp"
" disable netrw
let loaded_netrwPlugin = 1
" ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" dirvish
let g:dirvish_mode = ':sort ,^.*[\/], | :silent keeppatterns g@\v/\.[^\/]+/?$@d _'
augroup dirvish_config
    autocmd!
    autocmd FileType dirvish nnoremap <silent><buffer>
        \ gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>
    autocmd FileType dirvish :RefreshStatus
augroup END
" call dirvish#add_icon_fn({pathname -> WebDevIconsGetFileTypeSymbol(pathname) . '   '})

