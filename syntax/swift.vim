" Vim syntax file
" Language: Swift script
" Maintainer: Allan Espinosa
" Latest Revision: 2010 March 27
"
" Installation:
" Refer to the README.md corresponding to this syntax file.  It is also found in
" https://github.com/aespinosa/Swift-vim/blob/master/README.md
"

if exists("b:current_syntax")
  finish
endif

syn keyword	swiftAtomicType		type app global
syn keyword	swiftPrimitiveType	int float string boolean

syn keyword	swiftConstant		stdout stderr
syn region	swiftString		start=+L\="+ skip=+\\\\\|\\"+ end=+"+

syn keyword	swiftStatement		foreach if else in switch case default iterate until
syn keyword	swiftMapper		single_file_mapper simple_mapper concurrent_mapper filesys_mapper fixed_array_mapper array_mapper regexp_mapper csv_mapper ext

syn keyword	swiftProcedure		readData readdata2 trace writeData

syn cluster	swiftCommentGroup	contains=swiftTodo
syn region	swiftComment		start="/\*" end="\*/" contains=@swiftCommentGroup
syn region	swiftCommentL		start="//" skip="\\$" end="$" keepend contains=@swiftCommentGroup
syn keyword	swiftTodo		contained TODO FIXME XXX

syn keyword swiftImport		import
syn keyword swiftFunction	sprintf strcat arg extractInt extractFloat filename filenames length readData readStructured regexp strcut strjoin strsplit toInt toFloat toString trace tracef java writeData



hi def link swiftAtomicType	Type
hi def link swiftPrimitiveType	Type
hi def link swiftStatement	Statement
hi def link swiftString		String
hi def link swiftConstant	Constant
hi def link swiftMapper		Operator
hi def link swiftCommentL	swiftComment
hi def link swiftComment	Comment
hi def link swiftTodo		Todo
hi def link swiftFunction	Function
hi def link swiftProcedure	Function
hi def link swiftImport	Include

let b:current_syntax = "swift"
