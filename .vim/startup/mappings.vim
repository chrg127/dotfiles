" Disable arrow movement, resize splits instead.
nnoremap <Down>    :resize +2<CR>
nnoremap <Up>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
" tabs
nmap <C-Tab> :tabnext
nmap <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
map <C-S-Tab> :tabprevious<CR>
imap <C-Tab> <ESC>:tabnext<CR>
imap <C-S-Tab> <ESC>:tabprevious<CR>
noremap <F7> :set expandtab!<CR>

" NERDtree
map <C-n> :NERDTreeToggle<CR>
