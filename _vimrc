if filereadable("$VIM/_vimrc")
  source $VIM/_vimrc
elseif filereadable("$VIM/vimrc")
  source /etc/vimrc
endif

execute pathogen#infect()

set ignorecase smartcase
syntax enable
filetype plugin indent on

set ts=4 sw=4 expandtab
set backupdir^=$Temp directory^=$Temp
set backupcopy=yes
vnoremap < <gv 
vnoremap > >gv 
set guifont=DejaVu_Sans_Mono:h10
set background=light
colorscheme solarized
set lines=40
set columns=120
set colorcolumn=120
highlight ColorColumn ctermbg=darkgrey guibg=lightgrey

" FROM http://stackoverflow.com/a/934362/232593
vmap ,c <esc>a--><esc>'<i<!--<esc>'>$

" FROM http://vim.wikia.com/wiki/Cleanup_your_HTML
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
