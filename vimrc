" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}

call plug#end()

set encoding=utf-8

au BufNewFile,BufRead *.py
    \ set tabstop=4 " size of a hard tabstop
    \ set softtabstop=0 " 4?
    \ set shiftwidth=4 " size of an indent
    "\ set textwidth=79
    \ set expandtab " always use spaces instead of tab characters
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


" autoindent in block
filetype indent on

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" set explicitly for OS X
syntax on

" OO
set background=dark

" colors
highlight Comment ctermfg=112
highlight Constant ctermfg=225

" highlight redundant trailing whitespace
highlight RedundantSpaces term=standout ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/ " \ze sets end of match so only spaces highlighted

" highlight line 80
set colorcolumn=80
highlight ColorColumn guibg=#2d2d2d ctermbg=246

" set highlighting; '-' to turn off
set hlsearch
map - :nohls<cr>

" dynamic line numbering
set number
set relativenumber

" ctrl+n to toggle line numbering
function! NumberToggle()
if (&relativenumber==1)
  set norelativenumber
  set number
else
  set relativenumber
endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" filename, ascii val, hex val, lines, columns
set statusline=%t%h%m%r%=[%b\ 0x%02B]\ \ \ %l,%c%V\ %P
" always show status line
set laststatus=2
" make command line 1 line high
set cmdheight=1

" press F6 to start a find/replace with word under cursor
nnoremap <F6> :%s/<C-r><C-w>/

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" code folding
set foldmethod=indent
set foldlevel=99
" enable folding with space bar
nnoremap <space> za
