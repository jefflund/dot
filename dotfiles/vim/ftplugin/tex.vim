setlocal spell

nnoremap <buffer> <localleader>cp :!make -f ~/config/docs/latex-makefile clean && make -f ~/config/docs/latex-makefile %:r<cr>
nnoremap <buffer> <localleader>pc :!make -f ~/config/docs/latex-makefile clean && make -f ~/config/docs/latex-makefile %:r<cr>
nnoremap <buffer> <localleader>dp :!make -f ~/config/docs/latex-makefile clean && make -f ~/config/docs/latex-makefile document<cr>
nnoremap <buffer> <localleader>pd :!make -f ~/config/docs/latex-makefile clean && make -f ~/config/docs/latex-makefile document<cr>
nnoremap <buffer> <localleader>pp :!make -f ~/config/docs/latex-makefile clean && make -f ~/config/docs/latex-makefile present<cr>

nnoremap <buffer> <localleader>ce :!evince %:r.pdf &<cr><cr>
nnoremap <buffer> <localleader>ec :!evince %:r.pdf &<cr><cr>
nnoremap <buffer> <localleader>de :!evince document.pdf &<cr><cr>
nnoremap <buffer> <localleader>ed :!evince document.pdf &<cr><cr>
nnoremap <buffer> <localleader>pe :!evince present.pdf &<cr><cr>
nnoremap <buffer> <localleader>ep :!evince present.pdf &<cr><cr>
