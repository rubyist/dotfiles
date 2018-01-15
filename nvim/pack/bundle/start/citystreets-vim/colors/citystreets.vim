if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name = "citystreets"
let s:citystreets_vim_version="0.1.0"
set background=dark

let g:terminal_color_0 = "#201e24"
let g:terminal_color_1 = "#2d2b30"
let g:terminal_color_2 = "#3f3d40"
let g:terminal_color_3 = "#413c3e"
let g:terminal_color_4 = "#423e41"
let g:terminal_color_5 = "#4e4a4b"
let g:terminal_color_6 = "#6e6765"
let g:terminal_color_7 = "#837e81"
let g:terminal_color_8 = "#837c78"
let g:terminal_color_9 = "#89827d"
let g:terminal_color_10 = "#a7a099"
let g:terminal_color_11 = "#c2bec1"
let g:terminal_color_12 = "#c3bcb2"
let g:terminal_color_13 = "#cbc5ba"
let g:terminal_color_14 = "#e3ddd2"
let g:terminal_color_15 = "#efe8dc"

" Gutter
highlight LineNr ctermfg=8 ctermbg=NONE


" Language Base
highlight Comment     ctermfg=7  ctermbg=NONE
highlight Conditional ctermfg=12 ctermbg=NONE cterm=bold
highlight Number      ctermfg=9  ctermbg=NONE
highlight PreProc     ctermfg=14 ctermbg=NONE
highlight Statement   ctermfg=12 ctermbg=NONE cterm=bold
highlight String      ctermfg=10 ctermbg=NONE
highlight Type        ctermfg=3  ctermbg=NONE


" Vim
highlight vimFgBgAttrib ctermfg=NONE ctermbg=NONE
highlight vimOption     ctermfg=15   ctermbg=NONE cterm=bold

highlight link vimHiAttrib  vimFgBgAttrib
