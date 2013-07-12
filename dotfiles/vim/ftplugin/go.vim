set noexpandtab softtabstop=0

nmap <buffer> <localleader>r :!go run %<cr>

autocmd BufWritePre <buffer> Fmt
