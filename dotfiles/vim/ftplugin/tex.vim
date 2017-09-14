setlocal spell

nnoremap <buffer> <localleader>cp :!make -f ~/config/docs/latex-makefile %:r<cr>
nnoremap <buffer> <localleader>pc :!make -f ~/config/docs/latex-makefile %:r<cr>
nnoremap <buffer> <localleader>dp :!make -f ~/config/docs/latex-makefile document<cr>
nnoremap <buffer> <localleader>pd :!make -f ~/config/docs/latex-makefile document<cr>
nnoremap <buffer> <localleader>pp :!make -f ~/config/docs/latex-makefile present<cr>

nnoremap <buffer> <localleader>C :!make -f ~/config/docs/latex-makefile clean<cr>

nnoremap <buffer> <localleader>ce :!okular %:r.pdf &<cr><cr>
nnoremap <buffer> <localleader>ec :!okular %:r.pdf &<cr><cr>
nnoremap <buffer> <localleader>de :!okular document.pdf &<cr><cr>
nnoremap <buffer> <localleader>ed :!okular document.pdf &<cr><cr>
nnoremap <buffer> <localleader>pe :!okular present.pdf &<cr><cr>
nnoremap <buffer> <localleader>ep :!okular present.pdf &<cr><cr>
