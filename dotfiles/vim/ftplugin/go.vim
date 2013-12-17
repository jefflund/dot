set noexpandtab softtabstop=0

nmap <buffer> <localleader>r :!go run %<cr>
nmap <buffer> <localleader>m :!go run main.go<cr>
nmap <buffer> <localleader>i :GoCurInstall<cr>
nmap <buffer> <localleader>t :GoCurTest<cr>

autocmd BufWritePre <buffer> Fmt
