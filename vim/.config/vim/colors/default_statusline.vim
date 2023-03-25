" Vim color file
" A slight change to the default color scheme.

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

" lock symbol
hi User1 ctermbg=Red guibg=Red term=bold,reverse cterm=bold,reverse
" for the [+] sign
hi User2 ctermbg=Green guibg=Green term=bold,reverse cterm=bold,reverse
" for the file name in status line
hi User3 term=bold,reverse cterm=bold,reverse
" for the inactive color
hi User4 ctermfg=Gray guifg=Gray term=bold,reverse cterm=bold,reverse
" NORMAL
hi User5 ctermfg=Blue guifg=Blue term=bold,reverse cterm=bold,reverse
" VISUAL
hi User6 ctermfg=Yellow guifg=Blue term=bold,reverse cterm=bold,reverse
" INSERT
hi User7 ctermfg=Green guifg=Blue term=bold,reverse cterm=bold,reverse
" REPLACE
hi User8 ctermfg=Red guifg=Blue term=bold,reverse cterm=bold,reverse
" gray status line color to the right
hi User9 ctermfg=Cyan guifg=Blue term=bold,reverse cterm=bold,reverse

let colors_name = "default"
