" Vim syntax file
" Language: Swift script
" Maintainer: Allan Espinosa
" Latest Revision: 2010 March 27
"
" Installation:
" 1. get swift.vim from http://www.ci.uchicago.edu/~aespinosa/swift/swift.vim
" 2. place swift.vim in your ~/.vim/syntax directory
" 3. add the following lines to your ~/.vim/filetype.vim :
" " Swift script
" au BufRead,BufNewFile *.swift setfiletype swift

if exists("b:current_syntax")
  finish
endif

syn keyword	swiftAtomicType		type app global
syn keyword	swiftPrimitiveType	int float string

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
