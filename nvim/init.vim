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

set number

let g:go_fmt_command = "goimports"

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

colorscheme citystreets
