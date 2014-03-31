if exists('b:current_syntax')
    finish
endif

syntax match Heading1 /^=[^=]\+=$/
syntax match Heading2 /^==[^=]\+==$/
syntax match Heading3 /^===[^=]\+===$/
syntax match WikiLink /\[\[\p\+\]\]/
syntax match BulletPoint /^\s*\*\ /
syntax match MinusPoint /^\s*\-\ /
syntax match PlusPoint /^\s*+\ /
syntax match Checkbox /^\s*\[\]\ /
syntax match Checkedbox /^\s*\[x\]\ /

highlight default link Heading1 Underlined
highlight default link Heading2 Title
highlight default link Heading3 Title
highlight default link WikiLink Underlined
highlight link BulletPoint SpecialChar
highlight link MinusPoint ErrorMsg
highlight link PlusPoint Character
highlight link Checkbox SpecialChar
highlight link Checkedbox SpecialChar

let b:current_syntax = 'wiki'
