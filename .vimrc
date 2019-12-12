" Load pathogen
execute pathogen#infect()

" NERDtree settings
" close NERDTree if it's the last window opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/colors.vim
