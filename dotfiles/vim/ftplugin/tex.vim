nmap <buffer> <localleader>p :!pdflatex -interaction=nonstopmode %:r<cr>
nmap <buffer> <localleader>b :!bibtex %:r<cr>
nmap <buffer> <localleader>d :!latex -interaction=nonstopmode %:r<cr>
nmap <buffer> <localleader>e :!evince %:r.pdf &<cr><cr>
