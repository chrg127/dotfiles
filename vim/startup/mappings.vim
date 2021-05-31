" set <Leader>
let mapleader = ","

" obvious
noremap Y y$

" use arrow keys for window management
nnoremap <Down>  :resize +2<CR>
nnoremap <Up>    :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Moves a line up/down
nnoremap <S-Down> ddp
nnoremap <S-Up> ddkP

" <ctrl> is bad for me
nnoremap <Leader>k <C-w>k
nnoremap <Leader>j <C-w>j
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

" nerdtree shortcut
nnoremap <C-n> :NERDTreeToggle<CR> :RefreshStatus<CR>

" autoclosing brackets
inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [<CR>];<Esc>O
inoremap [, [<CR>],<Esc>O

" copy and paste with system clipboard
xnoremap <leader>y "+y
xnoremap <leader>p "+p

" better :split, :vsplit and :edit
noremap <leader>s :sp **/
noremap <leader>v :vsp **/
nnoremap <leader>e :e **/

" switch buffers using ,b
nnoremap <leader>b :ls<CR>:b<space>

" quick switch to last buffer
nnoremap <leader>q :b#<CR>

" shortcuts for file switch
nnoremap <silent> <leader>ok :FSSplitAbove<cr>
nnoremap <silent> <leader>oj :FSSplitBelow<cr>
nnoremap <silent> <leader>oh :FSSplitLeft<cr>
nnoremap <silent> <leader>ol :FSSplitRight<cr>

" autocompletion mappings
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <silent> <leader>n <C-x><C-n>
"inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "<Esc>"
"inoremap <C-x> <Esc>:echo "C-x"<CR>i<C-x>
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"            \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

