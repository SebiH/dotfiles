" Rainbow Parantheses
    " colours
    let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

    " Autoload
    let g:rainbow_active = 1

" Airline
    let g:airline#extensions#branch#enabled    = 1
    let g:airline#extensions#syntastic#enabled = 1
    let g:airline#extensions#tabline#enabled   = 1

" You Complete Me
    let g:ycm_autoclose_preview_window_after_insertion = 1

" indentLine
    let g:indentLine_color_term = 239
    au VimEnter * IndentLinesEnable


" Easy Motion
    " Turn on case insensitive feature
    let g:EasyMotion_smartcase = 1
    " keep cursor colum when JK motion
    let g:EasyMotion_startofline = 0
    " Smartsign (type `3` and match `3`&`#`)
    let g:EasyMotion_use_smartsign_us = 1

