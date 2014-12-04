" .vimrc

set nocompatible
execute pathogen#infect()
syntax on
filetype plugin indent on

set   autowrite
set   hidden
set   hlsearch
set   ignorecase
set   number
set nowrap

set modelines=5
set tabstop=8
set visualbell t_vb=
set wildmode=longest,list

" swap files
set directory=.,~/tmp,$TMPDIR,/var/tmp,/tmp

" backups
set   backup
set   writebackup
set backupcopy=auto
set backupdir=~/tmp,$TMPDIR,/var/tmp,/tmp
set backupext=~
set patchmode=.orig

if &diff
    colo eclipse
else
    colo desert
endif

autocmd FileType  gitconfig  set noet sts=8 sw=8 ts=8
autocmd FileType  groovy     set et sts=4 sw=4 ts=8
"autocmd FileType  java       set   et sts=4 sw=4 ts=8
"autocmd FileType  java       set noet sts=4 sw=4 ts=4
autocmd FileType  ps1        set   et sts=2 sw=2 ts=8
"autocmd FileType  ruby       set noet sts=4 sw=4 ts=4
autocmd FileType  ruby       set   et sts=2 sw=2 ts=8
autocmd FileType  sh         set   et sts=2 sw=2 ts=8
autocmd FileType  xml        set   et sts=2 sw=2 ts=8

nnoremap \: 0y$:<c-r>"<lf>
nnoremap \\ :noh<lf>
nnoremap \m /\v^([<\|=>])\1{6}(\s.*)?$/<lf>
nnoremap \sL :%s/\v^\s+//<lf>
nnoremap \sT :%s/\v\s+$//<lf>
nnoremap \sl :s/\v^\s+//<lf>
nnoremap \st :s/\v\s+$//<lf>

" vim: et:sts=4:sw=4:ts=8:tw=79
