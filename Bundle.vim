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

    " Code Completion {

       Plugin 'mattn/emmet-vim'            " html css javascript
       Plugin 'Vallrioc/YouCompleteMe'     " A code-completion engine for Vim

    " }

    " Color Scheme {

        Plugin 'altercation/solarized'    " precision color scheme for multiple applications.

     " }

    " IDE Features {
        
        Plugin 'scrooloose/nerdtree'       " Directory tree
        Plugin 'vim-airline/vim-airline'   " lean & mean status/tabline for vim that's light as air
        Plugin 'majutsushi/tagbar'         " a class outline viewer for Vim
        Plugin 'jiangmiao/auto-pairs'      " Insert or delete brackets, parens, quotes in pair.
        Plugin 'mbbill/undotree'           " The ultimate undo history visualizer for VIM
        Plugin 'scrooloose/nerdcommenter'  " Comment functions so powerful��no comment necessary.
        Plugin 'tpope/vim-fugitive'        " a Git wrapper so awesome, it should be illegal
        Plugin 'godlygeek/tabular'         " text filtering and alignment
        Plugin 'easymotion/vim-easymotion' " Vim motion on speed!
        Plugin 'mileszs/ack.vim'           " Run your favorite search tool from Vim, with an enhanced results list.
        Plugin 'kien/ctrlp.vim'            " Fuzzy file, buffer, mru, tag, etc finder
        Plugin 'tpope/vim-surround'        " easily delete, change and add such surroundings in pairs.
        Plugin 'sirver/ultisnips'          " provide support for textual snippets

    " }

       call vundle#end()
       filetype plugin indent on
" }
