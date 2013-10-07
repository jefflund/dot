set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="yendor"

highlight Normal         guifg=#DADADA ctermfg=253  guibg=#1C1C1C ctermbg=234
highlight Comment        guifg=#8A8A8A ctermfg=245                             gui=NONE      cterm=NONE
highlight Constant       guifg=#87D7D7 ctermfg=116                             gui=NONE      cterm=NONE
highlight String         guifg=#AFD787 ctermfg=150                             gui=NONE      cterm=NONE
highlight Character      guifg=#AFD787 ctermfg=150                             gui=NONE      cterm=NONE
highlight Number         guifg=#87D7D7 ctermfg=116                             gui=NONE      cterm=NONE
highlight Boolean        guifg=#87D7D7 ctermfg=116                             gui=NONE      cterm=NONE
highlight Float          guifg=#87D7D7 ctermfg=116                             gui=NONE      cterm=NONE
highlight Identifier     guifg=#FFAF87 ctermfg=216                             gui=NONE      cterm=NONE
highlight Function       guifg=#FFAF87 ctermfg=216                             gui=NONE      cterm=NONE
highlight Statement      guifg=#87AFD7 ctermfg=110                             gui=NONE      cterm=NONE
highlight Conditional    guifg=#87AFD7 ctermfg=110                             gui=NONE      cterm=NONE
highlight Exception      guifg=#87AFD7 ctermfg=110                             gui=NONE      cterm=NONE
highlight Repeat         guifg=#87AFD7 ctermfg=110                             gui=NONE      cterm=NONE
highlight Label          guifg=#87AFD7 ctermfg=110                             gui=NONE      cterm=NONE
highlight Operator       guifg=#87AFD7 ctermfg=110                             gui=NONE      cterm=NONE
highlight Keyword        guifg=#87AFD7 ctermfg=110                             gui=NONE      cterm=NONE
highlight PreProc        guifg=#FFD7AF ctermfg=223                             gui=NONE      cterm=NONE
highlight Include        guifg=#FFD7AF ctermfg=223                             gui=NONE      cterm=NONE
highlight Define         guifg=#FFD7AF ctermfg=223                             gui=NONE      cterm=NONE
highlight Macro          guifg=#FFD7AF ctermfg=223                             gui=NONE      cterm=NONE
highlight PreCondit      guifg=#FFD7AF ctermfg=223                             gui=NONE      cterm=NONE
highlight Type           guifg=#87D7AF ctermfg=115                             gui=NONE      cterm=NONE
highlight StorageClass   guifg=#87D7AF ctermfg=115                             gui=NONE      cterm=NONE
highlight Structure      guifg=#87D7AF ctermfg=115                             gui=NONE      cterm=NONE
highlight Typedef        guifg=#87D7AF ctermfg=115                             gui=NONE      cterm=NONE
highlight Special        guifg=#D7AFAF ctermfg=181                             gui=NONE      cterm=NONE
highlight SpecialChar    guifg=#D7AFAF ctermfg=181                             gui=NONE      cterm=NONE
highlight Tag            guifg=#D7AFAF ctermfg=181                             gui=NONE      cterm=NONE
highlight Delimiter      guifg=#D7AFAF ctermfg=181                             gui=NONE      cterm=NONE
highlight SpecialComment guifg=#D7AFAF ctermfg=181                             gui=NONE      cterm=NONE
highlight Debug          guifg=#D7AFAF ctermfg=181  guibg=NONE    ctermbg=NONE gui=NONE      cterm=NONE
highlight Underlined     guifg=fg      ctermfg=fg                              gui=underline cterm=underline
highlight Ignore         guifg=bg      ctermfg=bg
highlight Error          guifg=#D75F5F ctermfg=167  guibg=#5F0000 ctermbg=52   gui=NONE      cterm=NONE
highlight Todo           guifg=#FFFFAF ctermfg=229  guibg=NONE    ctermbg=NONE gui=underline cterm=underline
highlight SpellBad                                  guibg=#FF55FF ctermbg=9    gui=undercurl cterm=undercurl
highlight SpellCap                                  guibg=#5555FF ctermbg=12   gui=undercurl cterm=undercurl
highlight SpellRare                                 guibg=#FF55FF ctermbg=13   gui=undercurl cterm=undercurl
highlight SpellLocal                                guibg=#55FFFF ctermbg=14   gui=undercurl cterm=undercurl
highlight Cursor         guifg=bg      ctermfg=bg   guibg=#AFD7FF ctermbg=153
highlight CursorIM       guifg=bg      ctermfg=bg   guibg=#87D7D7 ctermbg=116
highlight CursorColumn   guifg=NONE    ctermfg=NONE guibg=#121212 ctermbg=233  gui=NONE      cterm=NONE
highlight CursorLine     guifg=NONE    ctermfg=NONE guibg=#121212 ctermbg=233  gui=NONE      cterm=NONE
highlight ColorColumn                               guibg=#121212 ctermbg=233
highlight Directory      guifg=#AFD7AF ctermfg=151                             gui=NONE      cterm=NONE
highlight ErrorMsg       guifg=#FF0000 ctermfg=196  guibg=NONE    ctermbg=NONE gui=NONE      cterm=NONE
highlight VertSplit      guifg=#6C6C6C ctermfg=242  guibg=#121212 ctermbg=233  gui=NONE      cterm=NONE
highlight SignColumn     guifg=#AFAFAF ctermfg=145  guibg=#121212 ctermbg=233  gui=NONE      cterm=NONE
highlight LineNr         guifg=#878787 ctermfg=102  guibg=#3A3A3A ctermbg=237
highlight MatchParen     guifg=#5FD75F ctermfg=77   guibg=NONE    ctermbg=NONE gui=NONE      cterm=NONE
highlight MoreMsg        guifg=#00875F ctermfg=29                              gui=NONE      cterm=NONE
highlight ModeMsg        guifg=#87D7FF ctermfg=117  guibg=NONE    ctermbg=NONE gui=NONE      cterm=NONE
highlight NonText        guifg=#4E4E4E ctermfg=239                             gui=NONE      cterm=NONE
highlight Question       guifg=fg      ctermfg=fg                              gui=NONE      cterm=NONE
highlight SpecialKey     guifg=#4E4E4E ctermfg=239
highlight Title          guifg=#5FAFD7 ctermfg=74                              gui=NONE      cterm=NONE
highlight WarningMsg     guifg=#D7875F ctermfg=173                             gui=NONE      cterm=NONE
highlight WildMenu       guifg=#000000 ctermfg=16   guibg=#D7D787 ctermbg=186  gui=bold      cterm=bold
highlight DiffAdd        guifg=#87AF87 ctermfg=108  guibg=#005F00 ctermbg=22   gui=NONE      cterm=NONE
highlight DiffChange     guifg=fg      ctermfg=fg   guibg=#5F0000 ctermbg=52   gui=NONE      cterm=NONE
highlight DiffDelete     guifg=#5F5F5F ctermfg=59   guibg=#5F5F00 ctermbg=58   gui=NONE      cterm=NONE
highlight DiffText       guifg=#FF5F5F ctermfg=203  guibg=#5F0000 ctermbg=52   gui=bold      cterm=bold
highlight Folded         guifg=#87D7FF ctermfg=117  guibg=#444444 ctermbg=238  gui=NONE      cterm=NONE
highlight FoldColumn     guifg=#87D7FF ctermfg=117  guibg=#444444 ctermbg=238  gui=NONE      cterm=NONE
highlight IncSearch      guifg=#5FFFFF ctermfg=87                              gui=reverse   cterm=reverse
highlight Search                                    guibg=#5FD7FF ctermbg=81   gui=NONE      cterm=NONE
highlight Pmenu          guifg=#DADADA ctermfg=253  guibg=#121212 ctermbg=233  gui=NONE      cterm=NONE
highlight PmenuSel       guifg=#D7D787 ctermfg=186  guibg=#3A3A3A ctermbg=237  gui=NONE      cterm=NONE
highlight PMenuSbar                                 guibg=#5F5F5F ctermbg=59   gui=NONE      cterm=NONE
highlight PMenuThumb                                guibg=#878787 ctermbg=102  gui=NONE      cterm=NONE
highlight StatusLine     guifg=#E4E4E4 ctermfg=254  guibg=#3A3A3A ctermbg=237  gui=bold      cterm=bold
highlight StatusLineNC   guifg=#808080 ctermfg=244  guibg=#3A3A3A ctermbg=237  gui=NONE      cterm=NONE
highlight TabLine        guifg=#808080 ctermfg=244  guibg=#303030 ctermbg=236  gui=NONE      cterm=NONE
highlight TabLineFill    guifg=#D7D7AF ctermfg=187  guibg=#303030 ctermbg=236  gui=NONE      cterm=NONE
highlight TabLineSel     guifg=#E4E4E4 ctermfg=254  guibg=#303030 ctermbg=236  gui=bold      cterm=bold
highlight Visual         guifg=NONE    ctermfg=NONE guibg=#005F87 ctermbg=24
highlight VisualNOS      guifg=fg      ctermfg=fg                              gui=underline cterm=underline
