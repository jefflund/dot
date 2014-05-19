set noexpandtab softtabstop=0

nnoremap <buffer> <localleader>r :!go run %<cr>
nnoremap <buffer> <localleader>m :!go run main.go<cr>
nnoremap <buffer> <localleader>i :GoInstall %<cr>
nnoremap <buffer> <localleader>I :GoInstall<cr>
nnoremap <buffer> <localleader>t :GoTest<cr>

autocmd BufWritePre <buffer> Fmt
