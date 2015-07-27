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

