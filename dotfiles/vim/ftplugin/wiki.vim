setlocal comments=b:*,b:+,b:-,b:=,b:[],b:[x],b:[\ ]
setlocal formatoptions+=cro

command! -buffer WikiEditLink call s:use_wiki_link(":edit")
command! -buffer WikiSplitLink call s:use_wiki_link(":split")
command! -buffer WikiVSplitLink call s:use_wiki_link(":vsplit")

nnoremap <buffer> <localleader>e :WikiEditLink<cr>
nnoremap <buffer> <localleader>s :WikiSplitLink<cr>
nnoremap <buffer> <localleader>v :WikiVSplitLink<cr>

if exists("g:wiki_loaded")
    finish
endif
let g:wiki_loaded = 1

function s:use_wiki_link(cmd)
    let l = line(".")
    let c = col(".")
    if synIDattr(synID(l, c, 1), "name") == "WikiLink"
        call cursor(l, c+2)
        call search("\[\[", "bc")
        let start = col(".") + 1

        call cursor(l, c-2)
        call search("\]\]", "c")
        let end = col(".") - 3

        let link = strpart(getline("."), start, end)
        let link = substitute(link, "^\\s\\+", "", "")
        let link = substitute(link, "\\s\\+$", "", "")

        call cursor(l, c)
        execute a:cmd . " " .  link . ".wiki"
    endif
endfunction
