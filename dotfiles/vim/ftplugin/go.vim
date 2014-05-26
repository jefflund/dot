setlocal noexpandtab softtabstop=0
setlocal textwidth=99

nnoremap <buffer> <localleader>r :!go run %<cr>
nnoremap <buffer> <localleader>m :!go run main.go<cr>
nnoremap <buffer> <localleader>i :GoInstall %<cr>
nnoremap <buffer> <localleader>t :!go test %<cr>

autocmd BufWritePre <buffer> Fmt
