nnoremap <buffer> <localleader>p :!pdflatex -interaction=nonstopmode %:r<cr>
nnoremap <buffer> <localleader>b :!bibtex %:r<cr>
nnoremap <buffer> <localleader>d :!latex -interaction=nonstopmode %:r<cr>
nnoremap <buffer> <localleader>e :!evince %:r.pdf &<cr><cr>
