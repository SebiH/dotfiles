call plug#begin('~/.config/nvim_plugged/')

"
"   General
"

" Theme
Plug 'arcticicestudio/nord-vim'

" Smooth ctrl-j scrolling
Plug 'terryma/vim-smooth-scroll'

" Better file navigation sidebar
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFocus', 'NERDTreeClose'] }

" Manage surrounding brackets
Plug 'tpope/vim-surround'

" Extended repeat (.) support for additional commands
Plug 'tpope/vim-repeat'

" Git support
Plug 'tpope/vim-fugitive'

" Extended bracket commands, e.g. ]e [e
Plug 'tpope/vim-unimpaired'

" Status line
Plug 'bling/vim-airline'

" Display vim marks
Plug 'kshenoy/vim-signature'

" Display indentation lines
Plug 'Yggdroot/indentLine'

" Autoclose brackets/quotes etc
Plug 'Raimondi/delimitMate'

" Text alignment via :Tab /<sign>
Plug 'godlygeek/tabular'

" Easier tmux window navigation
Plug 'christoomey/vim-tmux-navigator'

" Search & display info from arbitrary sources, via :Unite
" Plug 'Shougo/denite.nvim'

" Async keyword completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Multiple cursors like in sublime text
Plug 'terryma/vim-multiple-cursors'

" Fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" Toggle comments via <leader>cc etc
Plug 'scrooloose/nerdcommenter'


"
"   Text writing
"

function! SetupThesaurus(info)
    if a:info.status == 'installed' || a:info.force
        !wget https://www.gutenberg.org/files/3202/files/mthesaur.txt
    endif
endfunction

" Hide everything but text
" White theme
Plug 'chriskempson/base16-vim'

Plug 'junegunn/goyo.vim' ", { 'for': ['plaintex', 'tex', 'text', 'markdown'] }

" Fade out non-active paragraphs
Plug 'junegunn/limelight.vim' ", { 'for': ['plaintex', 'tex', 'text', 'markdown'] }

" Better support for typographic quotes
Plug 'reedes/vim-textobj-quote', { 'for': ['plaintex', 'tex', 'text', 'markdown'] }

" Uncover usage problems in writing
Plug 'reedes/vim-wordy', { 'for': ['plaintex', 'tex', 'text', 'markdown'] }

" Offer synonyms
Plug 'ron89/thesaurus_query.vim', { 'for': ['plaintex', 'tex', 'text', 'markdown'], 'do': function('SetupThesaurus') }

" Latex syntax, compiling etc
"Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for': ['plaintex', 'tex'] }
Plug 'lervag/vimtex', { 'for': ['plaintex', 'tex'] }

" Pandoc
"Plug 'vim-pandoc/vim-pandoc', { 'for': ['markdown'] }
"Plug 'vim-pandoc/vim-pandoc-syntax', { 'for': ['markdown'] }

call plug#end()

