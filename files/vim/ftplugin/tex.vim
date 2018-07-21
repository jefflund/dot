setlocal spell

nnoremap <buffer> <localleader>m :!make -f ~/.latex-makefile %:r<cr>
nnoremap <buffer> <localleader>c :!make -f ~/.latex-makefile clean<cr>
nnoremap <buffer> <localleader>d :!make -f ~/.latex-makefile document<cr>
nnoremap <buffer> <localleader>e :!evince %:r.pdf > /dev/null 2>&1 &<cr><cr>
nnoremap <buffer> <localleader>p :!pdflatex %:r<cr>
