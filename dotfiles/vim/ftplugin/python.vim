nnoremap <buffer> <localleader>r :!PYTHONPATH=. python3 %<cr>
nnoremap <buffer> <localleader>i :!PYTHONPATH=. ipython3 -i %<cr><cr>
nnoremap <buffer> <localleader>u :!PYTHONPATH=. python3 -m unittest discover -v<cr>
nnoremap <buffer> <localleader>p :!PYTHONPATH=. python3 -m cProfile -s cumulative %<cr>
nnoremap <buffer> <localleader>t :!PYTHONPATH=. python3 -m pytest<cr>
nnoremap <buffer> <localleader>C :!PYTHONPATH=. python3 -m pytest --cov=. --cov-report=html<cr>
