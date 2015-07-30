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

