call plug#begin('~/.nvim/plugged')

Plug 'terryma/vim-smooth-scroll'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFocus', 'NERDTreeClose'] }
Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'https://github.com/etaoins/vim-volt-syntax'
Plug 'vim-scripts/a.vim'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'othree/html5.vim'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'kshenoy/vim-signature'
Plug 'nanotech/jellybeans.vim'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'joonty/vdebug', { 'for': 'php' }
Plug 'majutsushi/tagbar'
Plug 'Shougo/unite.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

