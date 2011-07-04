source $VIM/_vimrc

set ts=4 sw=4 expandtab
set backupdir^=$Temp directory^=$Temp
set backupcopy=yes
set imsearch=2 iminsert=2
vnoremap < <gv 
vnoremap > >gv 
set ignorecase smartcase
colorscheme railscasts

command Txml set ft=xml | execute "%!tidy -q -i -utf8 -m -w 0 -xml"
command Thtml set ft=html | execute "%!tidy -q -i -utf8 -m -w 0 -html"

let g:easytags_dynamic_files = 1
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
