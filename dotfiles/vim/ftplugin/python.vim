nmap <buffer> <localleader>r :!PYTHONPATH=. python %<cr>
nmap <buffer> <localleader>i :!PYTHONPATH=. ipython -i %<cr><cr>
nmap <buffer> <localleader>u :!PYTHONPATH=. python -m unittest discover -v<cr>
nmap <buffer> <localleader>t :!PYTHONPATH=. python -m cProfile -s cumulative %<cr>

nmap <buffer> <localleader>R :!PYTHONPATH=. pypy %<cr>
nmap <buffer> <localleader>I :!PYTHONPATH=. ipypy -i %<cr><cr>
nmap <buffer> <localleader>U :!PYTHONPATH=. pypy -m unittest discover -v<cr>
nmap <buffer> <localleader>T :!PYTHONPATH=. pypy -m cProfile -s cumulative %<cr>

nmap <buffer> <localleader>p :!pep8 %<cr>
nmap <buffer> <localleader>l :!pylint %<cr>
