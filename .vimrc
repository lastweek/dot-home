"set nocompatible
"filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'majutsushi/tagbar'
Plugin 'derekwyatt/vim-scala'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdcommenter'
Plugin 'neoclide/coc.nvim'
call vundle#end()
"filetype plugin indent on

let w:airline_disable_statusline = 1

let g:Tlist_Ctags_Cmd='/opt/homebrew/Cellar/ctags/5.8_2/bin/ctags'
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

" No wrap search, stop seaching at the end of file.
"set nowrapscan

" Always use tabstop 8 please.
set tabstop=8
set noexpandtab
set shiftwidth=8
set softtabstop=8

set nu

" Allow mouse in all modes
" So when use vi inside tmux, mouse scrolling will work.
set mouse=a

" Remember the last position in a new open
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"
" https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping
"

" Some shortcuts
" noremap \p i(<Esc>Ea)<Esc>
" noremap \c i{<Esc>ea}<Esc>
" noremap \[ i[<Esc>ea]<Esc>

noremap \l :TagbarToggle<Enter>

noremap \t :tabnew 
noremap \v :vnew 
noremap \V :vsplit<CR>
noremap \S :split<CR>
noremap \n :set nu<CR>
noremap \m :set nonu<CR>
noremap \/ i/**/<Esc>
noremap \q :q<Enter>
noremap qq :q<Enter>
" NERD Tree
noremap \f :NERDTreeToggle<CR>

noremap <C-Left> :tabprevious<CR>
noremap <C-Right> :tabnext<CR>

"
" Map to readline shotcuts
"
noremap <C-a> <ESC>^
inoremap <C-a> <ESC>I
noremap <C-e> <ESC>$
inoremap <C-e> <ESC>A


"
" NERD Commenter
"
"
let g:NERDSpaceDelims = 1 
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
"let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }


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

"autocmd BufRead * :CocDisable<CR>
"autocmd FileType * CocDisable
