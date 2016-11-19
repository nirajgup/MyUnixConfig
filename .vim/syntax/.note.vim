" Vim syntax file
" Language:         note

if exists("b:current_syntax")
    finish
endif

set syntax=markdown
"Define colors
"hi def blocked_color ctermfg=white guifg=white ctermbg=red guibg=red
hi def blocked_color ctermfg=red guifg=red
"hi def td_color ctermfg=brown guifg=brown
"hi def todo_color ctermfg=blue guifg=blue
hi def done_color ctermfg=darkgreen guifg=darkgreen
hi def td_color ctermfg=gray guifg=gray

"syn match LogF 'F/.*' 
syn match td '/* .*' 
syn match done '/* .* DONE' 
syn match blocked '/* .* BLOCKED' 
"syn match LogI 'I .*' 
"syn match LogV 'V/.*' 

hi def link td td_color
hi def link blocked blocked_color
hi def link done done_color
