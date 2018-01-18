packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('fatih/vim-go')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('andrewradev/splitjoin.vim')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('guns/xterm-color-table.vim')

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

colorscheme citystreets
set number

set laststatus=2
set statusline=
set statusline+=\ %.50f  " File name
set statusline+=\ %M     " Modified indicator
set statusline+=%=       " Switch to right side
set statusline+=%l\ %*   " Line number

set completeopt=menu
set inccommand=nosplit


let mapleader = ","
let maplocalleader = "\\"

" Uppercase last word
inoremap <leader><c-u> <esc>viwUEa
nnoremap <leader><c-u> viwUE

" Quote word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" Manage vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>N :setlocal number!<cr>

let g:quickfix_is_open = 0
function! QuickfixToggle()
	if g:quickfix_is_open
		cclose
		let g:quickfix_is_open = 0
		execute g:quickfix_return_to_window . "wincmd w"
	else
		let g:quickfix_return_to_window = winnr()
		copen
		let g:quickfix_is_open = 1
	endif
endfunction

nnoremap <leader>q :call QuickfixToggle()<cr>

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>


map <c-n> :cnext<cr>
map <c-m> :cprevious<cr>
nnoremap <leader>a :cclose<cr>


" Go
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_fmt_fail_silently = 1

augroup go
	autocmd!
	autocmd FileType go nmap <leader>b :<c-u>call <SID>build_go_files()<cr>
	autocmd FileType go nmap <leader>t <Plug>(go-test)
	autocmd FileType go nmap <leader>f <Plug>(go-test-func)
	autocmd FileType go nmap <leader>r <Plug>(go-run)
	autocmd FileType go nmap <leader>i <Plug>(go-info)
	autocmd FileType go nmap <leader>l <Plug>(go-metalinter)
	autocmd FileType go nmap <leader>v <Plug>(go-def-vertical)
	autocmd FileType go nmap <leader>s <Plug>(go-def-split)
	autocmd FileType go nmap <leader>g :GoDeclsDir<cr>
	autocmd FileType go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
	autocmd FileType go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
	autocmd FileType go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
augroup end

function! s:build_go_files()
	let l:file = expand('%')
	if l:file =~# '%\f\+_test\.go$'
		call go#test#Test(0, 1)
	elseif l:file =~# '^\f\+\.go$'
		call go#cmd#Build(0)
	endif
endfunction
