let g:airline#themes#shades_of_purple#palette = {}

" Normal mode
let s:normal1 = [ "#1E1E3F", "#FFCC80", 140, 234 ]
let s:normal2 = [ "#1E1E3F", "#A599E9", 234, 140 ]
let s:normal3 = [ "#9EFFFF", "#1E1E3F", 140, 234 ]
let g:airline#themes#shades_of_purple#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)
let g:airline#themes#shades_of_purple#palette.normal_modified = {
      \ 'airline_c': [ '#9effff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }

" Insert mode
let s:insert1 = [ "#1E1E3F", "#80FFBB", 159, 234 ]
let s:insert2 = [ "#1E1E3F", "#49B3A3", 234, 140 ]
let s:insert3 = [ "#9EFFFF", "#1E1E3F", 159, 234 ]
let g:airline#themes#shades_of_purple#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)
let g:airline#themes#shades_of_purple#palette.insert_modified = {
      \ 'airline_c': [ '#9EFFFF' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }

" replace mode (CTRL+R)
let s:replace1 = [ "#1E1E3F", "#FF628C", 234, 204 ]
let s:replace2 = [ "#1E1E3F", "#63C790", 234, 140 ]
let s:replace3 = [ "#9EFFFF", "#243D1D", 159, 234 ]
let g:airline#themes#shades_of_purple#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)

" visual mode
let s:visual1 = [ "#1E1E3F", "#FAD000", 234, 177 ]
let s:visual2 = [ "#1E1E3F", "#C78F63", 234, 213 ]
let s:visual3 = [ "#9EFFFF", "#2B1C1E", 140, 234 ]
let g:airline#themes#shades_of_purple#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)

" Inactive (is in other windows)
let s:airline_a_inactive = [ '#1E1E3F' , '#A599E9' , 239 , 234 , '' ]
let s:airline_b_inactive = [ '#9EFFFF' , '#1E1E3F' , 239 , 235 , '' ]
let s:airline_c_inactive = [ '#9EFFFF' , '#1E1E3F' , 239 , 236 , '' ]
let g:airline#themes#shades_of_purple#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#shades_of_purple#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }

" ctrlp stuff, i don't use it, so i don't care
if get(g:, 'loaded_ctrlp', 0)
    let s:CP1 = [ "#A599E9", "#1E1E3F", 140, 234 ]
    let s:CP2 = [ "#1E1E3F", "#A599E9", 234, 140 ]
    let s:CP3 = [ "#A599E9", "#1E1E3F", 140, 234 ]

    let g:airline#themes#shades_of_purple#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
endif

