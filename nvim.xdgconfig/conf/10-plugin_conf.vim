" Airline
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#branch#enabled    = 1
    let g:airline#extensions#syntastic#enabled = 1
    let g:airline#extensions#tabline#enabled   = 1

" You Complete Me
    "let g:ycm_autoclose_preview_window_after_insertion = 1

" Neomake
    " active linter on save
    "autocmd! BufWritePost * Neomake

" Deoplete
    " enable
    "let g:deoplete#enable_at_startup = 1

" indentLine
    let g:indentLine_color_term = 239
    au VimEnter * IndentLinesEnable
    " Don't interfere with vim-json's concealing
    let g:indentLine_noConcealCursor=""

" Tagbar
    " Markdown support
    let g:tagbar_type_markdown = {
            \ 'ctagstype' : 'markdown',
            \ 'kinds' : [
                \ 'h:headings',
                \ 'l:links',
                \ 'i:images'
            \ ],
        \ "sort" : 0
    \ }

