set noexpandtab softtabstop=0

nmap <buffer> <localleader>r :!go run %<cr>
nmap <buffer> <localleader>I :!go install<cr>

autocmd BufWritePre <buffer> Fmt
