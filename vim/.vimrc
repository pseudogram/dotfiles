" remap jj to <ESC>
inoremap jj <Esc>
" imap jj <Esc>


" nnoremap , @@

" In visual mode J moves current line down one, K up one
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv



" " Tab settings   -   https://superuser.com/a/782592
" " softtabstop, sts : when you're editing a file and press the tab key, Vim uses this setting to define the width of the inserted tabulation (see softtabstop help, or type :help softtabstop in Vim).
" set sts=2
" " tabstop, ts : when Vim encounters a tabulation in a file you're opening, it displays the tab as {ts} spaces (see tabstop help, or type :help tabstop in Vim).
" set ts=2
" " shiftwidth, sw : the number of spaces Vim uses when indenting, either using autoindent stuff or the usual >>, << commands. As Heptite noticed, this is what you were looking for in this particular case. And recent versions of Vim indeed allow you not to define this option, shiftwidth would then take the value defined by tabstop. Quite handy (see shiftwidth help).
" set sw=2
" " expand tabs to spaces
" set et
" set modifiable " Nerdtree add and delete
" set mouse=a " Use mouse to click
" set ignorecase " Ignore case when searching using /

