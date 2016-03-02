let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1 

syntax on
set ruler
set showcmd
set showmode
set autoindent
" Show the match ( { [
set showmatch
" Highlight the searching pattern.
set hlsearch
set tabstop=8
set nu
set guifont=Menlo:h16
set tag=./tags,tags
" No wrap search, stop seaching at the end of file.
"set nowrapscan

"###################
" map.
"##################
map \p i(<Esc>Ea)<Esc>
map \c i{<Esc>ea}<Esc>
map \[ i[<Esc>ea]<Esc>
map \t :Tlist<Enter>
map \v :vnew 
map \n :set nu<Enter>
map \m :set nonu<Enter>
map \/ i/**/<Esc>
map \q :q<Enter>
map qq :q<Enter>
