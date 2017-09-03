" Open last known position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" nvim 0.2 command live feedback
:set inccommand=split


" Force Markdown syntax on md files
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Filetypes
    filetype on
    filetype plugin on
    filetype indent on
    syntax enable


" Indentation
    set tabstop=8
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set smarttab
    set autoindent
    set smartindent

" Don't update the display while executing macros
" -- Possibly outdated with neovim?
" set lazyredraw

" At least let yourself know what mode you're in
    set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
    set wildmenu
    set wildmode=list:longest,full

" Prevent additional files, for dropbox etc
    set directory=~/.vimswp,~/tmp,/var/tmp,/tmp
    set noswapfile
    set nobackup

" Status line
    set laststatus=2
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" Expand %% to directory of current buffer
    cabbr <expr> %% expand('%:p:h')

" searching
    set hlsearch " highlight searchterms
    set incsearch " incremental search
    set ignorecase
    set smartcase
    set gdefault " :%s/foo/bar/g == :%s/foo/bar/

" Other settings
    set noshowmatch " don't jump to matching brackets when typing in brackets
    set encoding=utf-8 " encoding
    set number " linenumbers
    set ruler " show where my cursor is
    set nohidden " remove buffer when tab is closed
    set showcmd " show command in status line
    set scrolloff=5 " keep 5 lines around cursor
    set wrap " softwrap long files
    set backspace=2

