hi clear
syntax reset
set notermguicolors
let g:colors_name = "dosboxblack"

" colorscheme:
"               light               dark
" black         232     #080808
" red           168     #d75f87     88      #870000
" green         34      #00af00     28      #008700
" yellow        222     #ffd787     214     #ffaf00
" blue/purple   105     #8787ff     63      #5f5fff
" fucsia        164     #d700d7     128     #af00d7
" cyan          117     #87d7ff     39      #00afff
" white         255     #eeeeee     249     #b2b2b2
"
" water green     37      #00afaf
" other cyan      81      #5fd7ff
" gray1           235     #262626
" gray2           239     #4e4e4e
" gray3           245     #8a8a8a

" colorscheme (light version):
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

if &t_Co ==# 8
    hi Boolean ctermfg=White
    hi ColorColumn ctermbg=DarkGrey
    hi Comment ctermfg=Red
    hi Conceal ctermfg=Grey
    hi Conditional ctermfg=White
    hi Constant ctermfg=Magenta
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn ctermbg=DarkGrey
    hi CursorLine cterm=NONE ctermbg=DarkGrey
    hi CursorLineNr cterm=NONE ctermfg=White ctermbg=DarkGrey
    hi DiffAdd ctermfg=Black ctermbg=Cyan
    hi DiffChange ctermfg=Black ctermbg=Yellow
    hi DiffDelete ctermfg=Black ctermbg=Red
    hi DiffText ctermfg=Grey ctermbg=DarkGrey
    hi Error ctermfg=White ctermbg=Red
    hi ErrorMsg ctermfg=White ctermbg=Red
    hi FoldColumn ctermfg=Grey ctermbg=Black
    hi Folded ctermfg=Grey ctermbg=Black
    hi Ignore ctermfg=NONE ctermbg=NONE
    hi IncSearch ctermfg=Black ctermbg=Yellow
    hi LineNr ctermfg=DarkGrey
    hi MatchParen ctermfg=Grey ctermbg=Yellow
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText ctermfg=DarkGrey
    hi Normal ctermfg=Grey ctermbg=Black
    hi Number ctermfg=Blue
    hi Pmenu ctermbg=Grey
    hi PmenuSbar ctermbg=Grey ctermfg=Black
    hi PmenuSel ctermfg=White ctermbg=Blue
    hi PmenuThumb ctermbg=Grey ctermfg=Black
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search ctermfg=Black ctermbg=Yellow
    hi SignColumn ctermfg=DarkGrey ctermbg=Black
    hi Special ctermfg=Green
    hi SpecialKey ctermfg=Cyan
    hi SpellBad ctermbg=Red
    hi SpellCap ctermbg=Blue
    hi SpellLocal ctermbg=DarkGreen
    hi SpellRare ctermbg=DarkGrey
    hi Statement ctermfg=White
    hi Operator ctermfg=DarkGreen
    hi StatusLine ctermbg=Black
    hi StatusLineNC ctermfg=White ctermbg=Grey
    hi StorageClass ctermfg=White
    hi String ctermfg=Red
    hi TabLine ctermfg=White ctermbg=DarkGrey
    hi TabLineFill ctermbg=DarkGrey
    hi TabLineSel ctermfg=White ctermbg=DarkGrey
    hi Title ctermfg=Blue
    hi Todo term=standout
    hi Type ctermfg=White
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit ctermbg=DarkGrey
    hi Visual ctermbg=DarkGrey ctermfg=White
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg ctermfg=White ctermbg=Red
    hi WildMenu ctermbg=White ctermfg=Black
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier ctermfg=Cyan
    hi SpecialChar ctermfg=Cyan
    hi PreProc ctermfg=Cyan
    hi! link Directory Number
    hi! link SpecialKey PreProc
    hi User1 ctermfg=Red ctermbg=Grey
    hi User2 ctermfg=DarkGreen ctermbg=Grey
    hi User3 ctermfg=Blue ctermbg=Grey
    hi User4 ctermfg=Black ctermbg=Grey
    hi link User5 PMenuSel
    hi link User6 DiffChange
    hi link User7 DiffAdd
    hi link User8 DiffDelete
    hi link User9 StatusLine
