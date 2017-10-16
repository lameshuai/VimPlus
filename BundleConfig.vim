" This file contains the Bundle plug-in configuration.

" Code Completion {

    " emmet {

        imap <F3> <Esc><C-Y>,i      " map for faster

    " }

    " YouCompleteMe {

        let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
        let g:ycm_server_python_interpreter='/usr/bin/python'

    " }

" }

" ColorScheme {

     colorscheme solarized           " Load a colorscheme

" }

" IDE Features {

    " nerdtree {

          if isdirectory(expand("~/.vim/bundle/nerdtree"))
          map <leader>nt :NERDTreeToggle<CR>           " nerdtree key map
          nmap <leader>nf :NERDTreeFind<CR>            " Find the current file in the tree

          let NERDTreeWinSize=20
          let NERDTreeShowLineNumbers=1
          let NERDTreeShowBookmarks=1
          let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
          let NERDTreeChDirMode=0
          let NERDTreeQuitOnOpen=1
          let NERDTreeMouseMode=2
          let NERDTreeShowHidden=1
          let NERDTreeKeepTreeInNewTab=1
          let NERDTreeCaseSensitiveSort=1
          let NERDTreeNaturalSort=1
          let g:nerdtree_tabs_open_on_gui_startup=1
          let g:nerdtree_tabs_open_on_console_startup=1
          endif 

    " }

" }