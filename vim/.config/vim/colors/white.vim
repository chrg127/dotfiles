hi clear
syntax reset
set notermguicolors
let g:colors_name = "white"

" colorscheme:
"               main
" red           168     #d75f87
" green         34      #00af00
" yellow        214     #ffaf00
" blue/purple   105     #8787ff
" fucsia        164     #d700d7
" cyan          32      #0087d7
"
" water green     37      #00afaf
" other cyan      25      #00f5af
" general background: 255 #eeeeee
" text: 240 #1c1c1c
" gray1 (cursorline): 253
" gray2: 250
" gray3: (folded fg, linenr fg): 247 #9e9e9e
" black: 16

hi Boolean ctermfg=16
hi ColorColumn ctermbg=253
hi Comment ctermfg=168
hi Conceal ctermfg=240 ctermbg=255
hi Conditional ctermfg=16
hi Constant ctermfg=164
hi CursorColumn ctermbg=253
hi CursorLine term=NONE cterm=NONE ctermbg=253
hi CursorLineNr term=NONE cterm=NONE ctermfg=16 ctermbg=253
hi DiffAdd ctermfg=255 ctermbg=37
hi DiffChange ctermfg=255 ctermbg=214
hi DiffDelete ctermfg=255 ctermbg=168
hi DiffText term=reverse cterm=NONE ctermbg=253
hi Directory ctermfg=105
hi Error ctermbg=168
hi ErrorMsg ctermbg=168
hi FoldColumn ctermfg=255
hi Folded ctermfg=247 ctermbg=253
hi Ignore ctermfg=255
hi IncSearch ctermfg=214 ctermbg=255
hi LineNr ctermfg=247
hi MatchParen ctermbg=214
hi ModeMsg term=bold cterm=bold
hi NonText ctermfg=247
hi Normal ctermfg=242 ctermbg=255
hi Number ctermfg=105
hi Pmenu ctermbg=253 ctermfg=240
hi PmenuSbar ctermbg=250
hi PmenuThumb ctermbg=247
hi PmenuSel ctermfg=255 ctermbg=105
hi Question cterm=standout term=standout ctermfg=37
hi Search ctermfg=255 ctermbg=214
hi SignColumn term=NONE ctermfg=247 ctermbg=255
hi Special ctermfg=34
hi SpellBad term=underline cterm=underline ctermbg=168 ctermfg=16
hi SpellCap term=reverse ctermbg=105 ctermfg=16
hi SpellLocal ctermbg=34 ctermfg=16
hi SpellRare ctermbg=253
hi Statement term=NONE ctermfg=16
hi Operator term=NONE ctermfg=37
" TODO
hi StatusLine cterm=reverse ctermfg=253 ctermbg=240
hi StatusLineNC ctermfg=247 ctermbg=235
hi StorageClass ctermfg=16
hi String ctermfg=168
hi TabLine term=NONE cterm=NONE ctermfg=16 ctermbg=250
hi TabLineFill ctermfg=253 ctermbg=247
hi TabLineSel ctermfg=255 ctermbg=105
hi Title ctermfg=214
hi Todo term=standout ctermfg=255 ctermbg=214
hi Type ctermfg=16
hi Underlined term=underline cterm=underline ctermfg=25
hi VertSplit ctermfg=253 ctermbg=16
hi Visual ctermbg=250
hi VisualNOS term=bold,underline cterm=bold,underline
hi WarningMsg ctermbg=168
hi WildMenu ctermbg=250 ctermfg=16
hi Identifier cterm=NONE ctermfg=32
hi SpecialChar cterm=NONE ctermfg=32
hi PreProc term=underline ctermfg=25
hi! link SpecialKey PreProc
hi! link qfLineNr Statement
hi User1 ctermfg=168 ctermbg=253
hi User2 ctermfg=37 ctermbg=253
hi User3 ctermfg=16 ctermbg=253
hi User4 ctermfg=255 ctermbg=247 cterm=bold
hi User5 ctermfg=255 ctermbg=105 cterm=bold
hi User6 ctermfg=255 ctermbg=214 cterm=bold
hi User7 ctermfg=255 ctermbg=37  cterm=bold
hi User8 ctermfg=255 ctermbg=168 cterm=bold
hi User9 ctermbg=250 ctermfg=16
