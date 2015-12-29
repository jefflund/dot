nnoremap <buffer> <localleader>r :!PYTHONPATH=. python3 %<cr>
nnoremap <buffer> <localleader>i :!PYTHONPATH=. ipython3 -i %<cr><cr>
nnoremap <buffer> <localleader>u :!PYTHONPATH=. python3 -m unittest discover -v<cr>
nnoremap <buffer> <localleader>t :!PYTHONPATH=. python3 -m cProfile -s cumulative %<cr>

nnoremap <buffer> <localleader>R :!PYTHONPATH=. pypy3 %<cr>
nnoremap <buffer> <localleader>U :!PYTHONPATH=. pypy3 -m unittest discover -v<cr>
nnoremap <buffer> <localleader>T :!PYTHONPATH=. pypy3 -m cProfile -s cumulative %<cr>
