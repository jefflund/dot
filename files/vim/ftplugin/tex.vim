setlocal spell

nnoremap <buffer> <localleader>m :!make -f ~/.latex-makefile %:r<cr><cr>
nnoremap <buffer> <localleader>c :!make -f ~/.latex-makefile clean<cr><cr>
nnoremap <buffer> <localleader>e :!evince %:r.pdf &<cr><cr>
nnoremap <buffer> <localleader>p :!pdflatex %:r<cr><cr>
