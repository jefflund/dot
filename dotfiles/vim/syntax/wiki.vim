"if exists('b:current_syntax')
    "finish
"endif

syntax match BulletPoint /^\s*\*\ /
syntax match MinusPoint /^\s*-\ /
syntax match EqualPoint /^\s*=\ /
syntax match PlusPoint /^\s*+\ /
syntax match Checkbox /^\s*\[\ \?\]\ /
syntax match Checkedbox /^\s*\[x\]\ /
syntax match WikiLink /\[\[\p\+\]\]/
syntax match Heading1 /^=[^=]\+=$/
syntax match Heading2 /^==[^=]\+==$/
syntax match Heading3 /^===[^=]\+===$/

highlight link BulletPoint SpecialChar
highlight link MinusPoint ErrorMsg
highlight link EqualPoint SpecialChar
highlight link PlusPoint Character
highlight link Checkbox SpecialChar
highlight link Checkedbox SpecialChar
highlight link WikiLink Underlined
highlight link Heading1 Underlined
highlight link Heading2 Title
highlight link Heading3 Title

let b:current_syntax = 'wiki'
