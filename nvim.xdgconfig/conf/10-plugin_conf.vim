" Airline
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#branch#enabled    = 1
    let g:airline#extensions#syntastic#enabled = 1
    let g:airline#extensions#tabline#enabled   = 1

" Neomake
    " active linter on save
    autocmd! BufWritePost * Neomake

" Deoplete
    " enable
    let g:deoplete#enable_at_startup = 1

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

" Thesaurus_query.vim
    " resolve conflict with vim-surround
    let g:tq_map_keys = 0

    " don't use autocomplete due to security concerns..
    let g:tq_use_vim_autocomplete = 0

    " Offline query db
    let g:tq_mthesaur_file = "~/.config/nvim_plugged/thesaurus_query.vim/mthesaur.txt"
    let g:tq_online_backends_timeout = 0.3

" Limelight
    let g:limelight_default_coefficient = 0.8

    " Auto activate
    autocmd! User limelight.vim Limelight

" Goyo
    " Custom enter/leave
    function! s:goyo_enter()
        " Custom functions here
    endfunction

    function! s:goyo_leave()
        q
    endfunction

    autocmd! User GoyoEnter nested call <SID>goyo_enter()
    autocmd! User GoyoLeave nested call <SID>goyo_leave()

    " Auto-activate
    autocmd! User goyo.vim execute 'Goyo' min([&columns / 2, 140]) + 'x90%'

