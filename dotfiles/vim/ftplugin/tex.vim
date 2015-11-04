setlocal spell
setlocal noautoindent

nnoremap <buffer> <localleader>dp :!make document<cr>
nnoremap <buffer> <localleader>pd :!make document<cr>
nnoremap <buffer> <localleader>de :!evince document.pdf &<cr><cr>
nnoremap <buffer> <localleader>ed :!evince document.pdf &<cr><cr>
nnoremap <buffer> <localleader>pp :!make present<cr>
nnoremap <buffer> <localleader>pe :!evince present.pdf &<cr><cr>
nnoremap <buffer> <localleader>ep :!evince present.pdf &<cr><cr>
