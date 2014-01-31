nnoremap <buffer> <localleader>r :!PYTHONPATH=. python %<cr>
nnoremap <buffer> <localleader>i :!PYTHONPATH=. ipython -i %<cr><cr>
nnoremap <buffer> <localleader>u :!PYTHONPATH=. python -m unittest discover -v<cr>
nnoremap <buffer> <localleader>t :!PYTHONPATH=. python -m cProfile -s cumulative %<cr>

nnoremap <buffer> <localleader>R :!PYTHONPATH=. pypy %<cr>
nnoremap <buffer> <localleader>U :!PYTHONPATH=. pypy -m unittest discover -v<cr>
nnoremap <buffer> <localleader>T :!PYTHONPATH=. pypy -m cProfile -s cumulative %<cr>

nnoremap <buffer> <localleader>p :!pep8 %<cr>
nnoremap <buffer> <localleader>l :!pylint %<cr>
