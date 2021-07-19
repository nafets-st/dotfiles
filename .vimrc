set directory=$HOME/.vim/swapfiles//

set laststatus=2

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%h%m%r%w            "flags
set statusline +=%1*%=%*                "right align
set statusline +=%1*%5l%*               "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
set statusline +=%1*%<%P%*              "offset

set viminfo=

"au BufRead,BufNewFile *.ts set filetype=typescript
"au BufRead,BufNewFile *.ts setfiletype typescript
"au! Syntax newlang source $VIM/syntax/typescript.vim

au FileType java       mat ErrorMsg /\s\+\%#\@<!$\|\t\|\%>100v.\+/
au FileType javascript mat ErrorMsg /\s\+\%#\@<!$\|\t\|\%>80v.\+/
au FileType typescript mat ErrorMsg /\s\+\%#\@<!$\|\t\|\%>80v.\+/

set hlsearch
syntax on

set background=dark
set ff=unix
