"========================================================
" Highlight All Function
"========================================================
syntax match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syntax match cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunction cterm=NONE	ctermfg=blue
