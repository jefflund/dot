nmap <buffer> <localleader>r :!python %<cr>
nmap <buffer> <localleader>i :!ipython -i %<cr><cr>
nmap <buffer> <localleader>u :!python -m unittest discover -v<cr>
nmap <buffer> <localleader>t :!python -m cProfile -s cumulative %<cr>

nmap <buffer> <localleader>R :!pypy %<cr>
nmap <buffer> <localleader>I :!ipypy -i %<cr><cr>
nmap <buffer> <localleader>U :!pypy -m unittest discover -v<cr>
nmap <buffer> <localleader>T :!pypy -m cProfile -s cumulative %<cr>

nmap <buffer> <localleader>p :!pep8 %<cr>
