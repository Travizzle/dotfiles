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

set shell=/usr/bin/bash

" Copy yank buffer to system clipboard
" Use OSC52 to put things into the system clipboard, works over SSH!
" function! Osc52Yank()
"   let buffer=system('base64 -wO' , @O) " -wO to disable 76 char line wrapping
"   let buffer='\ePtmux;\e\e]52;c;'.buffer.'\xO7\e\\'
"   silent exe "!echo -ne ".shellescape(buffer)." > ".shellescape(g:tty)
" endfunction
"
" nnoremap <leader>y :call Osc52Yank()<CR>

" Undo history
set undodir=~/.vim/undodir
set undofile

" -----------------------------
" Jekyll-friendly 80-column enforcement
" -----------------------------

" --- Python and other code files ---
" Enforce hard 80-column line limit
autocmd FileType python,ruby,c,cpp,java,html,css,javascript setlocal textwidth=80

" Autobreak lines at 80 characters if textwidth is set
autocmd FileType python,ruby,c,cpp,java,html,css,javascript setlocal formatoptions+=t

" Optional: show a visual guideline at column 81
autocmd FileType python,ruby,c,cpp,java,html,css,javascript setlocal colorcolumn=81

" --- Markdown files ---
" Wrap at 100 characters, soft wrap only (avoid breaking links)
autocmd FileType markdown setlocal textwidth=0 wrap linebreak
" Optional: highlight 80-character guideline
autocmd FileType markdown setlocal colorcolumn=81

" --- YAML files (front matter) ---
" Soft wrap only, do not insert hard line breaks
autocmd FileType yaml setlocal wrap linebreak textwidth=0

" --- Safety: do not auto-wrap unknown/system file ---
" For any other filetype, do not set textwidth
autocmd BufRead,BufNewFile * if &filetype == '' | setlocal textwidth=0 | endif

" --- Optional: helper mapping for Markdown reference links ---
" Automatically insert a reference-style link template
" Usage: type <Leader>rl in insert mode to start a reference link
" Default Leader key is '\'
inoremap <Leader>rl [][]<Esc>F[a

" Shortcut to apply Jekyll-friendly column enforcement to entire file
nnoremap <Leader>gf ggVGgq
