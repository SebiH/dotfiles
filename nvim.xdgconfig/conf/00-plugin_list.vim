call plug#begin('~/.config/nvim_plugged/')

"
"   General
"

" Theme
Plug 'nanotech/jellybeans.vim'

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
Plug 'Shougo/denite.nvim'

" Async keyword completion
Plug 'Shougo/deoplete.nvim'

" Multiple cursors like in sublime text
Plug 'terryma/vim-multiple-cursors'



"
"   Code
"

" (PHP) Debugger
Plug 'joonty/vdebug', { 'for': 'php' }

" Toggle comments via <leader>cc etc
Plug 'scrooloose/nerdcommenter'

" Async compilation for neovim
Plug 'benekastah/neomake'

" Better HTML5 support
Plug 'othree/html5.vim', { 'for': 'html' }

" Volt syntax for PhalconPHP
Plug 'https://github.com/etaoins/vim-volt-syntax'

" Better JS support
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" JS autocomplete and more
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }

" Switch between header & source file
Plug 'vim-scripts/a.vim', { 'for': ['c', 'cpp'] }

" Sidebar for ctags generated tags
Plug 'majutsushi/tagbar'



"
"   Text writing
"

" Hide everything but text
Plug 'junegunn/goyo.vim', { 'for': ['plaintex', 'text', 'markdown'] }

" Fade out non-active paragraphs
Plug 'junegunn/limelight.vim', { 'for': ['plaintex', 'text', 'markdown'] }

" Cycle through different text-specific characters (-.'")
Plug 'vim-scripts/UniCycle', { 'for': ['plaintex', 'text', 'markdown'] }

" Better support for typographic quotes
Plug 'reedes/vim-textobj-quote', { 'for': ['plaintex', 'text', 'markdown'] }

" Offer synonyms
"Plug 'ron89/thesaurus_query.vim', { 'for': ['plaintex', 'text', 'markdown'] }

" Spellchecking
Plug 'rhysd/vim-grammarous', { 'for': ['plaintex', 'text', 'markdown'] }

" Spellchecking 2
Plug 'dpelle/vim-LanguageTool', { 'for': ['plaintex', 'text', 'markdown'] }

call plug#end()

