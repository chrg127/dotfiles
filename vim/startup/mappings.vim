" Disable arrow movement, resize splits instead.
nnoremap <Down>    :resize +2<CR>
nnoremap <Up>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
no <S-Down> ddp
no <S-Up> ddkkp

" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

" NERDtree shortcut
map <C-n> :NERDTreeToggle<CR>

" tagbar shortcut
nmap <F8> :TagbarToggle<CR>

" autoclosing brackets
inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [<CR>];<Esc>O
inoremap [, [<CR>],<Esc>O

" copy to system clipboard
"xnoremap <C-c> "+y
"nnoremap <silent> cp "+y
"nnoremap <silent> cpp "+yy
