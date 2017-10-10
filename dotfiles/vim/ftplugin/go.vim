setlocal noexpandtab softtabstop=0
setlocal formatoptions-=t

nnoremap <buffer> <localleader>r :GoRun<cr>
nnoremap <buffer> <localleader>R :GoRun main.go<cr>
nnoremap <buffer> <localleader>i :GoInstall<cr>
nnoremap <buffer> <localleader>t :GoTest<cr>
nnoremap <buffer> <localleader>T :GoTest ./...<cr>
nnoremap <buffer> <localleader>b :GoBuild<cr>
nnoremap <buffer> <localleader>v :GoVet<cr>
nnoremap <buffer> <localleader>l :GoLint<cr>
nnoremap <buffer> <localleader>d :GoDef<cr>

nnoremap <buffer> <localleader>C :GoRun -race %<cr>
