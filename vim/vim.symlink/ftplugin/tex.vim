" pdflatex compiling
setlocal makeprg=pdflatex\ \-file\-line\-error\ \-interaction=nonstopmode\ $*\\\|\ grep\ \-E\ '\\w+:[0-9]{1,4}:\\\ ' 
setlocal errorformat=%f:%l:\ %m
" Autoselect compiler
au BufRead * try | execute "compiler ".&filetype | catch /./ | endtry
nnoremap <buffer> <F3> :w<CR>:make %<<CR>
nnoremap <buffer> <F4> :!evince %<.pdf &<CR>
nnoremap <silent> <F7> :cnext<CR> 
nnoremap <silent> <F8> :clist<CR> 
nnoremap <silent> <F10> \rr 
let b:tex_flavor = 'pdflatex'
" compiler tex
nnoremap <buffer> ,p :w<CR>:!pdflatex % &<CR> 
