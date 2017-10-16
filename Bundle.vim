" This file imports the various plugins.And you can add and remove plugins until you're satisfied

" Environment {

    " Basics {
        set nocompatible        " Must be first line
        set background=dark     " Assume a dark background
    " }

    " Setup Bundle Support {
        " The next three lines ensure that the ~/.vim/bundle/ system works
        filetype off
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
    " }

" }

" Bundles {

    " color-scheme {
        Plugin 'yuttie/hydrangea-vim'
    " }

       call vundle#end()
       filetype plugin indent on
" }
