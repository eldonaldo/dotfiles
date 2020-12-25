set nocompatible
filetype off

syntax on

" Display line numbers
"set number

" Highligh search results
set hlsearch

" In normal mode F12 will save the file
nmap <F12> :w<CR>

" In insert mode F12 will exit insert, save, enter insert again
imap <F12> <ESC>:w<CR>a

" Use indentation of previous line
set autoindent

" Use intelligent indentation
set smartindent

" Disable vi compatibility (emulation of old bugs)
set nocompatible

" color scheme
"colorscheme desert

" Enable mouse scrolling in iTerm 2
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" Enable colorful terminal
set term=screen-256color
set t_BE=
