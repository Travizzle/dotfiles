colorscheme default "Pretty colors

set bg=dark "Dark background

syntax on "Enable syntax highlighting

filetype on "Detect file extension

set shiftwidth=4 "Indenting is 4 spaces not 8 (should be same as softtabstop for consistency)

set path=**

set softtabstop=4 "Number of spaces inserted when inputting tab

set expandtab "Don't use actual tab character (use space character instead)

set relativenumber "Relative line numbers

set noswapfile "No swap files

set hidden "Allow switching buffers without writing to disk

"set wildignore

let g:netrw_banner=0 "No header spam in directory mode

let g:netrw_liststyle=3 "Tree style

:set shell=/usr/bin/bash

" Copy yank buffer to system clipboard
" Use OSC52 to put things into the system clipboard, works over SSH!
" function! Osc52Yank()
"   let buffer=system('base64 -wO' , @O) " -wO to disable 76 char line wrapping
"   let buffer='\ePtmux;\e\e]52;c;'.buffer.'\xO7\e\\'
"   silent exe "!echo -ne ".shellescape(buffer)." > ".shellescape(g:tty)
" endfunction
"
" nnoremap <leader>y :call Osc52Yank()<CR>

