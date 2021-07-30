set nocompatible

" Vundle begin
filetype off

" See github.com/VundleVim/Vundle.vim to install
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'HerringtonDarkholme/yats.vim'

call vundle#end()
filetype plugin on
" Vundle end

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

au FileType java       mat ErrorMsg /\s\+\%#\@<!$\|\t\|\%>100v.\+/
au FileType cpp        mat ErrorMsg /\s\+\%#\@<!$\|\t\|\%>80v.\+/
au FileType javascript mat ErrorMsg /\s\+\%#\@<!$\|\t\|\%>80v.\+/
au FileType typescript mat ErrorMsg /\s\+\%#\@<!$\|\t\|\%>80v.\+/

set hlsearch
syntax on

set background=dark
set ff=unix
