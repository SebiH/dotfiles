call plug#begin('~/.nvim/plugged')

Plug 'terryma/vim-smooth-scroll'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFocus', 'NERDTreeClose'] }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'https://github.com/etaoins/vim-volt-syntax'
Plug 'vim-scripts/a.vim'
Plug 'marijnh/tern_for_vim'
Plug 'othree/html5.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'kshenoy/vim-signature'
Plug 'nanotech/jellybeans.vim'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'joonty/vdebug', { 'for': 'php' }
Plug 'taglist.vim', { 'on': ['TlistToggle', 'TlistOpen', 'TlistClose'] }

Plug 'vim-scripts/AutomaticLaTexPlugin', { 'for': 'tex' }
Plug 'vim-latex/vim-latex'

call plug#end()

