function! CommentLine()
	execute "normal! 0i// \<esc>"
endfunction

function! UncommentLine()
	call setline('.', substitute(getline('.'), "\s*\/\/ ", "", ""))
endfunction

function! ToggleLineComment()
	let line = getline('.')
	if match(line, "^\\s*$") != -1
		return
	endif

	let len = strlen(line)
	let pos = getpos('.')

	if match(line, '\s*\/\/') >=# 0
		call UncommentLine()
	else
		call CommentLine()
	endif

	let pos[2] = pos[2] + (strlen(getline('.')) - len)
	call setpos('.', pos)
endfunction

nnoremap <leader>c :call ToggleLineComment()<cr>
vnoremap <leader>c :call ToggleLineComment()<cr>
