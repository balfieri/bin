autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
set ai sw=4 tabstop=8 background=dark nohlsearch formatoptions+=t textwidth=0 belloff=all
if bufname("%") != "Makefile" && bufname("%") != "Makeppfile"
    set expandtab
endif
if bufname("%") == "make.out" || bufname("%") == "TODO.txt"
    set noai
endif
:syntax on
