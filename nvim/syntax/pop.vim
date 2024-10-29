" Vim syntax file for Popurri
" Lang: Pop

" Usage
" TODO: make usage

if exists("b:current_symtax")
    finish
endif

syntax keyword popTodos TODO XXX FIXME NOTE WARN

" Keywords
syntax keyword popKeywords if else while for const static assert in let class struct interface

" Comments
syntax region popCommentLine start="//" end="$" contains=popTodos

syntax region popCommentReg start="/\*" end="\*/" contains=popTodos

" String Literals
syntax region popString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=popEscapes

" Char Literals
syntax region popChar start=/\v'/ skip=/\v\\./ end=/\v'/ contains=popEscapes

" Escape literals
syntax match popEscapes display contained "\\[nrt\"']"

syntax match popNumber /\<\d\+\>/

syntax keyword popTypeNames int bool char string void

highlight default link popTodos Todo
highlight default link popKeywords Keyword
highlight default link popCommentLine Comment
highlight default link popCommentReg Comment
highlight default link popString String
highlight default link popChar Character
highlight default link popEscapes SpecialChar
highlight default link popNumber Number
highlight default link popTypeNames type

let b:current_syntax = "pop"
