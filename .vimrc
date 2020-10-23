set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'majutsushi/tagbar'
Plugin 'derekwyatt/vim-scala'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdcommenter'
call vundle#end()
filetype plugin indent on

let w:airline_disable_statusline = 1

let g:tagbar_left = 1
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

" Always use tabstop 8 please.
set tabstop=8

set nu

" Allow mouse in all modes
" So when use vi inside tmux, mouse scrolling will work.
set mouse=a

" No wrap search, stop seaching at the end of file.
" set nowrapscan

" Remember the last position in a new open
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Some shortcuts
map \p i(<Esc>Ea)<Esc>
map \c i{<Esc>ea}<Esc>
map \[ i[<Esc>ea]<Esc>

"map \t :Tlist<Enter>
map \t :TagbarToggle<Enter>

map \v :vnew 
map \n :set nu<Enter>
map \m :set nonu<Enter>
map \/ i/**/<Esc>
map \q :q<Enter>
map qq :q<Enter>
map mm :w<Enter> :make<Enter><Enter>


"
" NERD Tree
"
map \f :NERDTreeToggle<CR>


"
" NERD Commenter
"
"
let g:NERDSpaceDelims = 1 
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }


"
" GitGutter
"
map \g :GitGutterLineHighlightsToggle<Enter> :GitGutterSignsToggle<Enter>

" Turn off signs by default
let g:gitgutter_signs = 0

" Color
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red

highlight GitGutterAddLine ctermfg=green
highlight GitGutterChangeLine ctermfg=yellow
highlight GitGutterDeleteLine ctermfg=red
"
" End of GitGutter
"

set bg=light

"
" Auto-wrapping
" Insert newline automatically
"
"set textwidth=80
"set formatoptions+=t

"
" The vertical 81 deathline.
"
"set colorcolumn=81
"highlight ColorColumn ctermbg=gray

"
" Highlight those overlength chars
"
"highlight OverLength ctermbg=gray
"match OverLength /\%81v.\+/


"set termguicolors
"set background=light
