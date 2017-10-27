" size of a hard tabstop
set tabstop=8

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=0

" always use spaces instead of tab characters
set expandtab

" size of an "indent"
set shiftwidth=4

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

" highlight line 80?
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
