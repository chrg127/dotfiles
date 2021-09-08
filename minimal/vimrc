syntax on
filetype plugin indent on

set nocompatible
set showcmd
set ruler
set relativenumber
set number
set laststatus=2
set autoread
set autowrite
set hlsearch
set ignorecase
set incsearch
set smartcase
set tabstop=4
set expandtab
set shiftwidth=4
set splitright
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
if (&diff ==# 0)
    set cursorline
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
endif
set wildmenu
set hidden
set showmatch
set mouse=a
set history=200
set ttimeoutlen=5
set ffs=unix,dos
set encoding=UTF-8
set clipboard+=unnamedplus
set suffixes=".bak,~,.o,.swp,.obj,.d,.class"
set wildignore=*.o,*.d,*.class
runtime ftplugin/man.vim

function! s:StripTrailingWhitespace()
    if !&binary && &filetype != 'diff'
        normal mz
        normal Hmy
        %s/\s\+$//e
        normal 'yz<CR>
        normal `z
    endif
endfunction

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
autocmd BufWinEnter * match Error /\s\+$/
autocmd InsertEnter * match Error /\s\+\%#\@<!$/
autocmd InsertLeave * match Error /\s\+$/
command! StripTrailingWhitespace :call s:StripTrailingWhitespace()

let mapleader = ","
noremap Y y$
nnoremap <S-Down> ddp
nnoremap <S-Up> ddkP
inoremap (<CR> (<CR>)<Esc>O
inoremap {<CR> {<CR>}<Esc>O
inoremap {; {<CR>};<Esc>O
inoremap {, {<CR>},<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap [; [<CR>];<Esc>O
inoremap [, [<CR>],<Esc>O
xnoremap <leader>y "+y
xnoremap <leader>p "+p
noremap <leader>s :sp **/
noremap <leader>v :vsp **/
nnoremap <leader>e :e **/
nnoremap <leader>b :ls<CR>:b<space>
nnoremap <leader>q :b#<CR>
