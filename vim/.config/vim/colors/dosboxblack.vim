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

if &t_Co ==# 8
    hi Boolean ctermfg=White
    hi ColorColumn ctermbg=DarkGrey
    hi Comment ctermfg=Red
    hi Conceal ctermfg=Grey
    hi Conditional ctermfg=White
    hi Constant ctermfg=Magenta
    "hi Cursor gui=reverse guifg=NONE guibg=NONE
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
else

    hi Boolean ctermfg=255
    hi ColorColumn ctermbg=235
    hi Comment ctermfg=168
    hi Conceal ctermfg=245 ctermbg=239
    hi Conditional ctermfg=255
    hi Constant ctermfg=164
    hi CursorColumn ctermbg=235
    hi CursorLine term=NONE cterm=NONE ctermbg=235
    hi CursorLineNr term=NONE cterm=NONE ctermfg=255 ctermbg=235
    hi DiffAdd ctermfg=232 ctermbg=37
    hi DiffChange ctermfg=232 ctermbg=222
    hi DiffDelete ctermfg=232 ctermbg=168
    hi DiffText term=reverse cterm=NONE ctermbg=235
    hi Directory ctermfg=245
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
    hi Question term=standout ctermfg=37
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
    hi Visual ctermbg=239
    hi VisualNOS term=bold,underline cterm=bold,underline
    hi WarningMsg ctermbg=88
    hi WildMenu ctermbg=239 ctermfg=255
    hi Identifier cterm=NONE ctermfg=117
    hi SpecialChar cterm=NONE ctermfg=117
    hi PreProc term=underline ctermfg=81
    hi! link Directory Number
    hi! link SpecialKey PreProc
    hi! link qfLineNr Statement
    hi User1 ctermfg=168 ctermbg=235
    hi User2 ctermfg=37 ctermbg=235
    hi User3 ctermfg=255 ctermbg=235
    hi User4 cterm=NONE ctermfg=232 ctermbg=245
    hi link User5 PMenuSel
    hi link User6 DiffChange
    hi link User7 DiffAdd
    hi link User8 DiffDelete
    hi User9 ctermbg=239 ctermfg=255
endif
