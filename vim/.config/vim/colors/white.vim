hi clear
syntax reset
set notermguicolors
let g:colors_name = "white"

" colorscheme:
"               main                bright
" red           124     #af0000     167     #d75f5f
" green         28      #008700
" yellow        130     #af5f00     214     #ffaf00
" blue/purple   105     #8787ff     57      #5f00ff
" fucsia        128     #af00d7
" cyan          26      #005fd7
"
" water green   30      #008787     37 #00afaf
" other cyan    18      #000087
" background:   254     #eeeeee
" text:         16      #000000
" gray1 (cursorline):               253 #dadada
" gray2: (visual, wildmenu):        250 #bcbcbc
" gray3: (folded fg, linenr fg):    247 #9e9e9e

hi Boolean cterm=bold ctermfg=16
hi ColorColumn ctermbg=253
hi Comment ctermfg=124
hi Conceal ctermfg=16 ctermbg=254
hi Conditional cterm=bold ctermfg=16
hi Constant ctermfg=128
hi CursorColumn ctermbg=253
hi CursorLine term=none cterm=none ctermbg=253
hi CursorLineNr cterm=bold ctermfg=16 ctermbg=253
hi DiffAdd ctermfg=254 ctermbg=37
hi DiffChange ctermfg=16 ctermbg=214
hi DiffDelete ctermfg=16 ctermbg=167
hi DiffText term=reverse cterm=NONE ctermbg=253
hi Directory ctermfg=57
hi Error ctermbg=167 ctermfg=254
hi ErrorMsg ctermbg=167 ctermfg=254
hi FoldColumn ctermfg=254
hi Folded ctermfg=247 ctermbg=253
hi Ignore ctermfg=254
hi IncSearch ctermfg=214 ctermbg=16
hi LineNr ctermfg=247
hi MatchParen ctermbg=214
hi ModeMsg term=bold cterm=bold
hi NonText ctermfg=247
hi Normal ctermfg=16 ctermbg=254
hi Number ctermfg=57
hi Pmenu ctermbg=253 ctermfg=16
hi PmenuSbar ctermbg=250
hi PmenuThumb ctermbg=247
hi PmenuSel ctermfg=254 ctermbg=105
hi Question cterm=standout term=standout ctermfg=37
hi Search ctermfg=16 ctermbg=214
hi SignColumn term=NONE ctermfg=247 ctermbg=254
hi Special ctermfg=28
hi SpellBad term=underline cterm=underline ctermbg=167 ctermfg=16
hi SpellCap ctermbg=105 ctermfg=16
hi SpellLocal ctermbg=28 ctermfg=16
hi SpellRare ctermbg=253
hi Statement cterm=bold ctermfg=16
hi Operator term=NONE ctermfg=30
" TODO
hi StatusLine cterm=reverse ctermfg=253 ctermbg=16
hi StatusLineNC ctermfg=247 ctermbg=235
hi StorageClass cterm=bold ctermfg=16
hi String ctermfg=124 ctermbg=254
hi TabLine term=NONE cterm=NONE ctermfg=16 ctermbg=250
hi TabLineFill ctermfg=253 ctermbg=247
hi TabLineSel ctermfg=254 ctermbg=105
hi Title ctermfg=130
hi Todo term=standout ctermfg=16 ctermbg=214
hi Type cterm=bold ctermfg=16
hi Underlined term=underline cterm=underline ctermfg=18
hi VertSplit ctermfg=253 ctermbg=16
hi Visual cterm=none ctermfg=none ctermbg=250
hi VisualNOS term=bold,underline cterm=bold,underline
hi WarningMsg ctermbg=167 ctermfg=254
hi WildMenu ctermbg=250 ctermfg=16
hi Identifier cterm=NONE ctermfg=26
hi SpecialChar cterm=NONE ctermfg=26
hi PreProc term=underline ctermfg=18
hi! link SpecialKey PreProc
hi! link qfLineNr Statement
hi User1 ctermfg=167 ctermbg=253
hi User2 ctermfg=30 ctermbg=253
hi User3 ctermfg=16 ctermbg=253 cterm=bold
hi User4 ctermfg=254 ctermbg=247 cterm=bold
hi User5 ctermfg=254 ctermbg=105 cterm=bold
hi User6 ctermfg=16 ctermbg=214 cterm=bold
hi User7 ctermfg=254 ctermbg=37  cterm=bold
hi User8 ctermfg=254 ctermbg=167 cterm=bold
hi User9 ctermbg=250 ctermfg=16
