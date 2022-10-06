hi clear
syntax reset
set notermguicolors
let g:colors_name = "lighttheme"

" colorscheme:
"               light   dark
" background    255
" red           160     167
" green         28
" yellow        215
" blue          57
" fuchsia       127
" cyan          26      68
" black         232
"
" gray1         252
" gray2         249
" gray3         238
" gray4         242
"
" water green   31
" other cyan    81

hi Boolean ctermfg=232
hi ColorColumn ctermbg=252
hi Comment ctermfg=160
hi Conceal ctermfg=249 ctermbg=249
hi Conditional ctermfg=232
hi Constant ctermfg=127
hi CursorColumn ctermbg=252
hi CursorLine term=NONE cterm=NONE ctermbg=252
hi CursorLineNr term=NONE cterm=NONE ctermfg=232 ctermbg=252
hi DiffAdd ctermfg=255 ctermbg=31
hi DiffChange ctermfg=232 ctermbg=215
hi DiffDelete ctermfg=255 ctermbg=160
hi DiffText term=reverse cterm=NONE ctermbg=252
hi Directory ctermfg=249
hi Error ctermbg=167
hi ErrorMsg ctermbg=167
hi FoldColumn ctermfg=255
hi Folded ctermfg=242 ctermbg=252
hi Ignore ctermfg=255
hi IncSearch cterm=reverse ctermfg=215 ctermbg=232
hi LineNr ctermfg=249
hi MatchParen ctermbg=215 ctermfg=232
hi ModeMsg term=bold cterm=bold
hi NonText ctermfg=249
hi Normal ctermfg=238 ctermbg=255
hi Number ctermfg=57
hi Pmenu ctermbg=252 ctermfg=238
hi PmenuSbar ctermbg=249
hi PmenuThumb ctermbg=249
hi PmenuSel ctermfg=255 ctermbg=57
hi Question term=standout ctermfg=31
hi Search ctermfg=255 ctermbg=215 ctermfg=232
hi SignColumn term=NONE ctermfg=249 ctermbg=255
hi Special ctermfg=28
hi SpellBad term=underline cterm=underline ctermbg=167
hi SpellCap term=reverse ctermbg=57
hi SpellLocal ctermbg=28
hi SpellRare ctermbg=252
hi Statement term=NONE ctermfg=232
hi Operator term=NONE ctermfg=31
hi StatusLine cterm=reverse ctermfg=252 ctermbg=238
hi StatusLineNC ctermfg=249 ctermbg=252
hi StorageClass ctermfg=232
hi String ctermfg=160
hi TabLine term=NONE cterm=NONE ctermfg=232 ctermbg=249
hi TabLineFill ctermfg=252 ctermbg=249
hi TabLineSel ctermfg=255 ctermbg=57
hi Title ctermfg=215
hi Todo term=standout ctermfg=232 ctermbg=215
hi Type ctermfg=232
hi Underlined term=underline cterm=underline ctermfg=26
hi VertSplit ctermfg=252 ctermbg=232
hi Visual ctermbg=249
hi VisualNOS term=bold,underline cterm=bold,underline
hi WarningMsg ctermbg=167
hi WildMenu ctermbg=249 ctermfg=232
hi Identifier cterm=NONE ctermfg=26
hi SpecialChar cterm=NONE ctermfg=26
hi PreProc ctermfg=26
hi! link Directory Number
hi! link SpecialKey PreProc
hi! link qfLineNr Statement
hi User1 ctermfg=160 ctermbg=252
hi User2 ctermfg=31 ctermbg=252
hi User3 ctermfg=232 ctermbg=252
hi User4 cterm=NONE ctermfg=232 ctermbg=249
hi User5 ctermfg=255 ctermbg=68
hi link User6 DiffChange
hi link User7 DiffAdd
hi User8 ctermfg=255 ctermbg=167
hi User9 ctermbg=249 ctermfg=232
