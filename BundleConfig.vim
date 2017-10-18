" This file contains the Bundle plug-in configuration.

" Code Completion {

    " Emmet {
 
        if isdirectory(expand("~/.vim/bundle/emmet-vim"))
        imap <F3> <Esc><C-Y>,i
        endif

    " }

    " YouCompleteMe {

        let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
        let g:ycm_server_python_interpreter='/usr/bin/python'

    " }

" }

" ColorScheme {

     colorscheme molokai           " Load a colorscheme

" }

" IDE Features {

    " Nerdtree {

        if isdirectory(expand("~/.vim/bundle/nerdtree"))
        autocmd vimenter * NERDTree
        map  <leader>snt :NERDTreeToggle<CR>
        nmap <leader>snf :NERDTreeFind<CR>

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

    " Air-line {

        if isdirectory(expand("~/.vim/bundle/vim-airline/"))
        let g:airline#extensions#tabline#enabled = 1   " enable tabline
        noremap <leader><C-n> :bnext<CR>
        noremap <leader><C-p> :bprev<CR>
        endif

    " }

    " TagBar {

        if has('unix')
        let g:tagbar_ctags_bin = '/usr/bin/ctags'
        elseif has('mac')
        let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
        elseif has('win32')
        let g:tagbar_ctags_bin = 'C:\Program Files\ctags58\ctags.exe'
        endif

        if isdirectory(expand("~/.vim/bundle/tagbar/"))
        nnoremap <silent> <leader>stt :TagbarToggle<CR>
        let g:tagbar_show_linenumbers = 1     " enable line
        let g:tagbar_width = 20
        autocmd vimenter * Tagbar
        endif

     " }

     " Auto-pairs {

         if isdirectory(expand("~/.vim/bundle/auto-pairs/"))
         let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`','<':'>'}    " add pairs <>
         let g:AutoPairsFlyMode = 1  " enable flymode
         endif

     " }

     " Undotree {

         if isdirectory(expand("~/.vim/bundle/undotree/"))
         map <Leader>sut :UndotreeToggle<CR>
         " If undotree is opened, it is likely one wants to interact with it.
         let g:undotree_SetFocusWhenToggle=1
         set undodir='~/.undodir/'
         set undofile
         endif

     " }

     " Nerdcommenter {

         if isdirectory(expand("~/.vim/bundle/nerdcommenter/"))
         let g:NERDSpaceDelims = 1             " Add spaces after comment delimiters by default
         let g:NERDCompactSexyComs = 1         " Use compact syntax for prettified multi-line comments
         let g:NERDDefaultAlign = 'left'       " Align line-wise comment delimiters flush left
         let g:NERDCommentEmptyLines = 1       " Allow commenting and inverting empty lines
         let g:NERDTrimTrailingWhitespace = 1  " Enable trimming of trailing whitespace when uncommenting
         endif

     " }

     " Fugitive {

          if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
          nnoremap <silent> <leader>sgs :Gstatus<CR>
          nnoremap <silent> <leader>sgd :Gdiff<CR>
          nnoremap <silent> <leader>sgc :Gcommit<CR>
          nnoremap <silent> <leader>sgb :Gblame<CR>
          nnoremap <silent> <leader>sgl :Glog<CR>
          nnoremap <silent> <leader>sgp :Gpush<CR>
          nnoremap <silent> <leader>sgr :Gread<CR>
          nnoremap <silent> <leader>sgw :Gwrite<CR>
          nnoremap <silent> <leader>sge :Gedit<CR>
          " Mnemonic _i_nteractive
          nnoremap <silent> <leader>sgi :Git add -p %<CR>
          nnoremap <silent> <leader>sgg :SignifyToggle<CR>
          endif

     " }

     " Tabular {

         if isdirectory(expand("~/.vim/bundle/tabular"))
         nmap <Leader>a& :Tabularize /&<CR>
         vmap <Leader>a& :Tabularize /&<CR>
         nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
         vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
         nmap <Leader>a=> :Tabularize /=><CR>
         vmap <Leader>a=> :Tabularize /=><CR>
         nmap <Leader>a: :Tabularize /:<CR>
         vmap <Leader>a: :Tabularize /:<CR>
         nmap <Leader>a:: :Tabularize /:\zs<CR>
         vmap <Leader>a:: :Tabularize /:\zs<CR>
         nmap <Leader>a, :Tabularize /,<CR>
         vmap <Leader>a, :Tabularize /,<CR>
         nmap <Leader>a,, :Tabularize /,\zs<CR>
         vmap <Leader>a,, :Tabularize /,\zs<CR>
         nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
         vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
         endif

     " }

     " Easy-motion {

           

     " }

     " Ack {

     " }

     " Ctrlp {

     " }

     " Surround {

         if isdirectory(expand("~/.vim/bundle/tabular"))
         endif

     " }

     " ultisnips {

     " }

" }
