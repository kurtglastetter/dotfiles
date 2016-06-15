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
let &backupskip .= ',' . escape(expand('$HOME'), '\') . '/.aws/*'
let &backupskip .= ',' . escape(expand('$HOME'), '\') . '/.ssh/*'
set patchmode=

" file search path
set path^=.,,

" grep
set grepprg=grep\ -EHIirn

if &diff
    colo eclipse
else
    colo desert
endif

autocmd FileType  erlang     set noet sts=4 sw=4 ts=8
autocmd FileType  gitconfig  set noet sts=8 sw=8 ts=8
autocmd FileType  go         set noet sts=4 sw=4 ts=4
autocmd FileType  groovy     set   et sts=4 sw=4 ts=8
autocmd FileType  html       set   et sts=2 sw=2 ts=8
"autocmd FileType  java       set   et sts=4 sw=4 ts=8
"autocmd FileType  java       set noet sts=4 sw=4 ts=4
autocmd FileType  markdown   set   et sts=4 sw=4 ts=8 tw=72
autocmd FileType  ps1        set   et sts=2 sw=2 ts=8
"autocmd FileType  ruby       set noet sts=4 sw=4 ts=4
autocmd FileType  ruby       set   et sts=2 sw=2 ts=8
autocmd FileType  sh         set   et sts=2 sw=2 ts=8
autocmd FileType  xml        set   et sts=2 sw=2 ts=8

nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>

nnoremap \: 0y$:<c-r>"<lf>
nnoremap \\ :noh<lf>

nnoremap \G *N:grep '<c-r>/'
nnoremap \g *N:grep '<c-r>/' *<lf>

nnoremap \m /\v^([<\|=>])\1{6}(\s.*)?$/<lf>

nnoremap \sL :%s/\v^\s+//<lf>
nnoremap \sT :%s/\v\s+$//<lf>
nnoremap \sl :s/\v^\s+//<lf>
nnoremap \st :s/\v\s+$//<lf>

" Note: The '%f%[/]%#' sequence is a hack to force '%f' to only match filenames
" using the 'isfname' setting, which requires a following '%' according to the
" 'errorformat' help doc.  '%[/]%#' is just a safe way to include the '%'.
"let &errorformat=
"  \   '%*[^"]"%f%[/]%#"%*\D%l: %m'
"  \. ',"%f%[/]%#"%*\D%l: %m'
"  \. ',%-G%f%[/]%#:%l: (Each undeclared identifier is reported only once'
"  \. ',%-G%f%[/]%#:%l: for each function it appears in.)'
"  \. ',%-GIn file included from %f%[/]%#:%l:%c'
"  \. ',%-GIn file included from %f%[/]%#:%l'
"  \. ',%-Gfrom %f%[/]%#:%l:%c'
"  \. ',%-Gfrom %f%[/]%#:%l'
"  \. ',%f%[/]%#:%l:%c:%m'
"  \. ',%f%[/]%#(%l):%m'
"  \. ',%f%[/]%#:%l:%m'
"  \. ',"%f%[/]%#"\, line %l%*\D%c%*[^ ] %m'
"  \. ',%D%*\a[%*\d]: Entering directory `%f%[/]%#'."'"
"  \. ',%X%*\a[%*\d]: Leaving directory `%f%[/]%#'."'"
"  \. ',%D%*\a: Entering directory `%f%[/]%#'."'"
"  \. ',%X%*\a: Leaving directory `%f%[/]%#'."'"
"  \. ',%DMaking %*\a in %f%[/]%#'
"  \. ',%f%[/]%#|%l| %m'

let errorformat =
   \  '%W%f:%l: warning: %m,'
   \. '%E%f:%l:%c:%m,'
   \. '%E%f:%l:%m,'
   \. '%C%\s%\+%m,'
   \. '%-G#%.%#'

" vim: et:sts=4:sw=4:ts=8:tw=79
