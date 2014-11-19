" .gvimrc

set guifont=Monaco:h10
set visualbell t_vb=

if &diff
    set columns=188
    set lines=65
else
    set columns=100
    set lines=60
endif

" vim: et:sts=4:sw=4:ts=8:tw=79
