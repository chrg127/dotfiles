hi clear
syntax reset
set notermguicolors
let g:colors_name = "dosboxblack"

hi Boolean gui=NONE guifg=#f5fef8 guibg=NONE ctermfg=255
hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a ctermbg=234
hi Comment gui=NONE guifg=#d04863 guibg=NONE ctermfg=168
hi Conceal gui=NONE guifg=#808080 guibg=NONE ctermfg=243
hi Conditional gui=NONE guifg=#f5fef8 guibg=NONE ctermfg=255
hi Constant gui=NONE guifg=#ad3693 guibg=NONE ctermfg=163
hi Cursor gui=reverse guifg=NONE guibg=NONE
hi CursorColumn gui=NONE guifg=NONE guibg=#1a1a1a ctermbg=234
hi CursorLine gui=NONE guifg=NONE guibg=#262626 term=NONE cterm=NONE ctermbg=235
hi CursorLineNr gui=NONE guifg=#f5fef8 guibg=#1a1a1a term=NONE cterm=NONE ctermfg=255 ctermbg=234
hi DiffAdd gui=NONE guifg=#000000 guibg=#00baa8 ctermfg=232 ctermbg=37
hi DiffChange gui=NONE guifg=#000000 guibg=#f7ce82 ctermfg=232 ctermbg=222
hi DiffDelete gui=NONE guifg=#000000 guibg=#d04863 ctermfg=232 ctermbg=168
hi DiffText gui=NONE guifg=NONE guibg=#333333 term=reverse cterm=NONE ctermbg=236
hi Directory gui=NONE guifg=#8f8f8f guibg=NONE ctermfg=245
hi Error gui=NONE guifg=NONE guibg=#250909 ctermbg=52
hi ErrorMsg gui=NONE guifg=NONE guibg=#250909 ctermbg=52
hi FoldColumn gui=NONE guifg=#616161 guibg=NONE ctermfg=0
hi Folded gui=NONE guifg=#707070 guibg=#1a1a1a ctermfg=242 ctermbg=234
hi Ignore gui=NONE guifg=NONE guibg=NONE
hi IncSearch gui=NONE guifg=#f7ce82 guibg=#000000 ctermfg=222 ctermbg=232
hi LineNr gui=NONE guifg=#616161 guibg=NONE ctermfg=241
hi MatchParen gui=NONE guifg=NONE guibg=#f7ce82 ctermbg=222
hi ModeMsg gui=NONE guifg=NONE guibg=NONE
hi MoreMsg gui=NONE guifg=NONE guibg=NONE
hi NonText gui=NONE guifg=#616161 guibg=NONE ctermfg=241
hi Normal gui=NONE guifg=#b1b2b9 guibg=#080808 ctermfg=249 ctermbg=232
hi Number gui=NONE guifg=#7c80f8 guibg=NONE ctermfg=105
hi Pmenu gui=NONE guifg=NONE guibg=#1a1a1a ctermbg=234 ctermfg=249
hi PmenuSbar gui=NONE guifg=NONE guibg=#262626 ctermbg=235
hi PmenuSel gui=NONE guifg=#000000 guibg=#7c80f8 ctermfg=232 ctermbg=105
hi PmenuThumb gui=NONE guifg=NONE guibg=#525252 ctermbg=239
hi Question gui=NONE guifg=NONE guibg=NONE
hi Search gui=NONE guifg=#000000 guibg=#f7ce82 ctermfg=232 ctermbg=222
hi SignColumn gui=NONE term=NONE guifg=#616161 guibg=NONE ctermfg=241 ctermbg=232
hi Special gui=NONE guifg=#00ca00 guibg=NONE ctermfg=40
hi SpecialKey gui=NONE guifg=#616161 guibg=NONE ctermfg=241
hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#250909 ctermbg=52
hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#092509 ctermbg=22
hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626 ctermbg=235
hi Statement term=NONE gui=NONE guifg=#f5fef8 guibg=NONE ctermfg=255
hi Operator term=NONE gui=NONE guifg=#00baa8 guibg=NONE ctermfg=37
hi StatusLine guifg=#1a1a1a guibg=#b1b2b9 cterm=reverse gui=NONE ctermfg=234 ctermbg=249
hi StatusLineNC gui=NONE guifg=#707070 guibg=#262626 ctermfg=242 ctermbg=235
hi StorageClass gui=NONE guifg=#eaf0e5 guibg=NONE ctermfg=254
hi String gui=NONE guifg=#d04863 guibg=NONE ctermfg=168
hi TabLine gui=NONE guifg=#eaf0e5 guibg=#333333 term=NONE cterm=NONE ctermfg=254 ctermbg=236
hi TabLineFill gui=NONE guifg=#1a1a1a guibg=#8f8f8f ctermfg=234 ctermbg=245
hi TabLineSel gui=NONE guifg=#eaf0e5 guibg=#525252 ctermfg=254 ctermbg=239
hi Title gui=NONE guifg=#7c80f8 guibg=NONE ctermfg=105
hi Todo gui=standout guifg=NONE guibg=NONE
hi Type gui=NONE guifg=#eaf0e5 guibg=NONE ctermfg=254
hi Underlined gui=NONE guifg=NONE guibg=NONE
hi VertSplit gui=NONE guifg=#1a1a1a guibg=#b1b2b9 ctermfg=234 ctermbg=249
hi Visual gui=NONE guifg=NONE guibg=#333333 ctermbg=236
hi VisualNOS gui=NONE guifg=NONE guibg=NONE
hi WarningMsg gui=NONE guifg=NONE guibg=#250909 ctermbg=52
hi WildMenu gui=NONE guifg=NONE guibg=#525252 ctermbg=239
hi lCursor gui=NONE guifg=NONE guibg=NONE
hi Identifier gui=NONE guifg=#89ddff guibg=NONE cterm=NONE ctermfg=117
hi SpecialChar gui=NONE guifg=#89ddff guibg=NONE cterm=NONE ctermfg=117
hi PreProc gui=NONE guifg=NONE guibg=NONE
hi! link Directory Number
hi! link SpecialKey PreProc
hi! link qfLineNr Statement
hi User1 guifg=#d04863 guibg=#1a1a1a ctermfg=168 ctermbg=234
hi User2 guifg=#00baa8 guibg=#1a1a1a ctermfg=37 ctermbg=234
hi User3 guifg=#f5fef8 guibg=#1a1a1a ctermfg=255 ctermbg=234
hi User4 guifg=#000000 guibg=#8f8f8f gui=NONE cterm=NONE ctermfg=232 ctermbg=245
hi link User5 PMenuSel
hi link User6 DiffChange
hi link User7 DiffAdd
hi link User8 DiffDelete
hi User9 ctermbg=239 ctermfg=255
