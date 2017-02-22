" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
colorscheme elflord

" Set incremental search on
set incsearch

" Ignore case in text search but switch on smart case
set ignorecase
set smartcase

" Enable Backspace
set backspace=indent,eol,start

set number
set autoindent
set smartindent

" Enable mouse support in console
"set mouse=a

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set cursorline
hi CursorLine term=bold cterm=bold ctermbg=Blue

augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END

augroup filetypedetect 
  au BufNewFile,BufRead *.rubix set filetype=rubix syntax=rubix
augroup END

augroup filetypedetect 
  au BufNewFile,BufRead *.cmr set filetype=cmr syntax=rubix
augroup END

call pathogen#infect()
