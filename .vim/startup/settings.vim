" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" vim will load syntax rules with this
if has("autocmd")
  filetype plugin indent on
endif
syntax enable

set showcmd 		" Show (partial) command in status line.
set ruler
set showmatch		" Show matching bracket
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set wildmenu        
set autowrite		" Automatically save before commands like :next and :make
set hidden		    " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes)
set number          " Enable number column
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
if (has("termguicolors"))
    set termguicolors
endif
set ttimeoutlen=5
set enc=utf-8
set fillchars=vert:¦
set history=1000
set laststatus=2
set ffs=unix,dos
set vb
" set undofile

set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Airline settings
let g:airline_powerline_fonts = 1  "use powerline fonts

" for SNES ASM syntax
au BufNewFile,BufRead *.asm,*.inc set filetype=snes
