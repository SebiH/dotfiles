" NeoVim standard bindings
    nmap <space> :

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

    " Searching (disabled: overwritten by EasyMotion)
    "nnoremap / /\v
    "vnoremap / /\v

    nnoremap <tab> %
    vnoremap <tab> %

    " leader mappings
    " ,w creates a new vertical split and switches to it
    nnoremap <leader>w <C-w>v<C-w>l

    nnoremap <leader><space> :noh<cr>


" NERDTree
    nnoremap <silent> <leader>T :NERDTreeToggle<CR>
    nnoremap <silent> <leader>t :NERDTreeFocus<CR>

" Smooth scroll
    noremap <silent> <c-g> :call smooth_scroll#up(&scroll, 10, 4)<CR>
    noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 10, 4)<CR>

" DelimitMate
    imap <C-c> <CR><Esc>O

" Easy Motion
    nmap s <Plug>(easymotion-s2)

    map  / <Plug>(easymotion-sn)
    omap / <Plug>(easymotion-tn)

    map  n <Plug>(easymotion-next)
    map  N <Plug>(easymotion-prev)

    map <Leader>l <Plug>(easymotion-lineforward)
    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)
    map <Leader>h <Plug>(easymotion-linebackward)


