" .gvimrc

set cursorline
set guifont=Monaco:h10
set visualbell t_vb=

if &diff
    set columns=224
    set lines=60
else
    set columns=132
    set lines=40
endif

" vim: et:sts=4:sw=4:ts=8:tw=79
