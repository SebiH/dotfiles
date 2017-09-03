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
    let g:indentLine_concealcursor=''
    let g:indentLine_conceallevel = 1

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

" LaTeX-Box
    " Options
    let g:LatexBox_latexmk_async = 1
    let g:LatexBox_latexmk_preview_continuously = 1
    let g:LatexBox_split_type="vnew"
    let g:LatexBox_split_side="topleft"

" Pandoc
    " Disable spellcheck
    let g:pandoc#spell#enabled = 0
    " Disable folding
    let g:pandoc#modules#disabled = ["folding"]
    autocmd BufNewFile,BufReadPost *.md set syntax=markdown

" vimtex
    let g:vimtex_view_enabled = 0
    let g:vimtex_compiler_enabled = 0
    let g:vimtex_index_hide_line_numbers = 0


