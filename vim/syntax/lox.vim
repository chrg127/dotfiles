" Vim syntax file
" Language:     Lox

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn keyword loxKeyword
    \ break class else false fun for if lambda nil
    \ print return super this true var while

syn match loxOperator "\(<<\|>>\|[-+*/%&^|<>!=]\)="
syn match loxOperator "[.!~*&%<>^|=,+-]"
syn match loxOperator "/[^/*=]"me=e-1
syn match loxOperator "/$"
syn keyword loxOperator and
syn keyword loxOperator or

syn match loxDelimiter "[();\\]"
syn match loxBraces display "[{}]"

syn keyword loxSpecialValue nil

syn match loxNumber '\d\+'
syn match loxNumber '\d\+\.\d*'
syn match loxNumber '-\d\+'
syn match loxNumber '-\d\+\.\d*'

syn region loxString start='"' end='"'

syn keyword loxTodo TODO XXX FIXME NOTE BUG

syn match loxComment "//.*$" contains=loxTodo
syn region loxComment start="/\*" end="\*/" fold extend contains=loxTodo

syn region loxBlock start="{" end="}" transparent fold

syn match loxFunction "\<\h\w*\>\(\s\|\n\)*("me=e-1

hi def link loxKeyword          Keyword
hi def link loxSpecialValue     Constant
hi def link loxString           String
hi def link loxNumber           Number
hi def link loxComment          Comment
hi def link loxTodo             Todo
hi def link loxFunction         Function
hi def link loxOperator         Operator
hi def link loxDelimiter        Delimiter
hi def link loxBraces           Delimiter

let b:current_syntax = "lox"

let &cpo = s:cpo_save
unlet s:cpo_save
