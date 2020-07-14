" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")   " Load syntax rules
  filetype plugin indent on
endif
syntax on           " Will make sure the syntax is always on
syntax enable       

set showcmd 		" Show (partial) command in status line.
set ruler           " Show line and column number
set number          " Enable number column
set laststatus=2    " Always display the status line

set autoread        " Read open files when changed in the background
set autowrite		" Automatically save before commands like :next and :make

set ignorecase		" Do case insensitive matching
set smartcase       " Unless we type a capital

set listchars=""    " Empty listchars
set listchars=tab:>. " A tab will be displayed as >...
" set listchars+=trail;.
set fillchars=vert:¦

set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch        " Highlight searches

set tabstop=4       " Tab = 4 spaces
set shiftwidth=4
set expandtab       " Insert spaces instead of tabs

set nobackup        " Don't create backups and swap files
set noswapfile

set splitright      " Splits
set splitbelow

set foldmethod=syntax "indent   " Folding
set foldnestmax=10
set nofoldenable
set foldlevel=2

set cursorline      " Adds different background color to line on which cursor is on
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

set wildmenu        " Enhanced command completion
set hidden		    " Hide buffers when they are abandoned
set showmatch		" Show matching bracket
set mouse=a		    " Enable mouse usage (all modes)
set history=200     " Keep 200 lines of command history
set ttimeoutlen=5   " Time to wait for a key sequence to complete. Keep low.
set ffs=unix,dos
set encoding=UTF-8
set exrc
set secure
"set grepprg=grep\ --color=always\ -n\ $*\ /dev/null
"set makeprg=make\ EXTRA_CFLAGS=fdiagnostics-color=always


" Airline settings
let g:airline_powerline_fonts = 1  "use powerline fonts
let g:airline_skip_empty_sections = 0
let g:airline#parts#ffenc#skip_expected_string='utf-8 - unix'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0

" for SNES ASM syntax
au BufNewFile,BufRead *.asm,*.inc set filetype=snes
autocmd BufNewFile,BufRead *.qbs setfiletype qbs
autocmd BufNewFile,BufRead *.pro,*.pri set filetype=qmake
autocmd BufNewFile,BufRead *.qml setfiletype qml
autocmd BufNewFile,BufRead *.qrc setfiletype xml
autocmd BufNewFile,BufRead *.ts setfiletype xml
autocmd BufNewFile,BufRead *.ui setfiletype xml

" Language specific settings
" C
" let c_syntax_for_h = 1
" let c_no_if0 = 1
let c_gnu = 1
let c_space_errors = 1
let c_curly_error = 1
let c_ansi_typedefs = 1
let c_ansi_constants = 1


