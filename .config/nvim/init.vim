set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

syntax enable

"colorscheme nightfly
colorscheme substrata

set t_Co=256
set background=dark
set guicursor=

" fix for unruly bg color when in tmux
hi Normal guibg=NONE ctermbg=NONE

set number
set relativenumber

" enable mouse scroll
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
