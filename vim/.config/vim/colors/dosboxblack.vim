hi clear
syntax reset
set notermguicolors
let g:colors_name = "dosboxblack"

if &t_Co ==# 8
    hi Boolean ctermfg=White
    hi ColorColumn ctermbg=DarkGrey
    hi Comment ctermfg=Red
    hi Conceal ctermfg=Grey
    hi Conditional ctermfg=White
    hi Constant ctermfg=Magenta
    "hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn ctermbg=DarkGrey
    hi CursorLine ctermbg=DarkGrey
    hi CursorLineNr ctermfg=White ctermbg=DarkGrey
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
    hi ColorColumn ctermbg=234
    hi Comment ctermfg=168
    hi Conceal ctermfg=243
    hi Conditional ctermfg=255
    hi Constant ctermfg=164
    hi CursorColumn ctermbg=234
    hi CursorLine term=NONE cterm=NONE ctermbg=235
    hi CursorLineNr term=NONE cterm=NONE ctermfg=255 ctermbg=234
    hi DiffAdd ctermfg=232 ctermbg=37
    hi DiffChange ctermfg=232 ctermbg=222
    hi DiffDelete ctermfg=232 ctermbg=168
    hi DiffText term=reverse cterm=NONE ctermbg=236
    hi Directory ctermfg=245
    hi Error ctermbg=52
    hi ErrorMsg ctermbg=52
    hi FoldColumn ctermfg=0
    hi Folded ctermfg=242 ctermbg=234
    hi Ignore ctermfg=0
    hi IncSearch ctermfg=222 ctermbg=232
    hi LineNr ctermfg=241
    hi MatchParen ctermbg=222
    hi ModeMsg term=bold cterm=bold
    hi NonText ctermfg=241
    hi Normal ctermfg=249 ctermbg=232
    hi Number ctermfg=105
    hi Pmenu ctermbg=234 ctermfg=249
    hi PmenuSbar ctermbg=235
    hi PmenuSel ctermfg=232 ctermbg=105
    hi PmenuThumb ctermbg=239
    hi Question term=standout ctermfg=121
    hi Search ctermfg=232 ctermbg=222
    hi SignColumn term=NONE ctermfg=241 ctermbg=232
    hi Special ctermfg=34
    hi SpecialKey ctermfg=241
    hi SpellBad term=underline cterm=underline ctermbg=52
    hi SpellCap term=reverse ctermbg=12
    hi SpellLocal ctermbg=22
    hi SpellRare ctermbg=235
    hi Statement term=NONE ctermfg=255
    hi Operator term=NONE ctermfg=37
    hi StatusLine cterm=reverse ctermfg=234 ctermbg=249
    hi StatusLineNC ctermfg=242 ctermbg=235
    hi StorageClass ctermfg=254
    hi String ctermfg=168
    hi TabLine term=NONE cterm=NONE ctermfg=254 ctermbg=236
    hi TabLineFill ctermfg=234 ctermbg=245
    hi TabLineSel ctermfg=254 ctermbg=239
    hi Title ctermfg=105
    hi Todo term=standout ctermfg=0 ctermbg=11
    hi Type ctermfg=254
    hi Underlined term=underline cterm=underline ctermfg=81
    hi VertSplit ctermfg=234 ctermbg=249
    hi Visual ctermbg=236
    hi VisualNOS term=bold,underline cterm=bold,underline
    hi WarningMsg ctermbg=52
    hi WildMenu ctermbg=239
    hi Identifier cterm=NONE ctermfg=117
    hi SpecialChar cterm=NONE ctermfg=117
    hi PreProc term=underline ctermfg=81
    hi! link Directory Number
    hi! link SpecialKey PreProc
    hi! link qfLineNr Statement
    hi User1 ctermfg=168 ctermbg=234
    hi User2 ctermfg=37 ctermbg=234
    hi User3 ctermfg=255 ctermbg=234
    hi User4 cterm=NONE ctermfg=232 ctermbg=245
    hi link User5 PMenuSel
    hi link User6 DiffChange
    hi link User7 DiffAdd
    hi link User8 DiffDelete
    hi User9 ctermbg=239 ctermfg=255
    " hi Cursor
    " hi lCursor
endif
