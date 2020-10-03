"if (has("termguicolors"))
"    set termguicolors
"endif

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

" clipboard int.
set clipboard=unnamedplus

" tab stuff
set tabstop=2
set shiftwidth=2
set expandtab

