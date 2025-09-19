" Vim syntax file for GNU Recfiles - Ultra simple version

if exists("b:current_syntax")
  finish
endif

" Comments
syn match recComment "^#.*$"

" Everything on a field line
syn match recLine "^[a-zA-Z]\w*:.*$" contains=recFieldName
syn match recSpecialLine "^%\w\+:.*$" contains=recSpecialField

" Extract just the field names
syn match recFieldName "^[a-zA-Z]\w*:" contained
syn match recSpecialField "^%\w\+:" contained

" Multi-line values
syn match recMultiLine "^+\s.*$"

" Colors
hi def link recComment Comment
hi def link recLine Normal
hi def link recSpecialLine String
hi def link recFieldName Identifier
hi def link recSpecialField Keyword
hi def link recMultiLine Normal

let b:current_syntax = "recfiles"
