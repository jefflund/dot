set noexpandtab softtabstop=0

nnoremap <buffer> <localleader>r :!go run %<cr>
nnoremap <buffer> <localleader>m :!go run main.go<cr>
nnoremap <buffer> <localleader>i :GoCurInstall<cr>
nnoremap <buffer> <localleader>t :GoCurTest<cr>

autocmd BufWritePre <buffer> Fmt
