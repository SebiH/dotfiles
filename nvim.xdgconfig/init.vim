let g:tex_flavor = "latex"
filetype plugin on
" Load all config files
for f in split(glob('~/.config/nvim/conf/*.vim'), '\n')
    exe 'source' f
endfor

