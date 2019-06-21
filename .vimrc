set nocompatible
set expandtab
set bs=2
set ts=4
set sw=4
set softtabstop=4
" set number
set ruler
syntax on

if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme spacemacs-theme

 " vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''
