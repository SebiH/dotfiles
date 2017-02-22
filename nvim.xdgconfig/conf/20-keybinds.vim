" NeoVim standard bindings
    nmap <space> :
    vmap <space> :

    " leader key
    let mapleader = ","

    " for learning
    nnoremap j gj
    nnoremap k gk
    inoremap <F1> <ESC>
    nnoremap <F1> <ESC>
    vnoremap <F1> <ESC>

    " pasting
    nnoremap <F2> :set invpaste paste?<CR>
    set pastetoggle=<F2>
    set showmode

    " current date
    let dateformat = "%Y-%m-%d"
    nnoremap <F6> "=strftime(dateformat)<CR>P
    inoremap <F6> <C-R>=strftime(dateformat)<CR>

    " make escaping the terminal much easier
    tnoremap <Esc> <c-\><c-n>

    " Searching
    nnoremap / /\v
    vnoremap / /\v

    nnoremap <tab> %
    vnoremap <tab> %

    " leader mappings
    nnoremap <leader><space> :noh<cr>


" NERDTree
    nnoremap <silent> <leader>T :NERDTreeToggle<CR>
    nnoremap <silent> <leader>t :NERDTreeFocus<CR>

" Tagbar
    nnoremap <silent> <leader>r :TagbarOpen<CR>
    nnoremap <silent> <leader>R :TagbarToggle<CR>

" Smooth scroll
    noremap <silent> <c-g> :call smooth_scroll#up(&scroll, 10, 4)<CR>
    noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 10, 4)<CR>

" DelimitMate
    imap <C-c> <CR><Esc>O

" Thesaurus_query
    nnoremap <unique><silent> <Leader>ss :ThesaurusQueryReplaceCurrentWord<CR>
    vnoremap <unique><silent> <Leader>ss "ky:ThesaurusQueryReplace <C-r>k<CR>

" LaTeX-Box
    nnoremap <unique><silent> <Leader>l :LatexTOC<CR>

" vim-fugitive (git)
    nmap <leader>gs :Gstatus<cr>
    nmap <leader>gc :Gcommit<cr>
    nmap <leader>ga :Gwrite<cr>
    nmap <leader>gd :Gdiff<cr>

