syntax on
filetype plugin indent on

set nocompatible
set showcmd 		" Show (partial) command in status line.
set noshowmode      " Already have it in statusline
set ruler           " Show line and column number
set relativenumber  " left column displays relative numbers lines
set number          " now with current line number instead of 0
set laststatus=2    " Always display the status line
set autoread        " Read open files when changed in the background
set autowrite		" Automatically save before commands like :next and :make
set hlsearch        " Highlight searches
set ignorecase		" Do case insensitive matching
set incsearch		" Incremental search
set smartcase		" Do smart case matching
set tabstop=4       " Tab = 4 spaces
set expandtab       " Insert spaces instead of tabs
set shiftwidth=4    " Indent with 4 spaces
set splitright      " Splits
set foldmethod=indent   " Folding
set foldnestmax=10  " max nesting of folds
set nofoldenable    " open all folds automatically
set foldlevel=2
if (&diff ==# 0)    " cursorline with diff is shit
    set cursorline
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
endif
set wildmenu        " Enhanced command completion
set hidden		    " Hide buffers when they are abandoned
set showmatch		" Show matching bracket
set mouse=a		    " Enable mouse usage (all modes)
set history=200     " Keep 200 lines of command history
set ttimeoutlen=5   " Time to wait for a key sequence to complete. Keep low.
set ffs=unix,dos
set encoding=UTF-8
set exrc            " read current dir's .vimrc
set secure          " secure local .vimrc by disabling some commands
set directory=~/.cache/vim/swap//   " set a cache directory for swap files
set linebreak
set clipboard+=unnamedplus
set suffixes=".bak,~,.o,.swp,.obj,.d"
set wildignore=*.o,*.d
" set scrolloff=5

" ===== colors =====
" colorscheme palenight
colorscheme dosboxblack
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_italic = 1
" let g:gruvbox_underline = 1
" colorscheme gruvbox

" ===== misc options =====
" jump to the last position when reopening a file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" highlight extra whitespace
match Error /\s\+$/
autocmd BufWinEnter * match Error /\s\+$/
autocmd InsertEnter * match Error /\s\+\%#\@<!$/
autocmd InsertLeave * match Error /\s\+$/
function! s:StripTrailingWhitespace()
    if !&binary && &filetype != 'diff'
        normal mz
        normal Hmy
        %s/\s\+$//e
        normal 'yz<CR>
        normal `z
    endif
endfunction
command! StripTrailingWhitespace :call s:StripTrailingWhitespace()

" utility function to show assembly output
function! s:ShowASM()
    if &filetype != 'cpp' && &filetype != 'c'
        return
    endif
    let filename = expand("%r")
    let tmpfile = "/tmp/disassembled_" . expand("%:r") . ".s"
    execute "!g++ -std=c++20 -S -O3 -masm=intel -fno-asynchronous-unwind-tables " . filename . " -o " . tmpfile
    execute "split" . tmpfile
    normal gg
endfunction
command! ShowASM :call s:ShowASM()

" open quickfix list after commands like :make
autocmd QuickFixCmdPost * copen | RefreshStatus

" use :Man and configure cppman
runtime ftplugin/man.vim
function! s:CppMan(str)
    execute '!cppman ' . a:str
endfunction
command! -nargs=1 CppMan :call s:CppMan(<f-args>)

" use clang-format
function! s:ClangFormat(first, last)
    let l:winview = winsaveview()
    execute a:first . "," . a:last . "!clang-format --style=WebKit"
    call winrestview(l:winview)
endfunction
command! -range=% ClangFormat call <sid>ClangFormat (<line1>, <line2>)

" filetypes
"autocmd BufNewFile,BufRead *.asm,*.inc set filetype=snes
autocmd BufNewFile,BufRead *.qbs setfiletype qbs
autocmd BufNewFile,BufRead *.pro,*.pri set filetype=qmake
autocmd BufNewFile,BufRead *.qml setfiletype qml
autocmd BufNewFile,BufRead *.qrc setfiletype xml
autocmd BufNewFile,BufRead *.ts setfiletype xml
autocmd BufNewFile,BufRead *.ui setfiletype xml

" language specific settings
let c_gnu = 1
let c_space_errors = 1
let c_curly_error = 1
let c_ansi_typedefs = 1
let c_ansi_constants = 1
let java_highlight_java_lang_ids=1
let java_highlight_java_io=1