elseif &background ==# 'dark'
    hi Boolean ctermfg=255
    hi ColorColumn ctermbg=235
    hi Comment ctermfg=168
    hi Conceal ctermfg=249 ctermbg=232
    hi Conditional ctermfg=255
    hi Constant ctermfg=164
    hi CursorColumn ctermbg=235
    hi CursorLine term=NONE cterm=NONE ctermbg=235
    hi CursorLineNr term=NONE cterm=NONE ctermfg=255 ctermbg=235
    hi DiffAdd ctermfg=232 ctermbg=37
    hi DiffChange ctermfg=232 ctermbg=222
    hi DiffDelete ctermfg=232 ctermbg=168
    hi DiffText term=reverse cterm=NONE ctermbg=235
    hi Directory ctermfg=105
    hi Error ctermbg=88
    hi ErrorMsg ctermbg=88
    hi FoldColumn ctermfg=232
    hi Folded ctermfg=245 ctermbg=235
    hi Ignore ctermfg=232
    hi IncSearch ctermfg=222 ctermbg=232
    hi LineNr ctermfg=245
    hi MatchParen ctermbg=222
    hi ModeMsg term=bold cterm=bold
    hi NonText ctermfg=245
    hi Normal ctermfg=249 ctermbg=232
    hi Number ctermfg=105
    hi Pmenu ctermbg=235 ctermfg=249
    hi PmenuSbar ctermbg=239
    hi PmenuThumb ctermbg=245
    hi PmenuSel ctermfg=232 ctermbg=105
    hi Question ctermbg=232 ctermfg=249
    hi Search ctermfg=232 ctermbg=222
    hi SignColumn term=NONE ctermfg=245 ctermbg=232
    hi Special ctermfg=34
    hi SpellBad term=underline cterm=underline ctermbg=88
    hi SpellCap term=reverse ctermbg=105
    hi SpellLocal ctermbg=28
    hi SpellRare ctermbg=235
    hi Statement term=NONE ctermfg=255
    hi Operator term=NONE ctermfg=37
    hi StatusLine cterm=reverse ctermfg=235 ctermbg=249
    hi StatusLineNC ctermfg=245 ctermbg=235
    hi StorageClass ctermfg=255
    hi String ctermfg=168
    hi TabLine term=NONE cterm=NONE ctermfg=255 ctermbg=239
    hi TabLineFill ctermfg=235 ctermbg=245
    hi TabLineSel ctermfg=232 ctermbg=105
    hi Title ctermfg=222
    hi Todo term=standout ctermfg=232 ctermbg=222
    hi Type ctermfg=255
    hi Underlined term=underline cterm=underline ctermfg=81
    hi VertSplit ctermfg=235 ctermbg=255
    hi Visual cterm=none ctermfg=none ctermbg=239
    hi VisualNOS term=bold,underline cterm=bold,underline
    hi WarningMsg ctermbg=88 ctermfg=255
    hi WildMenu ctermbg=239 ctermfg=255
    hi Identifier cterm=NONE ctermfg=117
    hi SpecialChar cterm=NONE ctermfg=117
    hi PreProc term=underline ctermfg=81
    hi! link SpecialKey PreProc
    hi! link qfLineNr Statement
    hi User1 ctermfg=168 ctermbg=235
    hi User2 ctermfg=37 ctermbg=235
    hi User3 ctermfg=255 ctermbg=235
    hi User4 ctermfg=232 ctermbg=245 cterm=bold
    hi User5 ctermfg=232 ctermbg=105 cterm=bold
    hi User6 ctermfg=232 ctermbg=222 cterm=bold
    hi User7 ctermfg=232 ctermbg=37  cterm=bold
    hi User8 ctermfg=232 ctermbg=168 cterm=bold
    hi User9 ctermbg=239 ctermfg=255
else
    hi Boolean cterm=bold ctermfg=16
    hi ColorColumn ctermbg=253
    hi Comment ctermfg=124
    hi Conceal ctermfg=16 ctermbg=255
    hi Conditional cterm=bold ctermfg=16
    hi Constant ctermfg=128
    hi CursorColumn ctermbg=253
    hi CursorLine term=none cterm=none ctermbg=253
    hi CursorLineNr cterm=bold ctermfg=16 ctermbg=253
    hi DiffAdd ctermfg=255 ctermbg=37
    hi DiffChange ctermfg=16 ctermbg=214
    hi DiffDelete ctermfg=16 ctermbg=167
    hi DiffText term=reverse cterm=NONE ctermbg=253
    hi Directory ctermfg=57
    hi Error ctermbg=167 ctermfg=255
    hi ErrorMsg ctermbg=167 ctermfg=255
    hi FoldColumn ctermfg=255
    hi Folded ctermfg=247 ctermbg=253
    hi Ignore ctermfg=255
    hi IncSearch ctermfg=214 ctermbg=16
    hi LineNr ctermfg=247
    hi MatchParen ctermbg=214
    hi ModeMsg term=bold cterm=bold
    hi NonText ctermfg=247
    hi Normal ctermfg=16 ctermbg=255
    hi Number ctermfg=57
    hi Pmenu ctermbg=253 ctermfg=16
    hi PmenuSbar ctermbg=250
    hi PmenuThumb ctermbg=247
    hi PmenuSel ctermfg=255 ctermbg=105
    hi Question cterm=standout term=standout ctermfg=37
    hi Search ctermfg=16 ctermbg=214
    hi SignColumn term=NONE ctermfg=247 ctermbg=255
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
    hi String ctermfg=124
    hi TabLine term=NONE cterm=NONE ctermfg=16 ctermbg=250
    hi TabLineFill ctermfg=253 ctermbg=247
    hi TabLineSel ctermfg=255 ctermbg=105
    hi Title ctermfg=130
    hi Todo term=standout ctermfg=16 ctermbg=214
    hi Type cterm=bold ctermfg=16
    hi Underlined term=underline cterm=underline ctermfg=18
    hi VertSplit ctermfg=253 ctermbg=16
    hi Visual cterm=none ctermfg=none ctermbg=250
    hi VisualNOS term=bold,underline cterm=bold,underline
    hi WarningMsg ctermbg=167 ctermfg=255
    hi WildMenu ctermbg=250 ctermfg=16
    hi Identifier cterm=NONE ctermfg=26
    hi SpecialChar cterm=NONE ctermfg=26
    hi PreProc term=underline ctermfg=18
    hi! link SpecialKey PreProc
    hi! link qfLineNr Statement
    hi User1 ctermfg=167 ctermbg=253
    hi User2 ctermfg=30 ctermbg=253
    hi User3 ctermfg=16 ctermbg=253 cterm=bold
    hi User4 ctermfg=255 ctermbg=247 cterm=bold
    hi User5 ctermfg=255 ctermbg=105 cterm=bold
    hi User6 ctermfg=16 ctermbg=214 cterm=bold
    hi User7 ctermfg=255 ctermbg=37  cterm=bold
    hi User8 ctermfg=255 ctermbg=167 cterm=bold
    hi User9 ctermbg=250 ctermfg=16
endif
